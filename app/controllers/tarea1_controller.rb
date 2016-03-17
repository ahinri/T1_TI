class Tarea1Controller < ApplicationController
	def hello
    	render text: "Bienvenido a la Tarea 1 de Andrés Hinrichsen"
 	end

 	def validarFirma
 		if(params.has_key?(:mensaje) && params.has_key?(:hash))
			begin
				mensaje = params[:mensaje]
		 		hash = params[:hash].downcase
		 		require 'digest'
		 		digest = Digest::SHA256.hexdigest mensaje
	    		render json: {"mensaje":mensaje,"valido": (digest==hash)}
	 		rescue
	 			render json: {}, status: "500"
	 		end
		else
			render json: {}, status: "400"
		end
 	end

 	def status
    	render json: {}, status: "201"
 	end

 	def texto
 		begin
 			require 'digest'
 			hash = Digest::SHA256.hexdigest "texto"
 			render json: {"text":"texto","hash":hash}
 		rescue
 			render json: {}, status: "500"
 		end

 	end
end
