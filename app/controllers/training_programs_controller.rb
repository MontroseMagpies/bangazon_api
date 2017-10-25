class TrainingProgramsController < ApplicationController
  before_action :set_training_program, only: [:show, :update, :destroy]

  # GET /training_programs
  def index
    @training_programs = TrainingProgram.all

    render json: @training_programs
  end

  # GET /training_programs/1
  def show
    render json: @training_program
  end

  # POST /training_programs
  def create
    @training_program = TrainingProgram.new(training_program_params)

    if @training_program.save
      render json: @training_program, status: :created, location: @training_program
    else
      render json: @training_program.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /training_programs/1
  def update
    if @training_program.update(training_program_params)
      render json: @training_program
    else
      render json: @training_program.errors, status: :unprocessable_entity
    end
  end


  # DELETE /training_programs/1
  def destroy
    #if start date is a future date delete
    if @training_program.start_date > DateTime.now
      @training_program.destroy
      else
        # if class date is current or in the past, display errors deletion not possible
        # puts "Can't delete because course has already started"
        render json: @training_program.errors, status: :unprocessable_entity
    end
  end

  # def destroy
  #   @training_program.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_program
      @training_program = TrainingProgram.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def training_program_params
      params.require(:training_program).permit(:start_date, :end_date, :course_title, :instructor, :max_occupancy)
    end
end
