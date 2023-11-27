class StudentsController < ApplicationController
  def index
    @students = Student.paginate(page: params[:page], per_page: 10)
  end

  def show
    set_student
  end

  def edit
    set_student
  end

  def update
    set_student
    if @student.update(student_params)
      redirect_to @student, notice: "Student was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    set_student
    @student.destroy
    redirect_to students_url, notice: "Student was successfully destroyed."
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:title, :first_name, :middle_name, :last_name, :gender, :email, :birth_date)
  end
end
