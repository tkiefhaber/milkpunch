# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "slim"
  s.version = "1.3.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Mendler", "Andrew Stone", "Fred Wu"]
  s.date = "2013-01-06"
  s.description = "Slim is a template language whose goal is reduce the syntax to the essential parts without becoming cryptic."
  s.email = ["mail@daniel-mendler.de", "andy@stonean.com", "ifredwu@gmail.com"]
  s.executables = ["slimrb"]
  s.files = ["bin/slimrb"]
  s.homepage = "http://slim-lang.com/"
  s.require_paths = ["lib"]
  s.rubyforge_project = "slim"
  s.rubygems_version = "1.8.23"
  s.summary = "Slim is a template language."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<temple>, ["~> 0.5.5"])
      s.add_runtime_dependency(%q<tilt>, ["~> 1.3.3"])
      s.add_development_dependency(%q<rake>, [">= 0.8.7"])
      s.add_development_dependency(%q<sass>, [">= 3.1.0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<kramdown>, [">= 0"])
      s.add_development_dependency(%q<creole>, [">= 0"])
      s.add_development_dependency(%q<builder>, [">= 0"])
    else
      s.add_dependency(%q<temple>, ["~> 0.5.5"])
      s.add_dependency(%q<tilt>, ["~> 1.3.3"])
      s.add_dependency(%q<rake>, [">= 0.8.7"])
      s.add_dependency(%q<sass>, [">= 3.1.0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<kramdown>, [">= 0"])
      s.add_dependency(%q<creole>, [">= 0"])
      s.add_dependency(%q<builder>, [">= 0"])
    end
  else
    s.add_dependency(%q<temple>, ["~> 0.5.5"])
    s.add_dependency(%q<tilt>, ["~> 1.3.3"])
    s.add_dependency(%q<rake>, [">= 0.8.7"])
    s.add_dependency(%q<sass>, [">= 3.1.0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<kramdown>, [">= 0"])
    s.add_dependency(%q<creole>, [">= 0"])
    s.add_dependency(%q<builder>, [">= 0"])
  end
end
