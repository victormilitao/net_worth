module Api
  module V1
    class StocksController < ApplicationController
      def index
        stocks = Stock.all
        render json: { data: stocks }, status: :ok
      end
    end
  end
end
