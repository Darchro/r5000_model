require "r5000_model/version"
require "bundler/setup"
require "active_support/all"
require "active_record"
require "devise"

R5000Model::LIB_PATH = File.dirname(File.absolute_path(__FILE__))

require_relative "r5000_model/version"
require_relative "r5000_model/models/base"
Dir.glob(R5000Model::LIB_PATH + "/r5000_model/configurations/**/*.rb").each {|f| require f}
Dir.glob(R5000Model::LIB_PATH + "/r5000_model/utilities/**/*.rb").each {|f| require f}
Dir.glob(R5000Model::LIB_PATH + "/r5000_model/models/*.rb").each {|f| require f}
Dir.glob(R5000Model::LIB_PATH + "/r5000_model/models/**/*").select{|d| File.directory?(d) }.sort.each{|d| Dir.glob(File.join(d, "*.rb")).each{|f| require f } }
Dir.glob(R5000Model::LIB_PATH + "/r5000_model/services/*.rb").each {|f| require f}
Dir.glob(R5000Model::LIB_PATH + "/r5000_model/services/**/*.rb").each {|f| require f}
