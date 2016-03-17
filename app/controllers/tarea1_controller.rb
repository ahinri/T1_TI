class Tarea1Controller < ApplicationController
	def hello
    	render text: "Bienvenido a la Tarea 1 de Andrés Hinrichsen"
 	end

 	def validarFirma
 		mensaje = params[:mensaje]
 		hash = params[:hash].downcase
 		require 'digest'
		digest = Digest::SHA256.hexdigest mensaje
    	render json: {"mensaje":mensaje,"valido": (digest==hash)}
 	end

 	def status

    	render json: {"mensaje":"mensaje"}
 	end
end
