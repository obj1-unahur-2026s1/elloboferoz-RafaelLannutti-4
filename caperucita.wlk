object caperucita {
    var cantidadManzanas = 6
    const pesoManzana = 0.2

	method peso() = 60 + (cantidadManzanas * pesoManzana)

    method perderManzana(){
        cantidadManzanas = 0.max(cantidadManzanas - 1) //evito numeros negativos
    }
}

object abuelita{
    method peso()= 50
}


object cazador {
    method peso()= if (tieneHacha) 90 else 85
    var tieneHacha = true

    method interactuarCon(lobo){
        if (tieneHacha){
            lobo.morir()
        }
        else{
            lobo.comer(self)
        }
    }
    method perderHacha(){
        tieneHacha = false
    }

    method obtenerHacha() {
        tieneHacha = true
    }

}