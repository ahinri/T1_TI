class Tarea1Controller < ApplicationController
	def hello
    	render text: "Bienvenido a la Tarea 1 de Andrés Hinrichsen"
 	end

 	def validarFirma
 		mensaje = params[:mensaje]
 		hash = params[:hash]
    	render json: {"mensaje":mensaje,"valido":1==2}
 	end

 	def status
    	render json: "aqui va el status"
 	end
end
