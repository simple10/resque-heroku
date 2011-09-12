require 'resque/tasks'

task "resque:setup" => :environment do
  ENV['QUEUE'] = '*' if ENV['QUEUE'].blank?

  # Fix for handling resque jobs on Heroku cedar
  # http://stackoverflow.com/questions/2611747/rails-resque-workers-fail-with-pgerror-server-closed-the-connection-unexpectedly
  Resque.after_fork do |worker|
    ActiveRecord::Base.establish_connection
  end
end

desc "Alias for resque:work"
task "jobs:work" => "resque:work"
