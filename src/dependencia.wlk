import Pedidos.*
import OtrosRodados.*

class Dependencia {
	var empleados 
	var property rodados = []
	var property pedidosRegistro = []
	 
	method cantidadEmpleados(cantidad){empleados = cantidad}
	
	method empleados() {return empleados}

	method  agregarAFlota(rodado){
		return rodados.add(rodado)
	}

	method  quitarDeFlota(rodado) {
		return rodados.remove(rodado)
	}
	
	method pesoTotalFlota() {
		return rodados.sum({g => g.peso()})
	}
	
	method estaBienEquipada() {
		return (rodados.size()>3 and
			rodados.all({g => g.velocidadMax() >= 100}))
	} 
	
	method capacidadTotalEnColor(color) {
		return rodados.filter({ g => g.color() == color}).
						sum({g => g.capacidad()})
	}
	
	method  colorDelRodadoMasRapido() {
		return rodados.max({g => g.velocidadMax()}).color()
	}
	
	method  capacidadFaltante() {
		return empleados - rodados.sum({g => g.capacidad()}) 

	}
	
	method  esGrande() {
		return empleados >= 40 and rodados.size() >= 5
	}
	
	method agregarPedidos(pedido){
		pedidosRegistro.add(pedido)
	}
	
// ETAPA 3
	
	method totalDePasajeronEnPedidos(){
		return pedidosRegistro.sum({g => g.cantidadDePasajeros()})
	}
	
	method puedeSatisfacer(pedido){
		return rodados.any({ g =>  pedido.autoPuedeSatisfacer(g)})
	}
	
	method noPuedeSatisfacer(){
		return pedidosRegistro.filter({ g => not self.puedeSatisfacer(g)})
	}
	
	method colorIncompatible(color){
		return pedidosRegistro.any({ g => g.esColorIncompatible(color)})
	}
	
	method relajarTodos(){
		return pedidosRegistro.map({ g => g.tiempoMaximo() + 1})
	}
	
}
