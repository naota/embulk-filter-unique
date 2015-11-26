
Gem::Specification.new do |spec|
  spec.name          = "embulk-filter-unique"
  spec.version       = "0.1.0"
  spec.authors       = ["Naohiro Aota"]
  spec.summary       = "Unique filter plugin for Embulk"
  spec.description   = "Extract unique records"
  spec.email         = ["naota@elisp.net"]
  spec.licenses      = ["MIT"]
  spec.homepage      = "https://github.com/naota/embulk-filter-unique"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'embulk', ['~> 0.7.9']
  spec.add_development_dependency 'bundler', ['~> 1.0']
  spec.add_development_dependency 'rake', ['>= 10.0']
end
