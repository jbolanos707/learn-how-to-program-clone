class LessonsController < ApplicationController
  def new
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def create
    @section =  Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    if @lesson.save
      redirect_to section_path(@lesson.section)
    else
      render :new
    end
  end

  def destroy
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to section_path(@section)
  end

  private
    def lesson_params
      params.require(:lesson).permit(:name, :number)
    end
end
