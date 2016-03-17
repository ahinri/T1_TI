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
    	mensaje = "ABCDE"
 		hash = "F0393FEBE8BAAA55E32F7BE2A7CC180BF34E52137D99E056C817A9C07B8F239A"

 		require 'digest'

		# Compute a complete digest
		sha256 = Digest::SHA256.new
		digest = sha256.digest mensaje
		digest=digest.encode("UTF-8")
    	render json: {"mensaje":mensaje,"digest":digest}
 	end
end
