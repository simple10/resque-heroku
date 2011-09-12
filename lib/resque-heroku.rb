require 'resque-heroku/version'

# extend Resque::Heroku in your job class
module Resque::Heroku
  def after_perform_heroku(*args)
    ActiveRecord::Base.connection.disconnect!
  end

  def on_failure_heroku(e, *args)
    ActiveRecord::Base.connection.disconnect!
  end
end
