class CardChannel < ApplicationCable::Channel
  def subscribed
    stream_from "cards"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
