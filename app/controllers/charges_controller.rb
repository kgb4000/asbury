class ChargesController < ApplicationController

	def new
	end

	def create
		
		token = params[:stripeToken]

    amount = params[:amount].to_f * 100

    if amount < 50
      @error = "Please enter an amount more than 50 cents please."
      render :new
      return
    end

		begin
      charge = Stripe::Charge.create(
        amount:      amount.to_i,
        currency:    "usd",
        card:        token,
        description: "Tithes"
      )

      email = params[:email]  

    rescue Stripe::CardError => e
      # The card has been declined or
      # some other error has occurred
      @error = e
      render :new
    end
  end

	private

		def charge_params
			params.require(:charge).permit(:amount)
		end
end
