# -*- encoding: utf-8 -*-
# stub: mongoid-rspec 4.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mongoid-rspec".freeze
  s.version = "4.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Evan Sagge".freeze, "Rodrigo Pinto".freeze]
  s.date = "2024-06-05"
  s.description = "RSpec matches for Mongoid models, including association and validation matchers.".freeze
  s.email = "evansagge@gmail.com contato@rodrigopinto.me".freeze
  s.homepage = "http://github.com/mongoid-rspec/mongoid-rspec".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6".freeze)
  s.rubygems_version = "3.3.5".freeze
  s.summary = "RSpec matchers for Mongoid".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<appraisal>.freeze, ["~> 2.0"])
    s.add_development_dependency(%q<mongoid-danger>.freeze, ["~> 0.2"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    s.add_development_dependency(%q<rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.36.0"])
    s.add_runtime_dependency(%q<mongoid>.freeze, [">= 3.0", "< 10.0"])
    s.add_runtime_dependency(%q<mongoid-compatibility>.freeze, [">= 0.5.1"])
  else
    s.add_dependency(%q<appraisal>.freeze, ["~> 2.0"])
    s.add_dependency(%q<mongoid-danger>.freeze, ["~> 0.2"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 1.36.0"])
    s.add_dependency(%q<mongoid>.freeze, [">= 3.0", "< 10.0"])
    s.add_dependency(%q<mongoid-compatibility>.freeze, [">= 0.5.1"])
  end
end
