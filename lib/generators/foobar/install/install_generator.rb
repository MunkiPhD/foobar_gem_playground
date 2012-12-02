module Foobar
	class InstallGenerator < Rails::Generators::Base
		source_root File.expand_path("../templates", __FILE__)

		def	generate_partials
			#copy_file "_error_flash.html.erb", "app/views/flash_dance/_error_flash.html.erb"
			%w(success error info warning).each do |default_type|
				template "default_partial.html.erb", "app/views/flash_dance/_#{default_type}.html.erb", {:type => default_type}
			end
		end

		def copy_bootstrap
			copy_file "flash_dance.alerts.bootstrap.css", "app/assets/stylesheets/flash_dance.alerts.bootstrap.css"
			copy_file "flash_dance.alerts.bootstrap.js", "app/assets/javascripts/flash_dance.alerts.bootstrap.js"
		end
	end
end
