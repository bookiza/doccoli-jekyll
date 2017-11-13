# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "doccoli-jekyll"
  spec.version       = "0.1.0"
  spec.authors       = ["Marvin Danig"]
  spec.email         = ["marvin@marvindanig.com"]

  spec.summary       = %q{Lightweight jekyll theme for official documentation at Bubblin Superbooks.}
  spec.homepage      = "https://github.com/marvindanig/doccoli-jekyll.git"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_runtime_dependency "jekyll", "~> 3.6"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
