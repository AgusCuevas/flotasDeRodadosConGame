import wollok.game.*

class ChevroletCorsa {
	var color
	var property position = game.at(3, 3)
	var property image = "autitorojo.png"
	var posicionesPorLasQuePaso = [position]
	
// ETAPA 4 *******************
	
	method posicionesPorLasQuePaso(){
		return posicionesPorLasQuePaso
	}
	
	method pasoPor(posicion){
		return self.posicionesPorLasQuePaso().contains(posicion)
	}
	
	method filasPorLasQuePaso(){
		return posicionesPorLasQuePaso.map({g => g.x()})
	}
	
	method pasoPorFila(posicion){
		return self.filasPorLasQuePaso().contains(posicion)
	}
	
	/*method  recorrioFilas(listadenumeros) {
		return self.filasPorLasQuePaso().contains(listadenumeros)
	}*/

// Esta parte es del game **************************

	method moveteArriba() {
		self.position(self.position().up(1))
		posicionesPorLasQuePaso.add(self.position())
	}
	
	method moveteAbajo() {
		self.position(self.position().down(1))
		posicionesPorLasQuePaso.add(self.position())
	}
	
	method moveteDerecha() {
		self.position(self.position().right(1))
		posicionesPorLasQuePaso.add(self.position())
	}
	
	method moveteIzquierda(){
		self.position(self.position().left(1))
		posicionesPorLasQuePaso.add(self.position())
	}
	
//**************************************************************
	method capacidad(){return 4}
	
	method velocidadMax(){return 150}
	
	method nuevoColor(colorNuevo){color = colorNuevo}
	
	method color() {return color}
	
	method peso(){return 1300}	
}


class RenaultKwid {
	var gas = true
	const color = "Azul"

	method capacidad(){
		if (gas) {return 3} else {return 4}
	}
	
	method velocidadMax(){
		if (gas) {return 120} else {return 110}
	}
	
	method color() {return color}
	
	method peso(){ 
		if ( gas) {return 1350} else {return 1200}
	}
	
	method gasCambiar(){gas = not gas}
}

class AutoEspecial{
	var property capacidad
	var property velocidadMax
	var property color 
	var property peso

}


