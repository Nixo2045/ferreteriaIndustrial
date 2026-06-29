class Pedido {
  const productos = []

  method precioTotal() = productos.sum({ p => p.precioBase() })
  method listadoDeCodigosUnicos() = productos.map({ p => [p.codigoUnico(), p.nombre()] })
  method productoMasCaro() = productos.max({ p => p.precioUnitario() })

  method agregarProducto(unProducto) { productos.add(unProducto) }
  method quitarProducto(unProducto) { productos.remove(unProducto) }
}