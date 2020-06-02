import Pedidos.*

class Dependencia {
	var empleados 
	var rodados = []
	var pedidosRegistro = []
	 
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
	
	/*method noSePuedeHacerPedido(){
		return pedidosRegistro.all({g => g.Pedido().autoPuedeSatisfacer(rodados)})
	}*/
	
	/*method esColorIncompatible(color){
		return pedidosRegistro.all({g => g.Pedido().sonIncompatibles(rodados)})
	}*/
	
	/*method relajarTodos(){
		return pedidosRegistro.map({ g => g.Pedidos().relejar()})
	}*/
}
