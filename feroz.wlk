object feroz {
	var peso = 10
	var estaVivo = true 

	method peso() = peso

	method estaSaludable() = peso.between(20, 150)

	method aumentarPeso(cantidad) {
		peso += cantidad
	}

	method disminuirPeso(cantidad) {
        peso = 0.max(peso - cantidad) 
        if (peso == 0) {
            self.morir()
        }
    }

	method sufrirCrisis() {
		peso = 10
	}

	method comer(comida) {
		self.aumentarPeso(comida.peso() * 0.1)
		comida.morir()

	}

	method correr() {
		self.disminuirPeso(1)
	}
    method morir(){
        estaVivo = false
    }
	method estaVivo() = estaVivo
}