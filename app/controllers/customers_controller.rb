class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :update]

  # GET /customers
  def index
    # ? url param
    # get all customer unless active param exist
    @customers = Customer.all unless params[:active].present?

    if params[:active] == 'true'
      @customers = Customer.where(:active => true)
    elsif params[:active] == 'false'
      @customers = Customer.where(:active => false)
    end

    render json: @customers
  end

  # GET /customers/1
  def show
    render json: @customer
  end

  # POST /customers
  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render json: @customer, status: :created, location: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /customers/1
  def update
    if @customer.update(customer_params)
      render json: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /customers/1
  # def destroy
  #   @customer.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def customer_params
      params.require(:customer).permit(:name_first, :name_last, :address_street, :address_email, :city, :state, :zip_code, :active, :last_date_active)
    end
end
