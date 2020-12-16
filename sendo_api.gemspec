
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sendo_api/version"

Gem::Specification.new do |spec|
  spec.name          = "sendo_api"
  spec.version       = SendoApi::VERSION
  spec.authors       = ["hewrin"]
  spec.email         = ["hewrin@hotmail.com"]

  spec.summary       = "Private Sendo API wrapper"
  spec.homepage = "https://github.com/PostCo/sendo_api"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/PostCo/sendo_api"
  spec.metadata["changelog_uri"] = "https://github.com/PostCo/sendo_api/releases"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_dependency "rake", ">= 12.3.3"
  spec.add_dependency "activeresource", "~> 5.0"

  spec.add_development_dependency "zeitwerk", "~> 2.1", ">= 2.1.8"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "dotenv"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "guard-rspec"
end
