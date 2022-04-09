require_relative "lib/tailwindcss_merger/version"

Gem::Specification.new do |spec|
  spec.name        = "tailwindcss_merger"
  spec.version     = TailwindcssMerger::VERSION
  spec.authors     = ["loqimean"]
  spec.email       = ["vanuha277@gmail.com"]
  spec.homepage    = "https://github.com/loqimean/tailwindcss_merger"
  spec.summary     = "Extension to tailwindcss-rails gem for adding possibility of using multiple files."
  spec.description = "Simple way for using to many files of styles with tailwindcss-rails gem or just tailwind. Make it easy."
  spec.license     = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/loqimean/tailwindcss_merger"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 6.0.0"
  spec.add_dependency "listen"
  spec.add_dependency "tailwindcss-rails"
  spec.add_dependency "rake"
  spec.add_development_dependency "rspec"
end
