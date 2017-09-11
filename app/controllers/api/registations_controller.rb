class Api::RegistrationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    event = Event.find(params[:event_id])
    registration = event.registrations.new(registation_params)

    if registration.save
      render status: 200, json: {
        message: "Registered successfully",
        registration: registration
      }.to_json
    else
      render status: 422, json: {
        message: "Unsuccessfull registration",
        errors: registation.errors
      }.to_json
    end
  end

  private

  def registration_params
    params
    .require(:registration)
    .permit(:status, :price, :guest_count)
  end
end
