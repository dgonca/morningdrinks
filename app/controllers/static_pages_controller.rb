class StaticPagesController < ApplicationController

  def index
  end

  def not_found
  end

  # def unacceptable
  #   render :status => 422
  # end
  #
  # def internal_error
  #   render :status => 500
  # end

  def home
    authenticate!
  end

  def admin
    admin?(current_user)
    @users = User.all
    @orders = []
    @users.each do |user|
      user.orders.each do |order|
        @orders << order
      end
    end
    p @orders
  end

end
