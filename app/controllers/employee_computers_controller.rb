class EmployeeComputersController < ApplicationController
  before_action :set_employee_computer, only: [:show, :update, :destroy]

  # GET /employee_computers
  def index
    @employee_computers = EmployeeComputer.all

    render json: @employee_computers
  end

  # GET /employee_computers/1
  def show
    render json: @employee_computer
  end

  # POST /employee_computers
  def create
    @employee_computer = EmployeeComputer.new(employee_computer_params)

    if @employee_computer.save
      render json: @employee_computer, status: :created, location: @employee_computer
    else
      render json: @employee_computer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employee_computers/1
  def update
    if @employee_computer.update(employee_computer_params)
      render json: @employee_computer
    else
      render json: @employee_computer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employee_computers/1
  def destroy
    @employee_computer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_computer
      @employee_computer = EmployeeComputer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def employee_computer_params
      params.require(:employee_computer).permit(:computer_id, :employee_id)
    end
end
