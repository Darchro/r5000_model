module R5000Model
  module Configuration
    class Log
      def self.setup(logger)
        R5000Model::Base.logger = logger
      end
    end
  end
end
