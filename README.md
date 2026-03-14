# Final Programación con Objetos 1 - 20260314
## Ferretería Industrial

Una ferretería industrial registra pedidos de productos realizados por talleres mecánicos.

Los pedidos pueden incluir distintos productos, y de cada producto debemos saber su precio unitario para poder calcular el precio total del pedido.

De cada producto conocemos su nombre y código único que no cambia, y también su precioBase que si puede cambiar. 
Se debe poder obtener de cada uno su precio unitario que se calcula de diferente forma dependiendo que producto sea:

**Caja de Tornillos**: tienen un precio base y un recargo por el recubrimiento (no cambia) que posean. Sumando este recargo se obtiene el precio unitario. Conocemos estos diferentes recubrimientos, pero puede haber más a futuro:
- zincado: +10% del precio base
- inoxidable: +25% del precio base


**Herramientas**: su precio unitario es su precio base, más un adicional que se agrega por costo de fabricación nacional solo si la herramienta no es importada. Este recargo es el mismo para todas las herramientas nacionales y corresponde a un valor determinado por la CONIFA (Comisión Operativa de Normas e Insumos de Fabricación Argentina) y puede cambiar cada mes. Actualmente el valor inicial de este recargo es 100.

**Herramientas Eléctricas**: son como las Herramientas, pero además se conoce su potencia medida en watts. Para calcular su precio unitario, si la potencia es mayor a 1000W, se aplica un recargo más de un 15% del precio base.

**Pedidos**: Los pedidos pueden contener varios productos, que deben poder agregarse y quitarse del mismo.
Además se debe obtener:
- El precio total del pedido, que se obtiene de la suma de los precios unitarios de los productos incluídos en el mismo.
- Un listado con el código único y nombre de cada producto del pedido.
- El valor del producto más caro.
 

### Se pide implementar:

Los objetos, mensajes, clases concretas y abstractas necesarias para resolver el modelo.

Desarrollar los test que permitan validar el correcto funcionamiento de todos los elementos modelados y los métodos desarrollados.
