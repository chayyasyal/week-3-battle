require 'sinatra'
require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure works'
  end
end
