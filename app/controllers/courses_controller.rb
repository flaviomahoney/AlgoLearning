class CoursesController < ApplicationController
	before_action :set_course, only: [:show, :edit, :update, :destroy, :visualization, :lecture, :code, :video]

  def index
    if params[:query].present?
      @courses = Course.tagged_with(params[:query])
    else
      @courses = policy_scope(Course).order(created_at: :desc)
    end
  end

  def show
    @courses = policy_scope(Course).order(created_at: :desc).limit(10) - current_user.courses

    authorize @course
    @user = current_user
    @progress = Progress.new
  end
  
  def code
    authorize @course
    @progress = Progress.find_by(user_id: current_user.id, course_id: @course.id)
  end  

  def visualization
    authorize @course
	end

  def lecture
    authorize @course
    respond_to do |format|
      format.html 
      format.pdf { render template: 'courses/article', pdf: 'article'}
      end
  end

  def video
    @comment = Comment.new
    authorize @course
  end

  def new
    @course = Course.new
    authorize @course
  end

  def create
    @course = Course.new(course_params)
    authorize @course
    if @course.save
      flash[:success] = "Object successfully created"
      redirect_to @course
    else
      flash[:alert] = "Something went wrong"
      render 'new'
    end
  end

  def edit
    authorize @course
  end

  def update
    authorize @course
    if @course.update(course_params)
      redirect_to @course, notice: 'Course Create Succesfully'
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    authorize @course
    redirect_to courses_url, notice: 'Course was successfully destroyed.'
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :description, :lecture, :code, :video, :dataset, :category, :difficulty, :photo, :body, :tag_list, :short_description, images: [])
  end
end
