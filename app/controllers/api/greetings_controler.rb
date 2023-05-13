module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        greet = Greetings.order('RANDOM()').first
        render json: { greetings: greet.message }
      end
    end
  end
end
