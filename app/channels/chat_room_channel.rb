class ChatRoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "myRoom"
  end

  def receive(data)
    ActionCable.server.broadcast "myRoom", data
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
