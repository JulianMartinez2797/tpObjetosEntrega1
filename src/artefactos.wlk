import rolando.*
import fuerzaOscura.*
import refuerzos.*

object espadaDelDestino {
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

object mascaraOscura {
	method unidadesDeLucha(){
		return 4.max(fuerzaOscura.valor() / 2)
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
