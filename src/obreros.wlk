import uocra.*

class Obrero {
	var property obra
	var jornadas = 0
	var estaTrabajando = false
	
	method inicioJornada(){
		if (self.puedeTrabajarEn()){
			estaTrabajando = true
			}else{estaTrabajando = false}
		
	}
	method puedeTrabajarEn()
	
	
	method finJornada() {
		self.avanceDeObra()
		jornadas++
	}
	
	method avanceDeObra(){
		
	}
	
	
	
	
}

class Albanil inherits Obrero {
	var cantidad = 0
	
	override method puedeTrabajarEn(){
		return obra.ladrillos() >= 100
	}
	override method avanceDeObra() {
		cantidad = obra.ladrillos()-100
		obra.ladrillos(cantidad)
	} 
	
}

class Gasista inherits Obrero {
	var cantidad = 0
	
	override method puedeTrabajarEn(){
		return obra.caniosDeGas() >= 2
	}
	override method avanceDeObra() {
		cantidad = obra.caniosDeGas()- 2
		obra.caniosDeGas(cantidad)
	}
}


class Plomero inherits Obrero {
	var cantidad = 0
	
	override method puedeTrabajarEn(){
		return obra.caniosDeAgua() >= 10
	}
	override method avanceDeObra() {
		cantidad = obra.caniosDeGas()-10
		obra.caniosDeGas(cantidad)
	}
}

class Electricista inherits Obrero {
	var cantidad = 0
	
	override method puedeTrabajarEn(){
		return obra.cables() >= 3
	}
	override method avanceDeObra() {
		cantidad = obra.cables()- 3
		obra.cables(cantidad)
	}
}



