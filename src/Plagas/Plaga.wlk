class Plaga {
	var property poblacion
	
	method transmiteEnfermedad() = poblacion >= 10
	
	method atacar(elemento){
		poblacion *= 1.1
		elemento.fueAtacado(self)
	}
}
