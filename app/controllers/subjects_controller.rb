class SubjectsController < ApplicationController
  def index
    @semesters = current_user.semesters
    @current_semester = @semesters.find_by(active: true)
    @subjects = @current_semester.subjects
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
     if @subject.save
      redirect_to subjects_path, notice: "Semester created successfully."
     else
      render :index, status: :unprocessable_entity
     end
  end

private
  def subject_params
    params.require(:subject).permit(:name, :semester_id, :credits, :professor, :subject_code)
  end
end
