# frozen_string_literal: true

require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle'
  end

  run! if app_file == $PROGRAM_NAME
end
