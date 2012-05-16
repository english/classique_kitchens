class ContactController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      Notifier.new_message(@message).deliver
      redirect_to root_url, flash: { notice: "Message sent successfully. Thank you." }
    else
      render action: 'new'
    end
  end
end
