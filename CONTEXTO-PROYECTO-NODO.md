# Nodo Domótica: contexto completo del proyecto

Actualizado el 15 de noviembre de 2026. Este documento reúne todo lo decidido y producido hasta ahora, para retomar el trabajo en otro chat, pasárselo a otro agente o ponerse al día entre socios.

---

## 1. Resumen en un párrafo

Dos socios en Santiago, un ingeniero en automatización y un informático, están partiendo **Nodo**, un servicio de domótica para casas y pequeños negocios. Instalan cámaras que se ven desde el celular, alarma y sensores, luces y electrodomésticos controlados a distancia, portón y cerradura y, para negocios, medición de consumo eléctrico y alertas de temperatura en refrigeradores. Venden integración y soporte, no equipos sueltos. Trabajan en paralelo a sus empleos y dedicarán más tiempo si el negocio funciona. Todavía no tienen clientes.

---

## 2. Decisiones tomadas

| Tema | Decisión |
|---|---|
| Nombre | **Nodo** (Nodo Domótica) |
| Zona | Todo Santiago (Región Metropolitana) |
| Públicos | Hogares y pequeños negocios con refrigeración (restaurantes, cafeterías, minimarkets) |
| Dedicación | En paralelo a sus trabajos; más tiempo si a los 6 meses hay unos $250.000 al mes de ingreso recurrente y demanda que no alcanzan a cubrir |
| Líneas de producto | **Ambas:** línea económica (dos apps, depende de internet) y línea con central local (una sola app, funciona sin internet) |
| Servicios confirmados | Cámaras y alarma; luces y electrodomésticos; portón y cerradura; energía y frío para negocios. Lo demás se conversa con cada cliente |
| Trabajos en tablero | Con licencia SEC propia del equipo (por confirmar si ya se tiene o está en trámite) |
| Canal de venta | WhatsApp, con primer contacto desde grupos de Facebook de vecinos |
| Modelo de cobro | Instalación con precio cerrado (pago único) + soporte mensual opcional |
| Visita y cotización | Sin costo |
| Horario de atención | Lunes a viernes 18:00 a 22:00, sábados 10:00 a 14:00 |
| Voz de la marca | Español de Chile sencillo, tuteo, concreto, sin jerga técnica |

---

## 3. Socios y roles

| Socio | Perfil | Se encarga de |
|---|---|---|
| Socio 1 | Ingeniero en automatización | Instalación eléctrica, tableros, sensores, control |
| Socio 2 (Matías) | Informático | App, red, central local, seguridad de datos, soporte a distancia, página web |

---

## 4. Propuesta de valor y posicionamiento

- **Lo que se vende:** integración. Todo funcionando junto, configurado, probado y con alguien que responde si falla.
- **Diferencia frente a comprar equipos sueltos:** escenas listas ("Salgo de casa", "Cierro el local"), instalación limpia y soporte a distancia.
- **Para negocios:** se vende ahorro y pérdidas evitadas, que se demuestran con números. Por eso el negocio es el foco comercial y el hogar sirve como vitrina.

### Las dos líneas

| | Línea económica | Línea con central local |
|---|---|---|
| Apps del cliente | Dos: eWeLink (cámaras, luces, portón, energía) y Smart Life (alarma) | Una sola (Home Assistant) |
| Sin internet | Las funciones a distancia y los avisos dejan de funcionar; la sirena RF sí suena | Alarma y rutinas siguen funcionando |
| Grabaciones | En la microSD de cada cámara | En el equipo del cliente |
| Costo extra | — | Unos $180.000 (Raspberry Pi 5 de 4 GB con Home Assistant) + adaptador Zigbee |

**Regla:** nunca prometer "una sola app" ni "funciona sin internet" para la línea económica.

---

## 5. Planes y precios (cotización del 12 de noviembre de 2026)

