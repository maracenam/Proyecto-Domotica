# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Users

Dos públicos en Santiago (todas las comunas de la Región Metropolitana):

- **Hogares:** dueños de casas y departamentos que quieren ver y controlar su casa desde el celular, sobre todo quienes viajan seguido o tienen una segunda vivienda. Su objetivo: saber que la casa está bien cuando no están, sin pelear con varias apps.
- **Pequeños negocios:** restaurantes, cafeterías, minimarkets y locales similares, en especial los que tienen refrigeración. Su objetivo: vigilar el local cuando está cerrado, enterarse antes de que se pierda mercadería y entender en qué se va la cuenta de luz.

Se espera que el primer contacto llegue desde grupos de Facebook de vecinos y por WhatsApp, casi siempre desde el celular.

## Product Purpose

Nodo diseña, instala y da soporte a domótica para casas y negocios: cámaras que se ven desde el celular, alarma y sensores, luces y electrodomésticos controlados a distancia o por horario, portón y cerradura, y, para negocios, medición de consumo eléctrico y alertas de temperatura en la cadena de frío.

El éxito es tener instalaciones pagadas, clientes que mantienen el soporte mensual opcional y un ingreso recurrente que permita a los socios dedicarle más tiempo (meta interna: unos $250.000 al mes en ingreso recurrente dentro de 6 meses).

## Positioning

Un equipo de dos personas que cubre las dos mitades del trabajo: un ingeniero en automatización (instalación eléctrica, sensores, control, tableros) y un informático (app, red, seguridad de datos, soporte a distancia). Nodo vende integración y soporte continuo, no equipos sueltos que cualquiera compra por internet.

Se ofrecen dos líneas:

- **Línea económica:** instalaciones al menor costo con equipos de consumo masivo. El cliente usa dos apps (eWeLink y Smart Life) y las funciones a distancia dependen de internet. La página no debe prometer una sola app ni funcionamiento sin internet para esta línea.
- **Línea con central local:** agrega un controlador local (Raspberry Pi 5 con Home Assistant, unos $180.000 adicionales). Todo queda en una sola app, la alarma y las rutinas siguen funcionando sin internet y las grabaciones quedan en el equipo del cliente.

## Operating Context

- El contacto y la venta ocurren por WhatsApp; el formulario de la página arma un mensaje de WhatsApp y no guarda datos.
- Todo trabajo parte con una visita sin costo y una cotización con precio cerrado.
- Las instalaciones son presenciales en Santiago; los cambios y el soporte se hacen a distancia cuando es posible.
- Los socios trabajan en Nodo en paralelo a sus empleos. Horario de atención declarado: lunes a viernes de 18:00 a 22:00 y sábados de 10:00 a 14:00.
- Los equipos se compran en tiendas chilenas (principalmente MCI Electronics, además de Vshop, Xmart Home, Automatizate e Impotec). Los precios vigentes están en la planilla de cotización.

## Capabilities and Constraints

Servicios confirmados: cámaras y alarma; luces y electrodomésticos; portón y cerradura; medición de energía y alertas de frío para negocios. Fuera de eso, el alcance se conversa con cada cliente.

- Los trabajos en tablero eléctrico los firma la licencia SEC propia del equipo (por confirmar si ya se tiene o está en trámite).
- La instalación se paga una vez; el soporte mensual es opcional.
- La página es un único archivo HTML estático, hoy compartido como artefacto de claude.ai; el despliegue en Vercel está preparado pero no publicado.

Por decidir:

- Si se muestran precios en la página (hoy dice "cotización sin costo" y no muestra precios).
- Número de WhatsApp (la página usa uno de relleno, +56 9 0000 0000).
- Constitución de la sociedad e inicio de actividades en el SII.

## Brand Commitments

- Nombre: **Nodo** (Nodo Domótica).
- Voz: español de Chile sencillo, tuteo al visitante, concreto y práctico, sin jerga técnica.

## Evidence on Hand

Ninguna todavía. No hay clientes, testimonios, casos, fotos de instalaciones ni cifras de rendimiento, y el trabajo futuro no debe inventarlos. Está planificada una instalación piloto en la casa de uno de los socios, que será la primera evidencia real.

Referencias internas (no son prueba pública): documento del plan de negocio y planillas de costos (costos_kits_domotica.xlsx, cotizacion_planes_domotica.xlsx).

## Product Principles

1. Prometer solo lo que entrega la línea que se vende: nunca decir "una sola app" ni "funciona sin internet" para la línea económica.
2. Hablar de resultados que el cliente reconoce (ver la casa, recibir un aviso, ahorrar luz), no de nombres de equipos ni protocolos.
3. Toda instalación debe poder soportarse a distancia por un equipo que trabaja medio tiempo.
4. Cero prueba inventada: mostrar el piloto y las instalaciones reales a medida que existan.
5. El siguiente paso siempre es un mensaje de WhatsApp sin fricción, porque ahí ya están los clientes.

## Accessibility & Inclusion

- Mínimo WCAG 2.2 AA.
- La mayoría de las visitas llegan desde el celular (Facebook y WhatsApp), así que todo debe leerse y usarse bien en una pantalla chica y a una mano.
