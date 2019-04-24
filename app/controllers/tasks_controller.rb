require 'time'
class TasksController < ApplicationController
	before_action  do
		
		unless current_user  
			redirect_to homes_path
		end	

	end
	##si l utilisateur n'est pas dans l'espace de travails current
	before_action only: :index do
    @@espace_de_travail = Space.find(session[:space_id])
	 unless @@espace_de_travail.users.find_by(email:current_user.email)
	 puts "f,ksdjfkljsdklfjsdklfjsdklfjkl"
	 session.destroy
	 redirect_to homes_path,flash: {danger:"vous n'êtes pas dans cette espace de travails veuillez vous inscrire"}
	 end	
	end	

	
	def new
		@task =Task.new
		p current_user.id
	end
	
	def create
		@task = Task.new(task_params)
		@task.user = current_user
		@task.pool_id = session[:pool_id]
		puts @task.inspect
		if @task.save
			redirect_to tasks_path
		
	    else
	     redirect_to tasks_path,flash:{danger:"une erreur s'est produite"} 
		 @task.errors.full_messages.each do |msg|
		 p "*"*10
		 p msg
		 p "*"*10
	     end
	 end
	end
	
	def destroy
		@task = Task.find(params[:id])
		@task.notes.destroy
		@task.destroy
		redirect_to tasks_path
	end
	
	def edit
		@task = Task.find(params[:id])
	end
	
	def update
		@task = Task.find(params[:id])
		@task.update(task_params)
		@task.save
		@task.errors.full_messages.each do |message|
			p message
		end
		redirect_to task_path(@task)
	end
	
	def show
        @tasks = Task.all
		@task =Task.find(params[:id])
		
	end
	
	def index
		puts "*"*50
		puts session[:pool_id]
        @pools = @@espace_de_travail.pools.all

	end
	
	def task_params
		params.permit(:title, :description, :category,:start_date ,:limite_date, :private)
	end
end