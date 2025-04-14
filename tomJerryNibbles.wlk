object tom {
    var energia = 50
    var metrosRecorridos = 0
    var raton = jerry

    method energia() = energia

    method comer(unRaton) {
        energia = energia + 12 + unRaton.peso()
        raton = unRaton
    }
    
    method correr(metros) {
        energia = energia - metros / 2
        metrosRecorridos = metrosRecorridos + metros
    }
    
    method velocidadMaxima() = 5 + energia / 10

    method puedeCazar(distancia) = energia >= distancia/2

    method cazar(unRaton,distancia) {
        if (self.puedeCazar(distancia)) {
            self.correr(distancia)
            self.comer(unRaton)
        }
    }

}

object jerry {
    var edad = 2
    method peso() = edad * 20
    method nuevaEdad() {edad = edad + 1}
    method edad() = edad

}

object nibbles {
    method peso() = 35
}

// Inventar otro ratón

object robert {
  var peso = 10
  method peso() = peso
  method nuevoPeso(unPeso) {peso = peso + unPeso}
}