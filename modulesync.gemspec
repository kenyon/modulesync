# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name                  = 'modulesync'
  spec.version               = '3.4.2'
  spec.authors               = ['Vox Pupuli']
  spec.email                 = ['voxpupuli@groups.io']
  spec.summary               = 'Puppet Module Synchronizer'
  spec.description           = 'Utility to synchronize common files across puppet modules in Github.'
  spec.homepage              = 'https://github.com/voxpupuli/modulesync'
  spec.license               = 'Apache-2.0'
  spec.required_ruby_version = '>= 2.7.0'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'aruba', '~>2.0'
  spec.add_development_dependency 'cucumber', '~> 9.2'
  spec.add_development_dependency 'rake', '~> 13.2', '>= 13.2.1'
  spec.add_development_dependency 'rspec', '~> 3.13'
  spec.add_development_dependency 'voxpupuli-rubocop', '~> 3.1.0'

  spec.add_dependency 'git', '~>1.7'
  spec.add_dependency 'gitlab', '>=4', '<6'
  spec.add_dependency 'octokit', '>=4', '<10'
  spec.add_dependency 'puppet-blacksmith', '>= 3.0', '< 9'
  # 1.3.1 has a bug that was fixed in 1.3.2 https://github.com/rails/thor/pull/878
  # Allow 1.2 and newer, because Perforce facter 4.10.0 only allows < 1.3....
  spec.add_dependency 'thor', '~> 1.2', '!= 1.3.1'
end
