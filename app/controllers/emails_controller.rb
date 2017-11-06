class EmailsController < ApplicationController

  def index
    @email = Email.new
    @emails = Email.all
  end

  def create

    @email = Email.new(params.require(:email).permit(:address))

    if @email.save
      redirect_to emails_path, notice: 'Thanks for your email. Looking forward to sending spam to you!'
    else
      @emails = Email.all
      render :index
    end

  end

end



# class EmailsController < ApplicationController
#   def self.create(req)
#     if req.params.key?('email')
#       # YOUR CODE HERE
#       email = Email.new(req['email'])
#
#       if email.save
#         [201, { 'Content-Type' => 'text/html' }, ['You successfully subscribed!']]
#       else
#         [422, { 'Content-Type' => 'text/plain' }, ["Errors: + #{@errors}"'"]]
#       end
#
#     else
#       [403, { 'Content-Type' => 'text/plain' }, ['Missing param: email']]
#     end
#   end
#
# end
