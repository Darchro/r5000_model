require "bundler/setup"
require "bundler/gem_tasks"

APP_ENV = (ENV['APP_ENV'] || 'development').to_sym
if defined?(Bundler)
  Bundler.require(:default)
  Bundler.require(:development) if APP_ENV == :development
  Bundler.require(:test) if APP_ENV == :test
end
require "active_support/all"
require "rake/testtask"
require "yaml"
require "pry"

APP_ROOT = File.dirname(__FILE__)
DB_CONFIGURATIONS = YAML.load_file(File.join(APP_ROOT, 'db', 'config.yml')).deep_symbolize_keys

# Rake::TestTask.new(:test) do |t|
#   t.libs << "test"
#   t.test_files = FileList["test/identifiable_code/model/**/*_spec.rb"]
#   t.verbose = true
# end
# Rake::TestTask.new(:benchmark) do |t|
#   t.libs << "test"
#   t.test_files = FileList["test/identifiable_code/model/**/*_benchmark.rb"]
#   t.verbose = true
# end

desc "Open console"
task :console do
  ActiveRecord::Base.establish_connection DB_CONFIGURATIONS[APP_ENV]
  R5000Model::Configuration::DB.setup DB_CONFIGURATIONS[APP_ENV]
  R5000Model::Configuration::Log.setup Logger.new STDOUT

  include R5000Model
  pry
end

task default: :console
