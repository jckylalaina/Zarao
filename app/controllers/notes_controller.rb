class NotesController < ApplicationController
  before_action do 
   unless current_user 
    redirect_to gtravails_path
   end 
 end
	def index
		@notes = Notes.all
	end
	def destroy
		@note =Note.find(params[:id])
	end
    
    def create
      puts "#"*30
      @note = Note.new(description:params[:description],task_id:params[:task_id])
      @note.user_id = current_user.id
      puts @note.inspect 
        if @note.save
          respond_to do |format|
          #format.html { redirect_to tasks_path }
           format.js
          end
        end
  end

  private

  def note_params
    params.permit(:data_value)
  end
	
end
