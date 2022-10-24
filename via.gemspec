require_relative "lib/via/version"

Gem::Specification.new do |spec|
  spec.name        = "via"
  spec.version     = Via::VERSIONS.last
  spec.authors     = ["Filip Vrba"]
  spec.email       = ["filipvrbaxi@gmail.com"]
  spec.homepage    = "https://rubygems.org/gems/via"
  spec.summary     = "For Ruby on Rails, a template language."
  spec.description = "It enables inputting plain HTML code, eliminating the need to repeatedly use special symbols."
    spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "git@github.com:filipvrba/via.git"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/filipvrba/via-plugin"
  spec.metadata["changelog_uri"] = "https://github.com/filipvrba/via/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4"
end
