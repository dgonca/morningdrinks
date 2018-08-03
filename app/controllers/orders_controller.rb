class OrdersController < ApplicationController
  def index
  end

  def show
  end

  def new
    authenticate!
    @order = Order.new
  end

  def create
    @order = Order.create(user_id: current_user.id, order_status: "in-progress")
    @drink = Drink.new(order_params)
    @drink.order = @order
    if @order.save && @drink.save
      redirect_to current_user
    else
      render 'new'
    end
  end
  def update
  end

  def edit
    @order = Order.find(params[:id])
    @drink = @order.drinks.first
  end

  def put

  end

  def complete
    p params
    @order = Order.find(params[:format])
    @order.order_status = "complete"
    @order.save
    redirect_to '/admin'
  end

  def cancel
    @order = Order.find(params[:format])
    @order.order_status = "cancelled"
    @order.save
    redirect_to '/admin'
  end





  private

  # def drink_params
  #     params.require(:order).permit(:order_status, drinks_attributes: [:id, :drink_type, :coffee_type, :sugar_level, :milk_level])
  # end

  def order_params
  params.require(:order).permit().tap do |whitelisted|
    whitelisted[:drink_type] = params[:order][:drink][:drink_type]
    whitelisted[:coffee_type] = params[:order][:drink][:coffee_type]
    whitelisted[:sugar_level] = params[:order][:drink][:sugar_level]
    whitelisted[:milk_level] = params[:order][:drink][:milk_level]
  end
end


end
