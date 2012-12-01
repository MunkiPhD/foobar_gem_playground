module Foobar
	module FlashDance
		module ViewHelpers
			def render_flash_messages
				str = []
				flash.each do |key, messages|
					messages.each do |message|
						str << raw("KK: #{key} :: #{message}")
					end
				end

				return str.join(' || ')
			end

			def render_test_partial(message)
				render :partial => "foobar/test_partial", :locals => {:msg => message}
			end
		end
	end
end
