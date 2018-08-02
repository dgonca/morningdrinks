module FormHelper
  def setup_order(order)
    order.drink ||= Drink.new
    order
  end
end
