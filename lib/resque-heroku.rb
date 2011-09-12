require "resque-heroku/version"
require 'resque/worker'

# extend Resque::Heroku in your job class
module Resque::Heroku
  def after_perform_heroku
    resque_heroku_disconnect!
  end

  def failed_with_heroku!
    resque_heroku_disconnect!
  end

  protected

  def resque_heroku_disconnect!
    ActiveRecord::Base.connection.disconnect!
  end
end