> **Actualizado el 17 de noviembre de 2026.** Precios de venta subidos para llegar a ~23–31% de margen bruto (ver `reports/Insumos domótica precios y márgenes.md`). Ya están en la página:
> Cámaras $239.990 · Alarma $199.990 · Luces $219.990 · Portón $89.990 · Energía y frío $359.990 (trifásico +$149.990) · Casa Segura $399.990 · Casa Completa $669.990 · Negocio Completo $729.990 · Soporte Hogar $19.990/mes · Soporte Negocio $39.990/mes · Central local +$299.990 y $29.990/mes.
> Las tablas de abajo quedan como la cotización original.

Precios de tienda con IVA. Supuestos: 25% de margen sobre equipos, $25.000 por hora de instalación y $15.000 de traslado por visita. Confirmar precio y stock antes de comprar.

### Planes sueltos (línea económica)

| Plan | Qué incluye | Costo equipos | Horas | Precio sugerido |
|---|---|---|---|---|
| Cámaras | 1 cámara interior 360°, 1 exterior, grabación en microSD | $94.740 | 3 | $209.990 |
| Alarma | Sirena con central, 2 sensores de puerta, 2 de movimiento, control remoto | $60.540 | 2,5 | $159.990 |
| Luces y electrodomésticos | 3 circuitos de luz y 2 enchufes | $64.850 | 3 | $179.990 |
| Portón | Apertura desde el celular | $12.990 | 1,5 | $69.990 |
| Negocio: energía y frío | Medidor del local, 2 puntos de temperatura, sensor de puerta, 2 horarios | $116.920 | 5 | $289.990 |

### Packs (una sola visita)

| Pack | Planes | Costo equipos | Precio sugerido |
|---|---|---|---|
| Casa Segura / Negocio Seguro | Cámaras + Alarma | $155.280 | $349.990 |
| Casa Completa | Cámaras + Alarma + Luces + Portón | $233.120 | $559.990 |
| Negocio Completo | Cámaras + Alarma + Energía y frío | $272.200 | $619.990 |

### Soporte mensual (supuestos a validar con clientes)

| Plan | Incluye | Precio |
|---|---|---|
| Hogar | Acceso remoto, actualizaciones, respaldo de configuración, soporte por WhatsApp en horario hábil | $14.990 / mes |
| Negocio | Lo anterior + alertas 24/7 al dueño, reporte mensual de consumo, ajustes de horarios | $34.990 / mes |

Con 5 clientes de cada tipo, el ingreso recurrente sería unos $250.000 al mes.

### Lista de compras (producto, precio, tienda)

| Plan | Producto | Cant. | Precio unit. | Tienda | Nota |
|---|---|---|---|---|---|
| Cámaras | Sonoff Pan-Tilt 2 (interior 360°, Full HD) | 1 | $32.990 | MCI Electronics | Confirmar stock |
| Cámaras | Sonoff CAM-B1P (exterior 2K, IP65) | 1 | $33.990 | MCI Electronics | **Agotada** al revisar. Alternativas: Sonoff GlassView ($39.990) o bala Tuya de Xmart Home ($42.990, otra app) |
| Cámaras | microSD 64 GB SanDisk Ultra | 2 | $8.990 | Xmart Home | En MCI cuesta $24.990 |
| Cámaras | Cargador USB 5 V | 2 | $4.890 | MCI Electronics | Las cámaras Sonoff traen solo cable |
| Alarma | Sirena WiFi Vhome 110 dB con modo central | 1 | $24.990 | Vshop | En stock; batería de respaldo; app Smart Life |
| Alarma | Sensor de puerta RF433 Vhome | 2 | $5.490 | Vshop | Confirmar compatibilidad con la sirena |
| Alarma | Sensor de movimiento PIR RF433 Vhome | 2 | $9.290 | Vshop | Confirmar compatibilidad |
| Alarma | Control remoto para armar/desarmar | 1 | $5.990 | Vshop | |
| Luces | Sonoff MINIR4M (módulo detrás del interruptor) | 3 | $15.290 | MCI Electronics | Requiere neutro en la caja |
| Luces | Enchufe Sonoff S26 R2 16 A | 2 | $9.490 | MCI Electronics | Patas gruesas tipo europeo: necesita adaptador |
| Portón | Control WiFi de portones y chapas eléctricas | 1 | $12.990 | MCI Electronics | Confirmar stock |
| Energía y frío | Sonoff POW Ring 100 A con pinza | 1 | $37.990 | MCI Electronics | Monofásico; trifásico necesita 3 unidades |
| Energía y frío | Sonoff TH Elite 20 A | 2 | $21.990 | MCI Electronics | Uno por equipo de frío |
| Energía y frío | Sonda WTS01 a prueba de agua | 2 | $5.990 | MCI Electronics | |
| Energía y frío | Sensor de puerta WiFi Sonoff DW2 | 1 | $7.990 | MCI Electronics | Sin hub |
| Energía y frío | Interruptor Sonoff Basic R4 | 2 | $7.490 | MCI Electronics | Letrero y luces |

