object espectroMalefico {
	var nombre = "espectro malefico"
	
	method poder(){
		return nombre.size()
	}
	
	method esPoderoso(){
		return self.poder() > 15
	}
	
	method nombre(nuevoNombre){
		nombre = nuevoNombre
	}
	
	method valor(){
		return self.poder()
	}
}

object hechizoBasico {
	method esPoderoso() {
		return false
	}
	
	method poder(){
		return 10
	}
	
	method valor(){
		return self.poder()
	}
}
