class Hogar {
	var property nivelDeMugre
	var property confortQueOfrece
	
	method esBueno() {
		return nivelDeMugre <= confortQueOfrece / 2
	}
}

class Huerta {
	var property capacidadDeProduccion
	
	method esBueno() {
		return capacidadDeProduccion > capacidadHuertas.nivel()
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