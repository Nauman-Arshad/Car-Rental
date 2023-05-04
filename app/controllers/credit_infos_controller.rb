class CreditInfosController < ApplicationController
  def new
    @credit_info = CreditInfo.new
  end

  def create
    @credit_info = CreditInfo.new(credit_info_params)
    booking = Booking.new(
      user_name: @credit_info.name,
      user_email: @credit_info.email,
      user_phone: @credit_info.phone,
      pick: Time.now,
      drop: 2.days.from_now,
      status: Booking.statuses[:pending]
    )
    booking.save
    if @credit_info.save
      redirect_to  root_path, notice: "Credit info was successfully created."
    else
      render :new
    end
  end


  private

  def credit_info_params
    params.require(:credit_info).permit(:name, :email, :phone, :payment, :card_name, :credit_number, :expiration, :cvv)
  end
end
