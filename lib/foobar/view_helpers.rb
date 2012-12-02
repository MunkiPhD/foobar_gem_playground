module Foobar
	module FlashDance
		module ViewHelpers
			def render_flash_messages(compact = false)
				str = []

				flash.each do |key, messages|
					if compact && messages.length > 1 # if you want it to be compact and there is more than one message in the array, create an unordered list
						message_elements = []
						messages.each do |message|
							message_elements << content_tag(:li, message)
						end

						# we can set temp_message as html_safe because the content_tag helper will handle non-secure text
						message_to_send = content_tag(:ul, message_elements.join.html_safe)
						str << render_partial(key, message_to_send.html_safe)
					else
						messages.each do |message|
							str << render_partial(key, message)
						end
					end

				end

				return raw(str.join)
			end


			private

			# partial_message: the specified name of the partial in the flash_dance directory
			# message: the message to display in the partial
			def render_partial(partial_name, message)
						render(:partial => "flash_dance/#{partial_name}", :locals => {:message => message})
			end
		end
	end
end
