module Api
  module V1
    class UserPatrimoniesController < ApplicationController
      def show
        @user_patrimonies = UserPatrimony.includes(:user, :stock).where(user_id: params[:id])
        render :show, status: :ok
      end
    end
  end
end
