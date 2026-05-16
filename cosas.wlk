object knightRider {
    method peso() = 500
    method peligrosidad() = 10    
}
object bumblebee{
    var esAuto = true
    method peso() = 800
    method peligrosidad() =
       if(esAuto){
         15         
       }
       else { 30}
    method transformar() { 
        esAuto = !esAuto
    }   
}

object ladrillos{
    var property cantidadLadrillos = 0   
    method peso() = cantidadLadrillos * 2
    method peligrosidad() = 2
}
 object arena{
    var property cantidadDeArena = 2
    method peligrosidad() = 1
    method peso() = cantidadDeArena * 2
 }
 object bateria {
    var estaConMisiles = true
    method peso() = if(estaConMisiles){
        300
    }
    else {200}
    method peligrosidad() = if(estaConMisiles){
        100
    }
    else {0}
    method descargarMisiles() { 
        estaConMisiles = false} 
    method cargarMisiles() {
        estaConMisiles = true
    }
}
object contenedor{
    const cosas = []
    method peso() = 100 + cosas.sum({c => c.peso()})
    method peligrosidad() = if (!cosas.isEmpty()){
        cosas.max({c => c.peligrosidad()})}
        else {0}
    method cargar(unaCosa) = cosas.add(unaCosa)    
}
object residuos{
    var property peso = 10
    method peligrosidad() = 200
}
object embalaje{
    var tieneAdentro = bateria
    method peso() = tieneAdentro.peso()
    method embalar(unaCosa) {
        tieneAdentro = unaCosa
    }
    method peligrosidad() = tieneAdentro.peligrosidad() / 2
}
