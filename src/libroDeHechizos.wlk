object libroDeHechizos {
	var hechizos = []
	
	method poder(){
		return self.hechizosPoderosos().sum({unHechizoPoderoso => unHechizoPoderoso.poder()})
	}
	
	method hechizos(unosHechizos){
		hechizos = unosHechizos
	}
	
	method hechizosPoderosos(){
		return hechizos.filter({unHechizo => unHechizo.esPoderoso()})
	}
}