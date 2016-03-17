class Tarea1Controller < ApplicationController
	def hello
    	render text: "Bienvenido a la Tarea 1 de Andrés Hinrichsen"
 	end

 	def validarFirma
 		mensaje = params[:mensaje].downcase
 		hash = params[:hash].downcase

 		require 'digest'
		digest = Digest::SHA256.hexdigest mensaje


    	render json: {"mensaje":mensaje,"valido":digest==hash}
 	end

 	def status
    	mensaje = "ABCDE"
 		hash = "F0393FEBE8BAAA55E32F7BE2A7CC180BF34E52137D99E056C817A9C07B8F239A"

 		require 'digest'

		digest = Digest::SHA256.hexdigest mensaje
    	render json: {"mensaje":mensaje,"digest":digest}
 	end
end
