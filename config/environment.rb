require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3', # Postgres, MySQL, etc
  database: "db/development.sqlite"
)

require_all 'app'