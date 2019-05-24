class Barrio {
	const property elementos = []
	
	method agregarElemento(elemento){
		elementos.add(elemento)
	}
	method sacarElemento(elemento){
		elementos.remove(elemento)
	}
	method elementosBuenos(){
		return elementos.count{ e => e.esBueno()}
	}
	method elementosMalos(){
		return elementos.count{ e => not e.esBueno()} // elementos.size() - self.elementosBuenos
	}
	method esCopado(){
		return self.elementosBuenos() > self.elementosMalos()
	}

		
}
