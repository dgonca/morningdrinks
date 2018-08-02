class OrdersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    #creating the order as well as the drink
    p params[:order][:drink_attributes]
    @order = Order.new(user_id: current_user.id, order_status: "in_progress")
    @drink = Drink.new(params[:order][:drink_attributes])
    @drink.order_id = @order.id
    p @order
    p @drink
  end

  def destroy
  end

  private

  # def drink_params
  #     params.require(:order[:drink_attributes]).permit(:drink_type, :coffee_type, :sugar_level, :milk_level)
  # end


end
