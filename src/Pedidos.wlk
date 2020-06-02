import Trafic.*
import OtrosRodados.*

class Pedidos {
	var property distanciaKm
	var property tiempoMaximo
	var property cantidadDePasajeros
	var coloresIncompatibles = []
	
	method agregarColoresIncomp(color){
		coloresIncompatibles.add(color)
	}
	
	method velocidadRequerida(){
		return distanciaKm / tiempoMaximo
	}
	
	method sonIncompatibles(auto){
		return coloresIncompatibles.contains(auto.color())
	}
	
	method autoPuedeSatisfacer(auto){
		return auto.velocidadMax() >= self.velocidadRequerida() + 10
				and auto.capacidad() >= cantidadDePasajeros
					and not self.sonIncompatibles(auto)
					
	}
	
	method acelerar(){
		return tiempoMaximo - 1
	}
	
	method relajar(){
		return tiempoMaximo + 1
	}
}
