import Personaje.*

object tienda {
	
	method hechizoBasico(){
		return 10
	}
	method arma(personaje){
		return 5 * personaje.habilidadLucha()
	}
	method precio(algo){
		return algo
	}
}
