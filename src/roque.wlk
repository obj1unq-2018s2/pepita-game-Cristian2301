import comidas.*
import ciudades.*
import pepita.*

object roque {
	var property comidaQueLLevaRoque = manzana
	
	method guardarComida(comida){
		if(self.hayComida(comida) and (comidaQueLLevaRoque = null)){
	    	game.removeVisual(comida)
		}
		if(self.hayComida(comida) and (comidaQueLLevaRoque != null)){
			game.removeVisual(comida)
			game.addVisual(comidaQueLLevaRoque)
		}
		comidaQueLLevaRoque = comida
	}
	
	method hayComida(comida){
		return comida == manzana.imagen() or comida == alpiste.imagen()
	}
	
	method entregarComida(ave){
		if(ave != null) {
			 ave.energia() == ave.energia() + comidaQueLLevaRoque.energia()
		}
		game.addVisualIn(comidaQueLLevaRoque, game.at(2,6))
		comidaQueLLevaRoque = null
	}
}

