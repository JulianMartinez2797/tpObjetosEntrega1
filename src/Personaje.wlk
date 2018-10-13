import artefactos.*
import fuerzaOscura.*
import hechizos.*
import tienda.*

class Personaje {
	var hechizoPreferido
	var artefactos 
	var valorBaseLucha
	const valorBaseHechiceria = 3
	var oro = 100
	
	constructor(unHechizoPreferido, unosArtefactos, unValorBaseLucha){
		hechizoPreferido = unHechizoPreferido
		artefactos = unosArtefactos
		valorBaseLucha = unValorBaseLucha
	}
	
	method nivelHechiceria() {
		return (valorBaseHechiceria * hechizoPreferido.poder() * hechizoPreferido.multiplo()) + fuerzaOscura.valor()
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
	
	//comercio
	
	method costoPorIntercambiarHechizo(unHechizo){
		return (unHechizo.precio() - hechizoPreferido.precio()/2)
	}
	
	method alcanzaParaComprarHechizo(unHechizo){
		return (oro >= self.costoPorIntercambiarHechizo(unHechizo))
	}
	
	method alcanzaParaComprarArtefacto(unArtefacto){
		return oro >= unArtefacto.precio()
	}
	
	method restarOro(cantidad){
		oro -= cantidad
	}
	
	method oroInsuficiente(){
		self.error("El oro actual no alcanza para realizar la compra buscada")
	}
	
	method comprarHechizo(unHechizo){
		if(self.alcanzaParaComprarHechizo(unHechizo)){
			self.restarOro(self.costoPorIntercambiarHechizo(unHechizo))
			hechizoPreferido = unHechizo
		}else self.oroInsuficiente()
	}
	
	method comprarArtefacto(unArtefacto){
		if(self.alcanzaParaComprarArtefacto(unArtefacto)){
			self.restarOro(unArtefacto.precio())
			artefactos.add(unArtefacto)
		}else self.oroInsuficiente()
	}
	
	method cumplirObjetivo(){ //nunca se menciona como se cumplen los objetivos, se pone esta funcion generica para cubrir la necesidad por el momento
		oro += 10
	}
	
}