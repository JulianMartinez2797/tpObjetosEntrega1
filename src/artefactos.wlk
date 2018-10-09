import Personaje.*
import fuerzaOscura.*
import refuerzos.*

class Arma {
	method unidadesDeLucha(){
		return 3
	}
}

object collarDivino {
	var cantidadPerlas = 5
	
	method cantidadPerlas(cantidad){
		cantidadPerlas = cantidad 
	}
	
	method unidadesDeLucha(){
		return cantidadPerlas
	}
}

class Mascara {
	var property indiceDeOscuridad
	var property minimoDePoder = 4
	
	constructor(unIndiceDeOscuridad){
		indiceDeOscuridad = unIndiceDeOscuridad
	}
	
	method unidadesDeLucha(){
		return minimoDePoder.max((fuerzaOscura.valor() / 2) * indiceDeOscuridad)
	}
}

object armadura {
	var refuerzo = ninguno
	var poseedor = rolando
	
	method refuerzo(){
		return refuerzo
	}
	
	method refuerzo(unRefuerzo){
		refuerzo = unRefuerzo
	}
	
	method unidadesDeLucha(){
			return 2 + refuerzo.valor()
	}
	
	method tieneRefuerzo(){
		return refuerzo != null
	}
	
	method poseedor(){
		return poseedor 
	}
}

object espejo {
	method unidadesDeLucha(){
		if(rolando.tieneComoRefuerzoSoloAlEspejo() || rolando.artefactos().isEmpty()){
			return 0
		}else{
			return rolando.mejorArtefacto().unidadesDeLucha()
		}
	}
}
