import artefactos.*

object cotaDeMalla {
	method valor(){
		return 1
	}
}

object bendicion {
	method valor(){
		return armadura.poseedor().nivelHechiceria()
	}
}

object ninguno {
	method valor(){
		return 0
	}
}