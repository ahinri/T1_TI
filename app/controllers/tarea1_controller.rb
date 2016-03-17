class Tarea1Controller < ApplicationController
	def hello
    	render text: "Bienvenido a la Tarea 1 de Andrés Hinrichsen"
 	end

 	def validarFirma
 		mensaje = params[:mensaje]
 		hash = params[:hash]

 		require 'digest'

		# Compute a complete digest
		sha256 = Digest::SHA256.new
		digest = sha256.digest mensaje
    	render json: {"mensaje":mensaje,"digest":digest}
 	end

 	def status
    	render json: "aqui va el status"
 	end
end
