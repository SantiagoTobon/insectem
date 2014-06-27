class UsuarioSessionsController < ApplicationController
	def new
		@usuario = Usuario.new
	end
	def create
		if @usuario= login(params[:email],params[:password])
			redirect_back_or_to(especimen_path, message: "Bienvenido")
		else
		flash.now[:alert] = "Especimen no encontrado"
		render action: 'new'
		end
	end
	def destroy
		logout
		redirect_to(:usuarios, message: "Adios")
		
	end
end