class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]
  
  def index
    @students = Student.all
  end 
  
  def new
    @student = Student.new  
  end 
  
  def show
    
  end 
  
  def create 
    @student = Student.new(student_params)
    if @student.save
      flash[:notic] = "You have successfully signed up"
      redirect_to root_path
    else
      render 'new'
    end 
  
  end
  
  def edit
  
  end 
  
  def update
   
    if @student.update(student_params)
      flash[:notice] = "You have successfully update your profile"
      redirect_to @student #student_path(@student)
    else
      render 'edit'
    end 
  end 
  
  private
  def set_student
    @student=Student.find(params[:id])
  end 
   def student_params
     params.require(:student).permit(:name, :email)
   end 
end 