source "https://rubygems.org"

gem 'rails', '~> 6.0.0.rc2'


group :development, :test do
  gem 'activesupport', '~> 6.0.0.rc2'
  gem 'activemodel', '~> 6.0.0.rc2'
  gem 'activerecord', '~> 6.0.0.rc2'

  gem "sqlite3", '~> 1.4', :platforms => [:mri, :mswin, :mingw]
  gem "mysql2", '0.5.2', :platforms => [:mri, :mswin, :mingw]
  gem "pg",'< 1.0.0', :platforms => [:mri, :mingw]

  gem "tiny_tds", :platforms => [:mri, :mingw]  if RUBY_PLATFORM =~ /windows/
  gem "activerecord-sqlserver-adapter", :platforms => [:mri, :mingw]

  gem 'ruby-oci8', :platforms => [:mri, :mswin, :mingw] if ENV.has_key? 'ORACLE_HOME'
  gem 'activerecord-oracle_enhanced-adapter', '~> 6.0.0.rc2' if ENV.has_key? 'ORACLE_HOME'

  # for JRuby
  gem 'activerecord-jdbc-adapter', :platforms => :jruby
  gem "jdbc-sqlite3", :platforms => :jruby
  gem "activerecord-jdbcsqlite3-adapter", :platforms => :jruby
  gem "activerecord-jdbcmysql-adapter", :platforms => :jruby
  gem "activerecord-jdbcpostgresql-adapter", :platforms => :jruby
  gem "activerecord-jdbcmssql-adapter", :platforms => :jruby
end

