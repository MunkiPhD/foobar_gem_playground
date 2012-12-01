$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "foobar/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "foobar"
  s.version     = Foobar::VERSION
  s.authors     = ["munkiphd"]
  s.email       = ["munkiphd.test@ufl.edu"]
  s.homepage    = "http://github.com/munkiphd/foobar"
  s.summary     = "Simple flash dancer"
  s.description = "make your flash messages dance"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"

  s.add_development_dependency "sqlite3"
end
