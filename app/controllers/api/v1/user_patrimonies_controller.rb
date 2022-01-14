module Api
  module V1
    class UserPatrimoniesController < ApplicationController
      def show
        user_patrimonies = UserPatrimony.where(user_id: params[:id])
        render json: { data: user_patrimonies }, status: :ok
      end
    end
  end
end
