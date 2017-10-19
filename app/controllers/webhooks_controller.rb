class WebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token 
  def index
    puts params
    head :ok
  end

  def create
    puts params
    head :ok
  end
end
