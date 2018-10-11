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

class Armadura {
	var property refuerzo
	var valorBase
	var property poseedor
	
	constructor(unRefuerzo, unValorBase, unPoseedor){
		refuerzo = unRefuerzo
		valorBase = unValorBase
		poseedor = unPoseedor
	}
	
	method unidadesDeLucha(){
			return valorBase + refuerzo.poder()
	}
}

object espejo {
	var property poseedor
	
	method unidadesDeLucha(){
		if(poseedor.tieneComoRefuerzoSoloAlEspejo() || poseedor.artefactos().isEmpty()){
			return 0
		}else{
			return poseedor.mejorArtefacto().unidadesDeLucha()
		}
	}
}
