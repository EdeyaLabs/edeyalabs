class HomeController < ApplicationController
  def index
    @email = Email.new
  end

  def send_email
    @email = Email.new(params[:email])

    if @email.valid?
      @message.send_email
      respond_to do |format|
        format.js
      end
    end
  end
end
