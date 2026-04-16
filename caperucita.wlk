object caperucita {
    var cantidadManzanas = 6
    const pesoManzana = 0.2
    var estaViva = true

	method peso() = 60 + (cantidadManzanas * pesoManzana)

    method perderManzana(){
        cantidadManzanas = 0.max(cantidadManzanas - 1) //evito numeros negativos
    }
    method morir() {
        estaViva = false      
    }
    method estaViva() = estaViva
}

object abuelita{
    method peso()= 50
    var estaViva = true    
    method estaViva() = estaViva
    method morir() {
        estaViva = false      
    }
}


object cazador {
    method peso()= if (tieneHacha) 90 else 85
    var tieneHacha = true
    var estaVivo = true
    method estaVivo() = estaVivo

    method interactuarCon(lobo){
        if (tieneHacha){
            lobo.morir()
        }
        else{
            lobo.comer(self)
            self.morir()
        }
    }
    method perderHacha(){
        tieneHacha = false
    }

    method obtenerHacha() {
        tieneHacha = true
    }
    method morir() {
        estaVivo = false      
    }
}