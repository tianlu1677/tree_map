lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tree_map/version"

Gem::Specification.new do |spec|
  spec.name          = "tree_map"
  spec.version       = TreeMap::VERSION
  spec.authors       = ["tianl677"]
  spec.email         = ["tianlu1677@gmail.com"]

  spec.summary       = %q{avl tree }
  spec.description   = %q{avl tree .}
  spec.homepage      = "https://github.com/tianlu1677/tree_map"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://github.com/tianlu1677/tree_map"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tianlu1677/tree_map."
  spec.metadata["changelog_uri"] = "https://github.com/tianlu1677/tree_map."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
