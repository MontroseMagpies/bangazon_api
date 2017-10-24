class PaymentTypesController < ApplicationController
  before_action :set_payment_type, only: [:show, :update, :destroy]

  # GET /payment_types
  def index
    @payment_types = PaymentType.all

    render json: @payment_types
  end

  # GET /payment_types/1
  def show
    render json: @payment_type
  end

  # POST /payment_types
  def create
    @payment_type = PaymentType.new(payment_type_params)

    if @payment_type.save
      render json: @payment_type, status: :created, location: @payment_type
    else
      render json: @payment_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /payment_types/1
  def update
    if @payment_type.update(payment_type_params)
      render json: @payment_type
    else
      render json: @payment_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /payment_types/1
  def destroy
    @payment_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_type
      @payment_type = PaymentType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def payment_type_params
      params.require(:payment_type).permit(:payment_type, :account_number, :Customer_id)
    end
end
