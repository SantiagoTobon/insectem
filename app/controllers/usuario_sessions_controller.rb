class UsuarioSessionsController < ApplicationController
	def new
		@usuario = Usuario.new
	end
	def create
		if @usuario= login(params[:email],params[:password])
			redirect_back_or_to(new_especiman_path, message: "Bienvenido")
		else
		flash.now[:alert] = "Especimen no encontrado"
		render action: 'new'
		end
	end
	def destroy
		logout
		redirect_to(new_usuario_path, message: "Adios")
		
	end
end