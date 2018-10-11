import artefactos.*
/* Los metodos poder() dada la consigna deberian llamarse valor(), pero se les
coloca ese nombre para que sean polimorficos con el metodo poder() de los 
hechizos(que tambien pueden ser refuerzos de las armaduras) */

class CotaDeMalla {
	var property poder
	
	constructor(unPoder){
		poder = unPoder
	}
	
	method poder(){
		return poder	
	}
}

object bendicion {
	var property poseedor
	
	method poder(){
		return poseedor.nivelHechiceria()
	}
}

object ninguno {
	method poder(){
		return 0
	}
	
}