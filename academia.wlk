// academia.wlk
object academia {
  const equipo = []
  const candidatos = []
  
  method getCandidatos() = candidatos
  
  method getEquipo() = equipo
  
  method esCandidatoValido(
    mago
  ) = (mago.energiaMagica() > 40) && (mago.poderMagico() >= 30)
  
  method evaluarMago(mago) {
    if (self.esCandidatoValido(mago)) equipo.add(mago) else candidatos.add(mago)
  }
  
  method entrenarEquipo() {
    equipo.forEach({ mago => mago.entrenar() })
  }
  
  method verificarCondicionesOptimas() = equipo.all(
    { mago => mago.energiaMagica() >= 45 }
  )
  
  method poderTotal() = equipo.sum({ mago => mago.poderMagico() })
  
  method deltaEnergia() {
    const maxEnergia = equipo.max({ mago => mago.energiaMagica() })
    const minEnergia = equipo.min({ mago => mago.energiaMagica() })
    
    return (maxEnergia.energiaMagica() - minEnergia.energiaMagica()).abs()
  }
  
  method poderesPorEncimaDe90() = equipo.filter(
    { mago => mago.poderMagico() > 90 }
  ).map({ mago => mago.poderMagico() })
  
  method evaluarCandidatos() {
    candidatos.forEach(
      { mago => if (self.esCandidatoValido(mago)) {
          equipo.add(mago)
          candidatos.remove(mago)
        } }
    )
  }
}