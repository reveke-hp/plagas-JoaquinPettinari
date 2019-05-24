class Hogar {
	var property nivelMugre
	var property confort
	//Se considera que un hogar _es bueno_ si su nivel de mugre es la mitad del confort que ofrece, o menos. 
	
	method esBueno(){
		return nivelMugre <= confort / 2
	}
	method fueAtacado(plaga){
		nivelMugre += plaga.nivelDanio()
	}
}
