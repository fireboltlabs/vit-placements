class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
    @ssc = @student.build_ssc
    @inter_or_diplomo=@student.build_inter_or_diplomo
    @btech=@student.build_btech
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
    respond_to do |format|
      if @student.save
        StudentMailer.welcome_mail(@student).deliver
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    @student.btech.destroy
    @student.ssc.destroy
    @student.inter_or_diplomo.destroy

    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:regd_no, :first_name, :middle_name, :last_name, :father_name,
        :email, :mobile, :father_mobile, :placement, :jkc, :cilvils, :further_studies,:photo,:emcet_rank,
        :ssc_attributes => [:board, :school_name, :year, :marks, :perc],
        :inter_or_diplomo_attributes => [:board, :clz_name, :year, :marks, :perc],
        :btech_attributes =>[:branch, :one_one_marks, :one_one_perc,:one_one_backlogs,:one_two_marks,:one_two_perc,
       :one_two_backlogs,:two_one_marks,:two_one_perc,:two_one_backlogs,:two_two_marks,:two_two_perc,
      :two_two_backlogs,:three_one_marks,:three_one_perc,:three_one_backlogs,:three_two_marks,
      :three_two_perc, :three_two_backlogs,:total_perc, :active_backlogs, :backlogs_history])
    end

    def ssc_params
      params.require(:ssc).permit(:board, :school_name, :year, :marks, :perc)
    end

    def inter_or_diplomo_params
      params.require(:inter_or_diplomo).permit(:board, :clz_name, :year, :marks, :perc)
    end

    def btech_params
      params.require(:btech).permit(
        :branch,:one_one_marks, :one_one_perc,:one_one_backlogs,:one_two_marks,:one_two_perc,
       :one_two_backlogs,:two_one_marks,:two_one_perc,:two_one_backlogs,:two_two_marks,:two_two_perc,
      :two_two_backlogs,:three_one_marks,:three_one_perc,:three_one_backlogs,:three_two_marks,
      :three_two_perc, :three_two_backlogs,:total_perc, :active_backlogs, :backlogs_history)
    end
  end