# app/controllers/home_controller.rb

class HomeController < ApplicationController
  def index
    # Your existing code
  end

  def play_sound
    Pusher.trigger('notifications_channel', 'play-sound', message: "Sound played")
    head :ok
  end
end
