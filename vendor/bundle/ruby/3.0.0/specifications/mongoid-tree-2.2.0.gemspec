# -*- encoding: utf-8 -*-
# stub: mongoid-tree 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mongoid-tree".freeze
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Benedikt Deicke".freeze]
  s.date = "2023-03-03"
  s.description = "A tree structure for Mongoid documents using the materialized path pattern".freeze
  s.email = ["benedikt@synatic.net".freeze]
  s.homepage = "https://github.com/benedikt/mongoid-tree".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.5".freeze
  s.summary = "A tree structure for Mongoid documents".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<mongoid>.freeze, [">= 4.0", "< 9"])
    s.add_development_dependency(%q<mongoid-compatibility>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0.9.2"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<yard>.freeze, [">= 0.9.20"])
  else
    s.add_dependency(%q<mongoid>.freeze, [">= 4.0", "< 9"])
    s.add_dependency(%q<mongoid-compatibility>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<yard>.freeze, [">= 0.9.20"])
  end
end
