class Plaga {
	var property poblacion
	
	method transmiteEnfermedad() = poblacion >= 10
	
	method atacar(elemento){
		elemento.fueAtacado(self)
		poblacion *= 1.1
	}
}
