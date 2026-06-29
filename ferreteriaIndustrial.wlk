object ferreteriaIndustrial {
  const pedidosRealizados = []

  method pedidosRealizados() = pedidosRealizados

  method registrarPedido(pedido) { pedidosRealizados.add(pedido) }
  method eliminarPedido(pedido) { pedidosRealizados.remove(pedido) }
}
