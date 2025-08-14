class ContactsController < ApplicationController
  def new
    @contact_us = Contact.new
  end

  def create
    @contact_us = Contact.new(contact_params)

    if @contact_us.save
      redirect_to root_path, notice: "Thank you for contacting us. We will ge back to you soon!"
    else
      flash.now[:alert] = "Sorry. You should try again."
      render :new, status: :unprocessable_entity
    end

    private

    def contact_params
      params.fetch(:contact, {}).permit(
        :full_name,
        :email,
        :phone,
        :order_number,
        :inquiry_type,
        :message
      )
  end
end
