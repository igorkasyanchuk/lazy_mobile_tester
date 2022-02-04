require_relative "lib/lazy_mobile_tester/version"

Gem::Specification.new do |spec|
  spec.name        = "lazy_mobile_tester"
  spec.version     = LazyMobileTester::VERSION
  spec.authors     = ["Igor Kasyanchuk"]
  spec.email       = ["igorkasyanchuk@gmail.com"]
  spec.homepage    = "https://github.com/igorkasyanchuk/lazy_mobile_tester"
  spec.summary     = "Lazy Mobile Tester from the page"
  spec.description = "Lazy Mobile Tester from the page"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails"
end
