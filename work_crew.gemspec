# frozen_string_literal: true

require_relative 'lib/work_crew/version'

Gem::Specification.new do |spec|
  spec.name          = 'work_crew'
  spec.version       = WorkCrew::VERSION
  spec.authors       = ['Work crew']
  spec.email         = ['work_crew@protonmail.com']

  spec.summary       = 'Classes to form a proper work crew'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/work-crew/work_crew'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
