module R5000Model
  module Configuration
    class DB
      def self.setup(options={})
        R5000Model::Base.establish_connection options
      end
    end
  end
end
