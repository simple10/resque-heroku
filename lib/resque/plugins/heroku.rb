require 'resque/plugins/heroku/version'

# extend Resque::Plugins::Heroku in your job class
module Resque
  module Plugins
    module Heroku
      def after_perform_heroku(*args)
        ActiveRecord::Base.connection.disconnect!
      end

      def on_failure_heroku(e, *args)
        ActiveRecord::Base.connection.disconnect!
      end
    end
  end
end
