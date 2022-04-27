import remiseras.*

object oficina {
  var primeraOpcion
  var segundaOpcion
  
  method asignarChoferes(chofer1, chofer2) {
    primeraOpcion = chofer1
    segundaOpcion = chofer2
  }
  
  method primeraOpcion() {
    return primeraOpcion
  }
  
  method segundaOpcion() {
    return segundaOpcion
  }
  
  method primeraOpcion(chofer) {
    primeraOpcion = chofer
  }
  
  method segundaOpcion(chofer) {
    segundaOpcion = chofer
  }
  
  method intercambiarChoferes() {
    self.asignarChoferes(self.segundaOpcion(),self.primeraOpcion())
  }
  
  method choferElegidoParaViaje(cliente, kms) {
    return if(self.convieneMasElSegundoChofer(cliente, kms)) segundaOpcion else primeraOpcion
  }
  
  method convieneMasElSegundoChofer(cliente, kms) {
    return primeraOpcion.precioViaje(cliente, kms) - segundaOpcion.precioViaje(cliente, kms) >= 30
  }
}