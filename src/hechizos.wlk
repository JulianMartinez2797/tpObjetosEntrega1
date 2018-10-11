class HechizoDeLogo {
	var property nombre
	var property multiplo
	
	constructor(unNombre, unMultiplo){
		nombre = unNombre
		multiplo = unMultiplo
	}
	
	method poder(){
		return nombre.size()
	}
	
	method esPoderoso(){
		return self.poder() > 15
	}
}

object hechizoBasico {
	var property multiplo = 1
	
	method esPoderoso(){
		return false
	}
	
	method poder(){
		return 10
	}
}
