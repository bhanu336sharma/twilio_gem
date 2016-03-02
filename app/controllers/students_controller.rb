class StudentsController < ApplicationController
	def default_url_option

	

	end

	def index
		@student = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end


	def new
		@student = Student.new
	end


	def create
		@student = Student.create(student_params)
		if @student.save
			redirect_to @student
		else
			redirect_to new
		end
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])

        if @student.update(student_params)
			redirect_to "/students"
		else
			flash.now[:error] = "Could not save client"
			redirect_to "/students"
		end
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to "/students"
	end

	def student_params
		params.require(:student).permit(:name, :roll_no, :city, :gender, :description, :phno)	
	end
	

end
