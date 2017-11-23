class EmailsController < ApplicationController
  def index
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    if @email.save
      redirect_to emails_path, notice: 'You successfully subscribed!'
    else
      render :index
    end
  end

  def email_params
    params.require(:email).permit(:name, :address, :message)
  end
end