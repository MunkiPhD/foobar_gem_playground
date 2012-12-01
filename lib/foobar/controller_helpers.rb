module Foobar
	module FlashDance
		module ControllerMethods
			def flash_me(bucket, message)
				flash[bucket] ||= []
				flash[bucket] << message unless message.blank?
			end

			def flash_me_now(bucket, message)
				flash.now[bucket] ||= []
				flash.now[bucket] << message unless message.blank?
			end
		end
	end
end
