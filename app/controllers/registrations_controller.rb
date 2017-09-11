class RegistrationsController < ApplicationController
before_action :authenticate_user!

  def create
      @registration = current_user.registration.create(registration_params)

      redirect_to @registration.event, notice: "thank you for your registration"
  end

  private
  def registration_params
    params
    .require(:registration)
    .permit(:price, :guest_count, :price, :total, :event_id)
  end
end
