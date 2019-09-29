Gem::Specification.new do |spec|
  spec.name          = "jekyll-lin"
  spec.version       = "1.0.1"
  spec.authors       = ["Sergey Sokurenko"]
  spec.email         = ["email@example.com"]

  spec.summary       = "A beautiful, minimal theme for Jekyll based on lin.css"
  spec.homepage      = "https://github.com/ssokurenko/jekyll-lin-theme"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.add_runtime_dependency "jekyll", ">= 3.5", "< 5.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"

  spec.add_development_dependency "bundler"
end
