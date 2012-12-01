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

		module ViewHelpers
			def render_flash_messages
				str = []
				flash.each do |key, messages|
					messages.each do |message|
						str << raw("KK: #{key} :: #{message}")
					end
				end

				return str.join('<br/>')
			end

			def render_test_partial(message)
				render :partial => "foobar/test_partial", :locals => {:msg => message}
			end
		end
	end
end

ActionController::Base.send(:include, Foobar::FlashDance::ControllerMethods)
ActionView::Base.send(:include, Foobar::FlashDance::ViewHelpers)
