import comidas.*
import ciudades.*
import pepita.*

object roque {
	var property comidaQueLLevaRoque = null
	var property posicion = game.at(4,4)
	
	method imagen() = "jugador.png"
	
	method guardarComida(comida){
		game.removeVisual(comida)
		if(comidaQueLLevaRoque != null){
			game.addVisualIn(comidaQueLLevaRoque, posicion.up(1))
		}
		comidaQueLLevaRoque = comida
	}
	
	
	method entregarComida(ave){
		if(comidaQueLLevaRoque != null){
			ave.come(comidaQueLLevaRoque)
			game.addVisualIn(comidaQueLLevaRoque, game.at(1.randomUpTo(10), 1.randomUpTo(10)))
			comidaQueLLevaRoque = null
		}
	}
}