**Opcionales:** cámara interior Sonoff CAM Slim ($34.990, con RTSP), detector de humo WiFi ($20.990, Xmart Home), control IR universal para aire y TV ($11.990, Automatizate), cerradura eléctrica WiFi con tarjeta ($61.990, MCI), cerradura Tuya con huella ($74.990, Impotec), medidor por equipo Sonoff POW Elite 16 A ($17.990, MCI).

**Central local:** kit de inicio Raspberry Pi 5 de 4 GB ($179.990, MCI) + dongle Zigbee Sonoff ZBDongle-E ($28.990, MCI, **agotado** al revisar).

---

## 6. Kits originales (primera versión, 2 de noviembre)

Antes de la cotización por planes se armaron dos kits sobre una base común con Home Assistant Green (importado). Siguen como referencia para la línea con central local.

| Kit | Costo equipos | Precio instalado | Mensualidad |
|---|---|---|---|
| Kit Hogar (cámaras, sensores, luces, humo) | ~$581.000 | ~$941.000 | $14.990 |
| Kit PYME (medidor trifásico Shelly Pro 3EM, temperatura, puertas, relés) | ~$727.000 | ~$1.174.000 | $34.990 |

El controlador Home Assistant Green importado (~$262.000) era casi la mitad del costo del Kit Hogar; por eso la línea con central pasó a usar Raspberry Pi 5 comprada en Chile.

---

## 7. Plan de trabajo (8 semanas)

| Semanas | Fase | Tareas | Hito |
|---|---|---|---|
| 1 y 2 | Definir kits | Lista de componentes, costos y precios, elegir rubro de negocio | Kits definidos |
| 3 y 4 | Piloto propio | Instalar en la casa de un socio; conseguir un local conocido para el piloto de negocio; fotos, video y datos | Piloto listo |
| 5 y 6 | Conversar | Visitar 15 negocios del rubro, ofrecer el diagnóstico de consumo, crear Instagram y WhatsApp | 3 o más interesados |
| 7 y 8 | Primeras ventas | Propuestas a interesados; trámites de sociedad, SII y SEC | ¿Seguimos? |

**Gancho de entrada para negocios:** diagnóstico de consumo de 2 semanas (medidor instalado temporalmente). Si contratan, se descuenta.

### Metas

| Métrica | 3 meses | 6 meses |
|---|---|---|
| Conversaciones con potenciales clientes | 15 | 40 |
| Diagnósticos de consumo | 3 | 10 |
| Kits instalados y pagados | 2 | 8 |
| Clientes con mensualidad | 2 | 8 |
| Ingreso recurrente mensual | $50.000 | $250.000 |
| Solicitudes rechazadas por falta de tiempo | — | 3 o más |

---

## 8. Riesgos y supuestos a validar

