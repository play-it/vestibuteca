if ENV["COVERAGE"]
  require "simplecov"

  SimpleCov.start :rails do
    add_filter do |source_file|
      open(source_file.filename).grep(/:nocov:/).any?
    end

    add_group "Forms" do |source_file|
      source_file.filename =~ /forms/
    end

    groups.delete "Plugins"
  end
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.filter_run_when_matching :focus
  config.example_status_persistence_file_path = "spec/examples.txt"
  config.disable_monkey_patching!
  config.default_formatter = "doc"
  config.profile_examples = 10
  config.order = :random

  Kernel.srand config.seed
end
