
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "zaher_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "zaher_view_tool"
  spec.version       = ZaherViewTool::VERSION
  spec.authors       = ["ZeyadZaher03"]
  spec.email         = ["zeyadzaher02@gmail.com"]

  spec.summary       = %q{Various view specific methods for application I use.}
  spec.description   = %q{Provides generated HTML data for rails applications.}
  spec.homepage      = "https://github.com/ZeyadZaher03/dev-camp-viewtool"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
