object ludmila {
  method precioPactadoPorKm() {
    return 18
  }
}

object anaMaria {
	var economicamenteEstable = true
	 	
	method economicamenteEstable() = economicamenteEstable
	method economicamenteEstable(param) {
		economicamenteEstable = param
	}
	
  method precioPactadoPorKm() {
    return if (economicamenteEstable) 30 else 25
  }
}

object teresa {
  method precioPactadoPorKm() {
    return 22
  }
}

object roxana {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms
	}
}

object gabriela {
  method precioViaje(cliente, kms) {
    return (cliente.precioPactadoPorKm() * kms) * 1.2
  }
}

object mariela {
  method precioViaje(cliente, kms) {
    return (cliente.precioPactadoPorKm() * kms).max(50)
  }
}

object juana {
  method precioViaje(cliente, kms) {
    return if(kms <= 8) 100 else 200
  }
}

object lucia {
  var choferQueReemplaza
  method choferQueReemplaza(chofer) {
    choferQueReemplaza = chofer
  }
  method precioViaje(cliente, kms) {
    return choferQueReemplaza.precioViaje(cliente, kms)
  }
}

object melina {
  var clienteActual
  method clienteActual(cliente) {
    clienteActual = cliente
  }
  method precioPactadoPorKm() {
    return clienteActual.precioPactadoPorKm() - 3
  }
}



