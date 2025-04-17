# frozen_string_literal: true

require_relative "lib/modern_treasury/version"

Gem::Specification.new do |s|
  s.name = "modern_treasury"
  s.version = ModernTreasury::VERSION
  s.summary = "Ruby library to access the Modern Treasury API"
  s.authors = ["Modern Treasury"]
  s.email = "sdk-feedback@moderntreasury.com"
  s.homepage = "https://gemdocs.org/gems/modern_treasury"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/Modern-Treasury/modern-treasury-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.0.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end
