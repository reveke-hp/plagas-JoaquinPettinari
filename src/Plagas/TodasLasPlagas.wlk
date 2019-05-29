import Plaga.*
//--------------- Cucaracha ---------------
class PlagaCucaracha inherits Plaga{
	var property pesoPromedio
	
	method nivelDanio(){
		return poblacion / 2
	}
	override method transmiteEnfermedad(){
		return super() and pesoPromedio >= 10
	}
	override method atacar(elemento){
		super(elemento)
		pesoPromedio += 2
	}
}
//---------------- Mosquitos ---------------
class PlagaMosquito inherits Plaga{	
	method nivelDanio(){
		return poblacion
	}
	
	override method transmiteEnfermedad(){
		return super() and poblacion % 3 == 0
	}	
}
//---------------- Pulgas --------------
class PlagaPulgas inherits Plaga{
	method nivelDanio() = poblacion * 2	
}
//---------------- Garrapatas -------------
class PlagaGarrapatas inherits PlagaPulgas{
	override method atacar(elemento){
		poblacion *= 1.2
		elemento.fueAtado(self)
	}
}
