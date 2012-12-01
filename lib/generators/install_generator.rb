module Foobar
	class InstallGenerator < Rails::Generators::Base
		source_root File.expand_path("../template", __FILE__)

		def	generate_partials
			#copy_file "_error_flash.html.erb", "app/views/flash_dance/_error_flash.html.erb"
			%w("error success info warning").each do |default_type|
				template "default_partial.html.erb", "app/views/flash_dance/_#{default_type}_flash.html.erb", {type: default_type}
			end
		end
	end
end
