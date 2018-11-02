require_relative 'boot'

require 'rails/all'

require "aggregate_root"

require_relative "../lib/stuff_created"
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EventStoreApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.autoload_paths += Dir["#{config.root}/app/**/"]
    config.autoload_paths += Dir["#{config.root}/lib/**/"]

    config.stuff_created = StuffCreated.new
    config.event_store = RailsEventStore::Client.new
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
  AggregateRoot.configure do |config|
    config.default_event_store = Rails.application.config.event_store
  end
end
