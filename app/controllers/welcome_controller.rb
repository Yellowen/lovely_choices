class WelcomeController < ApplicationController
  def index

  end

  def subscribe

    @subscribe = Subscribe.new(subscribe_params)

    if @subscribe.save
      flash[:success] = 'your message is saved'
      SubscribeMailer.welcome_email(email).deliver_now
    else
      flash[:error] = @subscribe.errors[:email]
    end

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  private
  def subscribe_params
    params.permit(:email)
  end

end
