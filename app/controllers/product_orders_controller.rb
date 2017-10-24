class ProductOrdersController < ApplicationController
  before_action :set_product_order, only: [:show, :update, :destroy]

  # GET /product_orders
  def index
    @product_orders = ProductOrder.all

    render json: @product_orders
  end

  # GET /product_orders/1
  def show
    render json: @product_order
  end

  # POST /product_orders
  def create
    @product_order = ProductOrder.new(product_order_params)

    if @product_order.save
      render json: @product_order, status: :created, location: @product_order
    else
      render json: @product_order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /product_orders/1
  def update
    if @product_order.update(product_order_params)
      render json: @product_order
    else
      render json: @product_order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /product_orders/1
  def destroy
    @product_order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_order
      @product_order = ProductOrder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_order_params
      params.require(:product_order).permit(:product_id, :order_id)
    end
end
