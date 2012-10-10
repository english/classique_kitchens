class ContactController < ApplicationController
  caches_action :new

  def new
    @active_nav_item = 'Contact'
    @message = Message.new
  end

  def create
    logger.debug "params: #{params}"

    @message = Message.new(params[:message])
    if params[:message][:appointment] == "1"
      @message.date = extract_date(params[:date])
    end

    if @message.valid?
      Notifier.new_message(@message).deliver
      redirect_to root_url, flash: { notice: "Message sent successfully. Thank you." }
    else
      render action: 'new'
    end
  end

  private
  
  def extract_date(hash)
    DateTime.new(hash["date(1i)"].to_i, hash["date(2i)"].to_i,
                 hash["date(3i)"].to_i, hash["date(4i)"].to_i,
                 hash["date(5i)"].to_i)
  end
end
