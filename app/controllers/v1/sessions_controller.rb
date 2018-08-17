class V1::SessionsController < ApplicationController
  def create
    customer = Customer.where(email: params[:email]).first
    if customer&.valid_password?(params[:password])
      head(:authentication_token)
      render json: customer.as_json(only: [:email, :authentication_token]), status: :created
    else
      head(:unauthorized)
    end
  end

  def destroy
  end
end
