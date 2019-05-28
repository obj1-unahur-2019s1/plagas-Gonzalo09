import plagas.*

class Hogar inherits Plaga {
	var property nivelDeMugre
	var property confortQueOfrece
		
	method esBueno() {
		return nivelDeMugre <= confortQueOfrece / 2
	}
	
	method recibeAtaque(plaga) { nivelDeMugre += plaga.nivelDanio() }
}

class Huerta {
	var property capacidadDeProduccion
	
	method esBueno() {
		return capacidadDeProduccion > capacidadHuertas.nivel()
	}
	
	method recibeAtaque(plaga){
		capacidadDeProduccion -= plaga.nivelDeDanio() * 0.1
		if (plaga.transmitirEnfermedades()){ capacidadDeProduccion -= 10}
	}
}

object capacidadHuertas {
	var property nivel = 0
}

class Mascota {
	var property nivelDeSalud
	
	method esBueno() {
		return nivelDeSalud > 250
	}
	
	method recibeAtaque(plaga) {
		if (plaga.transmitirEnfermedades()){ nivelDeSalud -= plaga.nivelDeDanio() }
	}
}

class Barrio {
	var elementos = []
	
	method agregar(elemento) { elementos.add(elemento) }
	method agregarVarios(elemento) {elementos.addAll(elemento)}
	
	method esCopado() {
		var copados = elementos.filter({ elemento => elemento.esBueno() }).size()
		var cantidad = elementos.size()
		return copados > cantidad-copados
	}
}