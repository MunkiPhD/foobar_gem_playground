require 'foobar/controller_helpers'
require 'foobar/view_helpers'

ActionController::Base.send(:include, Foobar::FlashDance::ControllerMethods)
ActionView::Base.send(:include, Foobar::FlashDance::ViewHelpers)
