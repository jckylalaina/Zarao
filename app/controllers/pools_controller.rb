class PoolsController < ApplicationController
	def create
     @pool = Pool.new(pool_params)
     @pool.space_id = session[:space_id]
     @pool.user = current_user
    puts @pool.inspect
    if @pool.save
    	redirect_to tasks_path,flash:{notice: "votre groupe a ete creer"
}    else	
    redirect_to tasks_path,flash:{danger: "desole une erreur c'est produite"}
    end	
     


	end	
     def req
     session[:pool_id] = params[:data_value]
     puts "#"*50
     puts session[:pool_id]
    end
	

	private
	def pool_params
      params.permit(:title)
	
	end	

end
