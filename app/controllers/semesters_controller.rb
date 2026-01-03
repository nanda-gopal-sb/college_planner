class SemestersController < ApplicationController
def index
  @semesters = current_user.semesters
  @semester = current_user.semesters.build
end

def create
@semester = current_user.semesters.build(semester_params)
if @semester.active?
  puts "True"
  current_user.semesters.update_all(active: false)
  @semesters = current_user.semesters
end
  if @semester.save
    redirect_to semesters_path, notice: "Semester created successfully."
  else
    render :index, status: :unprocessable_entity
  end
end

private
  def semester_params
    params.require(:semester).permit(:name, :active, :number)
  end
end
