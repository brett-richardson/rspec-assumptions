module RSpec::Assumptions
	module ClassExtensions

		# Public API method for defining an assumption
		def assume( *opts, &block ) # RSpec extention method to add a Situation object to the hash cacheenv = block.binding
			# env = block.binding
			# file, line = eval '[__FILE__, __LINE__]', env
      description ||= if opts.first.kind_of? String
        opts.first
      else
        block.to_s
      end

			begin
				instance_eval &block
			rescue StandardError => e
				it( description ){ raise e } # Only execute in an 'it' block if it fails
			end
		end

	end
end
