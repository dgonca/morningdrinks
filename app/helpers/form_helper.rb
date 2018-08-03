module FormHelper
  def setup_order(order)
    order.drinks ||= Drink.new
    order
  end
end
