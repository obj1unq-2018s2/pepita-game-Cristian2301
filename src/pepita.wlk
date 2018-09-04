import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 
	var property posicion = game.at(3,3)
	
	
    method imagen(){
    	if(energia < 10){
    		return "pepona.png"
    	}
    	else if(energia > 100){
    		return "pepita-gorda-raw.png"
    	}
    	else{
    		return "pepita.png"
    	}
    }

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if(energia < self.energiaParaVolar(posicion.distance(unaCiudad.posicion()))){
			game.say(self, "Dame de comer primero!")
		}
		else if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
		else{
			game.say(self, "Ya estoy en" + ciudad.nombre())
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion){
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}	
	
	method teEncontro(alguien){
		alguien.entregarComida(self)
	}

}
