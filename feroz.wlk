object feroz {
	var peso = 10

	method peso() = peso

	method estaSaludable() = peso.between(20, 150)

	method aumentarPeso(cantidad) {
		peso += cantidad
	}

	method disminuirPeso(cantidad) {
		peso = 0.max(peso - cantidad) //para evitar los numeros negativos
	}

	method sufrirCrisis() {
		peso = 10
	}

	method comer(comida) {
		self.aumentarPeso(comida.peso() * 0.1)
	}

	method correr() {
		self.disminuirPeso(1)
	}
    method morir(){
        peso = 0
    }
}