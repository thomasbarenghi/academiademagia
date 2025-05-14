// escudos.wlk
object escudoMagico {
  var resistencia = 400
  var durabilidad = 600
  
  method aumentarResistencia(valor) {
    resistencia += valor
  }
  
  method aumentarDurabilidad(valor) {
    durabilidad = (durabilidad + valor).min(1000)
  }
  
  method getResistencia() = resistencia
  
  method getDurabilidad() = durabilidad
  
  method resetear() {
    resistencia = 400
    durabilidad = 600
  }
}