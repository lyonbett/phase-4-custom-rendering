class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses, only: [:id, :name], methods: [:summary]
  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])

    if cheese
    render json: cheese, only: [:id, :name]
    else
      render json: {"error": "Cheese not found"}, status: :not_found
    end
  end

end
