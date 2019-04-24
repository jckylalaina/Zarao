class SpacesController < ApplicationController
	def index
    
	end
	
	def new

	end

	def create
      @gtrav = Space.new(title:params[:title],email:params[:email])
      if @gtrav.save

      redirect_to homes_path,notice:'votre espace a bien été créer'
      else
        redirect_to homes_path,notice:"une erreur c'est produite "
      end	
    end	


    def groupe
      puts "#"*30
      @g = Space.find_by(title:params[:title])
     if @g
      session[:space_id] = @g.id
      $title = @g.title
     redirect_to new_user_session_path
     else
     redirect_to homes_path,notice:"le groupe de travaill n'existe pas"
     end

    end	
end


