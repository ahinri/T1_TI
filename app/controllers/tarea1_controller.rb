class Tarea1Controller < ApplicationController
	def hello
    	render text: "Bienvenido a la Tarea 1 de Andrés Hinrichsen"
 	end

 	def validarFirma
    	render text: "validarFirma"
 	end

 	def status
    	render json: "aqui va el status"
 	end
end
