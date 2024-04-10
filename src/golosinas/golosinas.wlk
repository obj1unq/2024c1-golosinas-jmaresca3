object bombon {
	var peso = 15
	
	method precio() = 5
	method peso() = peso
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() = "frutilla" 
	method libreGluten() = true
}

object alfajor {
	var peso = 300
	
	method precio() = 12
	method peso() = peso
	method mordisco() { peso = peso * 0.8 }
	method gusto() = "chocolate" 
	method libreGluten() = false
}

object caramelo {
	var peso = 5
	
	method precio() = 1
	method peso() = peso
	method mordisco() { peso -= 1 }
	method gusto() = "frutilla" 
	method libreGluten() = true
}

object chupetin {
	var peso = 7
	
	method precio() = 2
	method peso() = peso
	method mordisco(){
		if(self.peso()>2) { peso = peso * 0.9 }
	}
	method gusto() = "naranja" 
	method libreGluten() = true
}

object oblea {
	var peso = 250
	
	method precio() = 5
	method peso() = peso
	method mordisco(){
		if(self.peso()>70){ peso -= peso * 0.5 }
		else { peso -= peso * 0.25}
	}
	method gusto() = "vainilla" 
	method libreGluten() = false
}

object chocolatin {
	var property peso
	var property precio
	
	method peso(_peso){
		peso = _peso
		self.precio(peso * 0.5)
	}
	method mordisco(){ peso -= 2 }
	method gusto() = "chocolate"
	method libreGluten() = false
}

object golosinaBaniada {
	var golosinaBase = bombon
	var peso = golosinaBase.peso() + pesoBaniado
	var pesoBaniado = 4
	
	method precio() = golosinaBase.precio() + 2
	method peso() = peso
	method mordisco(){
		golosinaBase.mordisco()
		if(pesoBaniado>0) {pesoBaniado -= 2}
	}
	method gusto() = golosinaBase.gusto() 
	method libreGluten() = golosinaBase.libreGluten()
	method golosinaBase(_golosinaBase){
		golosinaBase = _golosinaBase
	}
}

object pastillaTuttiFrutti {
	var peso = 5
	var property libreGluten = true
	const gustos = ["frutilla", "chocolate", "naranja"]
	var indexGusto = 0
	
	method precio(){
		return if(libreGluten){ 7 } else{ 10 }	
	}
	method peso() = peso
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto(){
		if(indexGusto <= 3){
			indexGusto += 1
		}else{
			indexGusto = 1
		}
		return gustos.get(indexGusto)
	} 
}