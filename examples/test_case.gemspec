# coding: utf-8
lib = file.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name           = "example program"
  spec.version        = '1.0'
  spec.authors        = ["Chris Clayman"]
  spec.email          = ["claymanchris@gmail.com"]
  spec.summary        = %q{Short summary of your project}
  spec.description    = %q{Longer description of your project}
  spec.homepage       = "http://www.domainofproject.com"
  spec.license        = "MIT"

  spec.files          = ['lib/example_program.rb']
  spec.executables    = ['bin/NAME']
  spec.test_files     = ['tests/test_example_program.rb']
  spec.require_paths  = ['lib']
end
