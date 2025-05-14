// academia.wlk
object academiaArcanaMagisterium {
  const equipo = []
  const candidatos = []
  
  method esCandidatoValido(
    mago
  ) = (mago.energiaMagica() > 40) && (mago.poderMagico() >= 30)
  
  method evaluarMago(mago) {
    if (self.esCandidatoValido(mago)) equipo.push(mago)
    else candidatos.push(mago)
  }
  
  method entrenarEquipo() {
    equipo.forEach({ mago => mago.entrenar() })
  }
  
  method verificarCondicionesOptimas() = equipo.all(
    { mago => mago.energiaMagica() >= 45 }
  )
  
  method poderTotal() = equipo.sum({ mago => mago.poderMagico() })
  
  method deltaEnergia() = equipo.max(
    { mago => mago.energiaMagica() }
  ) - equipo.min({ mago => mago.energiaMagica() })
  
  method poderesPorEncimaDe90() = equipo.filter(
    { mago => mago.poderMagico() > 90 }
  ).map({ mago => mago.poderMagico() })
  
  method evaluarCandidatos() {
    candidatos.forEach(
      { mago => if (self.esCandidatoValido(mago)) {
          equipo.push(mago)
          candidatos.remove(mago)
        } }
    )
  }
}