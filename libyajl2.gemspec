# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "libyajl2/version"

Gem::Specification.new do |spec|
  spec.name          = "libyajl2"
  spec.version       = Libyajl2::VERSION
  spec.authors       = ["lamont-granquist"]
  spec.email         = ["lamont@chef.io"]
  spec.summary       = %q{Installs a vendored copy of libyajl2 for distributions which lack it}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/chef/libyajl2-gem"
  spec.licenses      = ["Apache-2.0"]

  spec.files         = Dir.glob("{ext,lib,spec}/**/*") +
    %w{Gemfile Rakefile libyajl2.gemspec bootstrap.sh LICENSE}
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.extensions = Dir["ext/**/extconf.rb"]

  # required for 'rake spec'
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  # rake-compiler 0.9.2 is required for rbx compiles, and in turn requires rubygems >= 1.8.25
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "ffi", "~> 1.9"
end
