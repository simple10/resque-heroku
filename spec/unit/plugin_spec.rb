require 'spec_helper'

describe  Resque::Plugins::Heroku do
  it "passes resque lint" do
    expect {
      Resque::Plugin.lint(Resque::Plugins::Heroku)
    }.to_not raise_error
  end
end