| Riesgo | Mitigación |
|---|---|
| Que las PYMEs no paguen mensualidad (el supuesto más riesgoso) | Preguntarlo en las 15 conversaciones; primer mes gratis en el piloto |
| Soporte vs. trabajos de los socios | Horario de soporte por contrato; acceso remoto en todo |
| Equipos que dependen de la nube del fabricante | Ofrecer la línea con central local; probar integración antes de estandarizar |
| Stock y precios cambiantes en tiendas | Confirmar antes de comprar; comprar varias unidades |
| Trabajo en tableros | Licencia SEC propia |
| Privacidad de cámaras (trabajadores en comercios) | Informar, pedir consentimiento y dejarlo en el contrato |
| Competencia de instaladores informales | Vender ahorro e integración, mostrar el piloto |

---

## 9. Trámites en Chile

- [ ] Constituir la sociedad (SpA o limitada, en "Empresa en un día").
- [ ] Inicio de actividades en el SII (las PYMEs pedirán factura).
- [ ] Licencia SEC: confirmar si ya se tiene o está en trámite (trámite en línea, sin costo, respuesta en unos 15 días).
- [ ] Pacto de socios por escrito (aportes, utilidades, salida, dueño de la marca y del código).
- [ ] Seguro de responsabilidad civil.
- [ ] Contrato tipo para clientes (alcance, garantía, qué cubre la mensualidad, horario, datos y cámaras).

---

## 10. Página web

### Estado

