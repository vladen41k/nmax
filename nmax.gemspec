require_relative 'lib/nmax/version'

Gem::Specification.new do |spec|
  spec.name          = 'nmax'
  spec.version       = Nmax::VERSION
  spec.authors       = ['vladen41k']
  spec.email         = ['vladen41k00@mail.ru']
  spec.summary       = 'Test task for FunBox'
  spec.homepage      = 'https://github.com/vladen41k/nmax'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')
  spec.files = Dir['lib/**/*.rb']
  spec.executables   = ['nmax']
  spec.require_paths = ['lib']
end
