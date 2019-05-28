import elementos.*

class Plaga {
	var property poblacion
	method transmitirEnfermedades() { return poblacion >= 10 }
	method atacar(elemento){ 
		poblacion = poblacion + poblacion * 0.1
		elemento.recibeAtaque(self)
	}
}

class Cucaracha inherits Plaga {
	var property pesoPromedio 
	
	method nivelDeDanio() {
		return poblacion / 2
	}
	
	override method transmitirEnfermedades() {
		return super() and pesoPromedio >= 10
	}
	
	override method atacar(elemento){
		pesoPromedio = pesoPromedio + 2
		super(elemento)
	}
}

class Pulga inherits Plaga{
	method nivelDeDanio() {
		return poblacion * 2
	}	
}

class Garrapata inherits Pulga {
	override method atacar(elemento) {
		poblacion = poblacion + poblacion * 0.2
		elemento.recibeAtaque()
	}
}

class Mosquito inherits Plaga{
	method nivelDeDanio() {
		return poblacion
	}
	
	override method transmitirEnfermedades() {
		return super() and poblacion % 3 == 0
	}
}