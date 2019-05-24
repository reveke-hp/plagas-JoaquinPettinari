class Mascota {
	var property nivelSalud
	
	method fueAtacado(plaga){
		if (plaga.transmiteEnfermedad()){ nivelSalud -= plaga.nivelDanio() }
	}
	method esBueno() = nivelSalud > 250
	
}
