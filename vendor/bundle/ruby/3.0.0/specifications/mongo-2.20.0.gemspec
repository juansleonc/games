# -*- encoding: utf-8 -*-
# stub: mongo 2.20.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mongo".freeze
  s.version = "2.20.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://jira.mongodb.org/projects/RUBY", "changelog_uri" => "https://github.com/mongodb/mongo-ruby-driver/releases", "documentation_uri" => "https://mongodb.com/docs/ruby-driver/", "homepage_uri" => "https://mongodb.com/docs/ruby-driver/", "source_code_uri" => "https://github.com/mongodb/mongo-ruby-driver" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["The MongoDB Ruby Team".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIEeDCCAuCgAwIBAgIBATANBgkqhkiG9w0BAQsFADBBMREwDwYDVQQDDAhkYngt\ncnVieTEXMBUGCgmSJomT8ixkARkWB21vbmdvZGIxEzARBgoJkiaJk/IsZAEZFgNj\nb20wHhcNMjQwMjA5MTc0NzIyWhcNMjUwMjA4MTc0NzIyWjBBMREwDwYDVQQDDAhk\nYngtcnVieTEXMBUGCgmSJomT8ixkARkWB21vbmdvZGIxEzARBgoJkiaJk/IsZAEZ\nFgNjb20wggGiMA0GCSqGSIb3DQEBAQUAA4IBjwAwggGKAoIBgQC0/Veq9l47cTfX\ntQ+kHq2NOCwJuJGt1iXWQ/vH/yp7pZ/bLej7gPDl2CfIngAXRjM7r1FkR9ya7VAm\nIneBFcVU3HhpIXWi4ByXGjBOXFD1Dfbz4C4zedIWRk/hNzXa+rQY4KPwpOwG/hZg\nid+rSXWSbNlkyN97XfonweVh7JsIa9X/2JY9ADYjhCfEZF+b0+Wl7+jgwzLWb46I\n0WH0bZBIZ0BbKAwUXIgvq5mQf9PzukmMVYCwnkJ/P4wrHO22HuwnbMyvJuGjVwqi\nj1NRp/2vjmKBFWxIfhlSXEIiqAmeEVNXzhPvTVeyo+rma+7R3Bo+4WHkcnPpXJJZ\nJd63qXMvTB0GplEcMJPztWhrJOmcxIOVoQyigEPSQT8JpzFVXby4SGioizv2eT7l\nVYSiCHuc3yEDyq5M+98WGX2etbj6esYtzI3rDevpIAHPB6HQmtoJIA4dSl3gjFb+\nD+YQSuB2qYu021FI9zeY9sbZyWysEXBxhwrmTk+XUV0qz+OQZkMCAwEAAaN7MHkw\nCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAwHQYDVR0OBBYEFH4nnr4tYlatU57RbExW\njG86YM5nMB8GA1UdEQQYMBaBFGRieC1ydWJ5QG1vbmdvZGIuY29tMB8GA1UdEgQY\nMBaBFGRieC1ydWJ5QG1vbmdvZGIuY29tMA0GCSqGSIb3DQEBCwUAA4IBgQBKGtHA\nfpi3N/BL1J5O4CBsAjtF4jHDiw2r5MwK+66NzMh3uedjgPI7MoosemLy++SB+8BR\nSE8bDkb6gfDQQzrI6KSXXyqH2TbQXpY5Tac7/yqXRiu8G2qOrOj4czB/Hq7j09CV\nYoH88v6hL11i5jt6jPjFh8hXYG0hDQxhi3atRz5Wwd98tUf2DSbyJXJiRgCBeZjl\nrP7AnKsWMu0C+zPlL+nXtQr+nTFtkKXRWfUJMqePpBqtriQvgQ+Y1ItqYVTSLuiM\niwUMcn/rGhdCMBSaKDXdFkIveCHQE2f2WBo2EdErrcTrgEKYYdNfzcb/43j7L1kx\nAUwyTtk+HFrviBynQbKN82rjbZE+5gukVea5c7idQPkqacPYsoU37DI+hTlUyJkV\ndcTtfEg44lLlfNukBslfiQf54r+uWbyB0m0rDUN/py7/Ghyzt5GLBU91uCO3dGoI\n55uFRHMvEcJMTDeImC/nuucPCAiEGMHggr9+NPC0tqpxjGKTo7lS7GzUFjg=\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2024-03-28"
  s.description = "A Ruby driver for MongoDB".freeze
  s.email = "dbx-ruby@mongodb.com".freeze
  s.executables = ["mongo_console".freeze]
  s.files = ["bin/mongo_console".freeze]
  s.homepage = "https://mongodb.com/docs/ruby-driver/".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.3.5".freeze
  s.summary = "Ruby driver for MongoDB".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<bson>.freeze, [">= 4.14.1", "< 6.0.0"])
  else
    s.add_dependency(%q<bson>.freeze, [">= 4.14.1", "< 6.0.0"])
  end
end
