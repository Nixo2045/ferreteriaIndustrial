import conifa.*

class Producto {
  const nombre
  const codigoUnico
  var precioBase
    
  method nombre() = nombre
  method codigoUnico() = codigoUnico
  method precioBase() = precioBase
  method precioUnitario()

  method cambiarPrecio(nuevoPrecio) { precioBase = nuevoPrecio }
}

class CajaDeTornillos inherits Producto {
    const recubrimiento
    
    override method precioUnitario() = self.precioBase() + self.recargo()
    method recargo() = recubrimiento.recargo(precioBase)
}

object zincado {
    method recargo(precio) = precio * 1.10
}
object inoxidable {
    method recargo(precio) = precio * 1.25
}

class Herramientas inherits Producto {
    const esImportada
    
    override method precioUnitario() {
        return if (!esImportada) {
            precioBase + self.costoFabricacionNacional()
        }
        else {
            precioBase
        }
    }
    method costoFabricacionNacional() = conifa.recargo()
}

class HerramientasElectricas inherits Herramientas {
    const potencia

    override method precioUnitario() {
        return if (potencia > 1000) {
            precioBase * 1.15
        }
        else {
            precioBase
        }
    }    
}