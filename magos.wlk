// magos.wlk
import escudos.*
import bastones.*

object selene {
  var energia = 35
  var poder = 60
  var luzLunarActivada = false
  
  method energiaMagica() = energia
  
  method poderMagico() = poder
  
  method alternarLuzLunar() {
    luzLunarActivada = !luzLunarActivada
  }
  
  method entrenar() {
    if (luzLunarActivada) {
      poder *= 2
    } else {
      energia += 25
    }
  }
}

object balthazar {
  var horasDeEntrenamiento = 450
  var hechizosDañinos = 0
  
  method energiaMagica() = horasDeEntrenamiento / 10
  
  method poderMagico() = 35 - (hechizosDañinos * 3)
  
  method entrenar() {
    horasDeEntrenamiento += 100
    hechizosDañinos += 1
  }
}

object iris {
  var capacidadDeSanacion = 2
  
  method energiaMagica() = 80
  
  method poderMagico() = 35
  
  method entrenar() {
    capacidadDeSanacion += 1
  }
  
  method sanarEscudo() {
    if ((capacidadDeSanacion % 2) == 1) {
      escudoMagico.aumentarResistencia(150)
      escudoMagico.aumentarDurabilidad(100)
    } else {
      escudoMagico.aumentarResistencia(80 * capacidadDeSanacion)
      escudoMagico.aumentarDurabilidad(60 * capacidadDeSanacion)
    }
  }
}

object aldric {
  var entrenamientos = 0
  var habilidadConBastones = 30
  var bastonActual = bastonDeHielo
  
  method energiaMagica() = 65 + (20 * entrenamientos)
  
  method poder() = habilidadConBastones / 2
  
  method entrenar() {
    habilidadConBastones += bastonActual.bonusEntrenamiento()
    entrenamientos += 1
  }
  
  method cambiarDeBaston(nuevoBaston) {
    bastonActual = nuevoBaston
  }
}