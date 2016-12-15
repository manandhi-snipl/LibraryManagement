class CustomersController < ApplicationController
	before_action :set_customer, only: [:show, :edit, :update, :destroy]

	def index
		@customers = Customer.all
	end

	def create
		@customer = Customer.new(customer_params)

		respond_to do |format|
			if @customer.save
				format.html {redirect_to @customer, notice: 'customer was created' } 
			else
				format.html {render :new}
			end
		end

	end

	def new
		@customer = Customer.new
	end

	def update
		respond_to  do |format|
			if @customer.update(customer_params)
				format.html { redirect_to @customer, notice: 'Updated' }
			else
				format.html { render :edit }
			end
		end
	end

	def destroy
		@customer.destroy
		respond_to do |format|
			format.html { redirect_to customers_url, notice: 'Destroyed' }


	end

	def show

	end
end

private

def set_customer
	@customer = Customer.find(params[:id])
end

def customer_params
	params.require(:customer).permit(:name, :membership_no, :place)
end



end