- **Versión actual:** un solo archivo `index.html` estático. Copia en el computador de Matías: `Documentos\nodo-domotica\`.
- **Artefacto para compartir:** https://claude.ai/artifact/VpW43VP12nvrFwL69xEHtv (privado hasta compartirlo desde el menú Compartir).
- **Vercel:** preparado pero no publicado. En la misma carpeta está `subir-a-vercel.bat`, que con doble clic inicia sesión y despliega. La dirección queda en `url-del-sitio.txt`.
- **Versión anterior** (portada con panel de un restaurante): https://claude.ai/artifact/RiRNkvhiyQasboacdR1vbe

### Contenido de la página actual

1. Portada: "Tu casa y tu negocio, a la vista desde el celular", con un **plano interactivo**. El visitante elige "Una casa" o "Un negocio" y prueba situaciones ("Salgo de casa", "Llego de noche", "Alguien en el patio", "A dormir", "Abro el local", "Cierro el local", "Falla el frío").
2. Servicios: cámaras, alarma y sensores, luces y electrodomésticos, portón y cerradura, consumo eléctrico y cadena de frío.
3. Un día con el sistema, hora por hora, en casa y en el negocio.
4. Cómo trabajamos: escribir, visita y cotización, instalación, soporte.
5. Por qué no es lo mismo que equipos sueltos, y los dos socios.
6. Preguntas frecuentes.
7. Formulario que arma un mensaje de WhatsApp (no guarda datos) y botón fijo de WhatsApp en celular.

### Diseño

Fondo gris azulado claro, azul tinta para el texto, amarillo "luz encendida" como acento, verde para lo seguro y rojo para alertas. Tipografías Bricolage Grotesque (títulos) y Figtree (texto).

### Pendientes de la página

- **Número de WhatsApp real** (hoy +56 9 0000 0000; los botones no llegan a nadie). Se cambia en la variable `WHATSAPP` al inicio del script.
- **Ajustar la promesa:** la página dice "una sola app" y "funciona sin internet" para todo; hay que separar las dos líneas.
- Decidir si se muestran precios.
- Confirmar los servicios prometidos que dependen de equipos específicos (huella, Alexa/Google Home, respaldo de batería).

---

## 11. Publicaciones para Facebook

### Grupo de la comuna, versión "vecino que se presenta"

> Hola vecinos 👋
>
> Somos dos vecinos de [COMUNA], un ingeniero en automatización y un informático, y estamos partiendo con un emprendimiento de domótica para casas y negocios.
>
> ¿Qué hacemos?
> 📷 Cámaras que ves en vivo desde el celular
> 🚨 Alarma con sensores en puertas, ventanas y patio
> 💡 Luces, estufa, aire y otros equipos controlados desde el celular
> 🚪 Portón y cerradura que abres a distancia
>
> Si tienes un negocio:
> 🧊 Te avisamos al celular si falla un refrigerador o cámara de frío
> 🔌 Te mostramos cuánto gasta tu local hora por hora
>
> Todo queda en una sola app y sigue funcionando aunque se corte internet. Puedes partir solo con las cámaras y sumar el resto después.
>
> La visita y la cotización no tienen costo. Escríbeme por interno o mira cómo funciona acá: [LINK]

**Ojo:** la frase "Todo queda en una sola app y sigue funcionando aunque se corte internet" solo es cierta para la línea con central local. Quitarla o ajustarla si se publica la línea económica.

### Grupo de la comuna, versión "directo al problema"

> ¿Te gustaría ver tu casa o tu local desde el celular? 📱
>
> Instalamos en [COMUNA] y alrededores:
>
> 🏠 Para tu casa
> • Cámaras en vivo en tu celular
> • Alarma que te avisa si alguien entra al patio
> • Luces y electrodomésticos que se apagan con un toque al salir
> • Portón que abres desde el auto
>
> 🏪 Para tu negocio
> • Cámaras para mirar el local cuando no estás
> • Alarma que se arma sola al cerrar
> • Aviso si la cámara de frío pierde temperatura
> • Control del consumo de luz del local
>
> Somos dos vecinos, ingeniero en automatización e informático. Visita y cotización sin costo.
>
> Más info: [LINK]
> O escríbeme por interno 👇

Reemplazar `[COMUNA]` y `[LINK]`. Revisar las reglas de cada grupo sobre publicidad.

---

## 12. Archivos y documentos

| Archivo / documento | Dónde | Qué es |
|---|---|---|
| Plan de proyecto (doc editable) | https://claude.ai/artifact/5vt5ZBobVtQneRQy3oXQQq | Plan de negocio con diagramas, riesgos, trámites y metas |
| `costos_kits_domotica.xlsx` | Enviado en el chat (2 nov) | Costos de los kits originales con Home Assistant Green |
| `cotizacion_planes_domotica.xlsx` | Enviado en el chat (12 nov) | Planes, packs y lista de compras con enlaces |
| `index.html` | `Documentos\nodo-domotica\` | Página web actual |
| `subir-a-vercel.bat` | `Documentos\nodo-domotica\` | Despliegue en Vercel con doble clic |
| `PRODUCT.md` | `Documentos\nodo-domotica\` y proyecto "Proyecto Domotica" | Ficha de producto para impeccable (usuarios, posicionamiento, principios) |
| Este documento | `Documentos\nodo-domotica\` y proyecto | Contexto completo |

---

## 13. Pendientes inmediatos

1. Pasar el número de WhatsApp real y actualizar la página.
2. Ajustar la página para separar línea económica y línea con central local.
3. Publicar en Vercel con `subir-a-vercel.bat` y verificar.
4. Resolver la cámara exterior agotada y confirmar compatibilidad de los sensores RF con la sirena Vhome.
5. Confirmar el estado de la licencia SEC.
6. Hacer la instalación piloto en la casa de un socio y documentarla.
7. Elegir comuna(s) y grupos de Facebook, ajustar la publicación y empezar las 15 conversaciones.

---

## 14. Fuentes de precios

- MCI Electronics: https://mcielectronics.cl/shop/category/domotica-automatizacion-y-seguridad/gateways-y-sensores/ · https://mcielectronics.cl/shop/category/sonoff/interruptores-inteligentes/ · https://mcielectronics.cl/shop/category/domotica-y-seguridad/camaras-inteligentes/
- Vshop (sirena Vhome): https://vshop.cl/smart-home/1005-sirena-wifi-vhome-smart-life-inalambrica-110db-soporta-modo-central-de-alarma.html
- Automatizate: https://www.automatizate.cl/pages/productos
- Impotec (cerradura con huella): https://impotec.cl/producto/cerradura-electronica-tuya-smart-wifi-inteligente-huella-digital-clave/
- Xmart Home: https://www.xmarthome.cl/collections/zigbee
- Licencia SEC: https://www.chileatiende.gob.cl/fichas/2662-licencia-de-instalador-electrico
