Gem::Specification.new do |spec|
  spec.name          = "yorgi"
  spec.version       = "0.1.0"
  spec.authors       = ["Ermenegildo Fiorito"]
  spec.email         = ["gildo.fiorito@gmail.com"]

  spec.summary       = "Yorgi: Org Mode in Telegram"
  spec.description   = "Yorgi: Org Mode in Telegram"
  spec.homepage      = "https://github.com/gildo/yorgi"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/gildo/yorgi"

  spec.metadata["changelog_uri"] = "https://github.com/gildo/yorgi"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
