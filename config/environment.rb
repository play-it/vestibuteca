require 'bundler/setup'
require 'hanami/setup'
require 'hanami/model'
require_relative '../lib/vestibuteca'
require_relative '../apps/web/application'

Hanami.configure do
  mount Web::Application, at: '/'

  model do
    ##
    # Database adapter
    #
    # Available options:
    #
    #  * SQL adapter
    #    adapter :sql, 'sqlite://db/vestibuteca_development.sqlite3'
    #    adapter :sql, 'postgres://localhost/vestibuteca_development'
    #    adapter :sql, 'mysql://localhost/vestibuteca_development'
    #
    adapter :sql, ENV['DATABASE_URL']

    ##
    # Migrations
    #
    migrations 'db/migrations'
    schema     'db/schema.sql'
  end

  mailer do
    root 'lib/vestibuteca/mailers'

    # See http://hanamirb.org/guides/mailers/delivery
    delivery do
      development :test
      test        :test
      # production :smtp, address: ENV['SMTP_PORT'], port: 1025
    end
  end
end
