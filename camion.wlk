import cosas.*
object camion {
    const cosasCargadas = []

    method pesoSinCarga() = 1000
    method pesoTotal(){}

    method agregarCosa(unaCosa) = cosasCargadas.add(unaCosa)
    method quitarCosas(unaCosa) = cosasCargadas.remove(unaCosa)
    method todosLosPesosSonPares() = cosasCargadas.all({c => c.peso().even()})
    method hayAlgoConPeso(unPeso) = cosasCargadas.any({c => c.peso() == unPeso})
    method primeraCargaConPeligro(nivelPeligro) = cosasCargadas.find({c => c.peligrosidad() == nivelPeligro})
    method todasSuperanNivelDePeligro(nivelPeligro) = cosasCargadas.all({c => c.peligrosidad() > nivelPeligro})
    method cosasQueSuperanPeligrosidadDe(unaCosa) = cosasCargadas.filter({c => c.peligrosidad() > unaCosa.peligrosidad()})
    method pesoDeLasCosas() = cosasCargadas.sum({c => c.peso()})
    method estaExcedido() = (self.pesoSinCarga() + self.pesoDeLasCosas()) > 2500
    method puedeCircular(nivelPeligro) = !self.estaExcedido() and cosasCargadas.any({c => c.peligrosidad() < nivelPeligro})


}