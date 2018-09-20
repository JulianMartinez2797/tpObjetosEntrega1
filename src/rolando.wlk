import artefactos.*
import fuerzaOscura.*
import hechizos.*

object rolando {
	var hechizoPreferido = espectroMalefico
	var artefactos = []
	var valorBaseLucha = 1
	var valorBaseHechiceria = 3
	
	method nivelHechiceria() {
		return (valorBaseHechiceria * hechizoPreferido.poder()) + fuerzaOscura.valor()
	}
	
	method hechizoPreferido(unHechizo) {
		hechizoPreferido = unHechizo
	}
	
	method seCreePoderoso(){
		return hechizoPreferido.esPoderoso()
	}
	
	method habilidadLucha(){
		return valorBaseLucha + artefactos.sum({unArtefacto => unArtefacto.unidadesDeLucha()})
	}
	
	method valorBaseLucha(nuevoValor){
		valorBaseLucha = nuevoValor
	}
	
	method agregarArtefacto(unArtefacto){
		artefactos.add(unArtefacto)
	}
	
	method removerArtefacto(unArtefacto){
		artefactos.remove(unArtefacto)
	}
	
	method tieneMayorHabilidadLuchaQueNivelHechiceria(){
		return self.habilidadLucha() > self.nivelHechiceria()
	}
	
	method artefactos(){
		return artefactos
	}
	
	method mejorArtefacto(){
		var artefactosSinEspejo = artefactos.filter({unArtefacto => unArtefacto != espejo})
		return artefactosSinEspejo.max({unArtefacto => unArtefacto.unidadesDeLucha()})
	}
	
	method tieneComoRefuerzoSoloAlEspejo(){
		return artefactos.contains(espejo) && (artefactos.size() == 1)
	}
	
	method estaCargado(){
		return artefactos.size() >= 5
	}
}