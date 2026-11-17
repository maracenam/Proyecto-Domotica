---
name: Nodo Domótica
description: Cámaras, alarma, luces, portón y control de frío para casas y negocios en Santiago, mostrados en una casa en miniatura que funciona.
colors:
  cal: "#F3EFE6"
  cal-2: "#E8E1D2"
  papel: "#FFFDF8"
  tinta: "#1B1F27"
  tinta-2: "#4B5261"
  regla: "#D5CDBC"
  madera: "#C9A27A"
  noche: "#1C2333"
  noche-2: "#283149"
  noche-tinta: "#C3C9D8"
  luz: "#FFC93C"
  seguro: "#1FA463"
  seguro-texto: "#11703F"
  alerta: "#E2483D"
  alerta-texto: "#B3261E"
  cielo: "#DCE5E8"
typography:
  display:
    fontFamily: "Gabarito, Segoe UI, system-ui, sans-serif"
    fontSize: "clamp(2.5rem, 4.9vw, 4.1rem)"
    fontWeight: 900
    lineHeight: 1.04
    letterSpacing: "-0.03em"
  headline:
    fontFamily: "Gabarito, Segoe UI, system-ui, sans-serif"
    fontSize: "clamp(2rem, 4.2vw, 3.3rem)"
    fontWeight: 800
    lineHeight: 1.04
    letterSpacing: "-0.02em"
  title:
    fontFamily: "Gabarito, Segoe UI, system-ui, sans-serif"
    fontSize: "1.3rem"
    fontWeight: 800
    lineHeight: 1.15
    letterSpacing: "-0.01em"
  price:
    fontFamily: "Gabarito, Segoe UI, system-ui, sans-serif"
    fontSize: "1.7rem"
    fontWeight: 900
    lineHeight: 1
    letterSpacing: "-0.02em"
    fontFeature: "tnum"
  button:
    fontFamily: "Gabarito, Segoe UI, system-ui, sans-serif"
    fontSize: "1.08rem"
    fontWeight: 800
    lineHeight: 1.1
  lede:
    fontFamily: "Onest, Segoe UI, system-ui, sans-serif"
    fontSize: "clamp(1.1rem, 1.5vw, 1.22rem)"
    fontWeight: 400
    lineHeight: 1.6
  body:
    fontFamily: "Onest, Segoe UI, system-ui, sans-serif"
    fontSize: "1.0625rem"
    fontWeight: 400
    lineHeight: 1.6
rounded:
  field: "14px"
  tile: "20px"
  panel: "28px"
  pill: "999px"
  circle: "50%"
spacing:
  gutter: "clamp(16px, 4vw, 40px)"
  shell: "1240px"
  block: "clamp(72px, 10vw, 128px)"
  tap: "44px"
  iso-unit: "24px"
components:
  button-primary:
    backgroundColor: "{colors.tinta}"
    textColor: "{colors.papel}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    padding: "8px 24px 8px 8px"
    height: "56px"
  button-bulb:
    backgroundColor: "{colors.luz}"
    textColor: "{colors.tinta}"
    rounded: "{rounded.circle}"
    size: "40px"
  button-ghost:
    backgroundColor: "transparent"
    textColor: "{colors.tinta}"
    rounded: "{rounded.pill}"
    height: "56px"
  stage:
    backgroundColor: "{colors.cielo}"
    rounded: "{rounded.panel}"
  stage-night:
    backgroundColor: "#2A3350"
    rounded: "{rounded.panel}"
  scene-chip:
    backgroundColor: "{colors.papel}"
    textColor: "{colors.tinta}"
    rounded: "{rounded.pill}"
    height: "{spacing.tap}"
  scene-chip-active:
    backgroundColor: "{colors.tinta}"
    textColor: "{colors.papel}"
    rounded: "{rounded.pill}"
  device-marker:
    backgroundColor: "{colors.papel}"
    textColor: "{colors.tinta}"
    rounded: "{rounded.circle}"
    size: "30px"
  notification:
    backgroundColor: "{colors.papel}"
    textColor: "{colors.tinta}"
    rounded: "18px"
    padding: "10px 12px 12px"
  plan-pic:
    backgroundColor: "{colors.cal}"
    rounded: "{rounded.panel}"
  packs:
    backgroundColor: "{colors.noche}"
    textColor: "{colors.papel}"
    rounded: "{rounded.panel}"
  line-eco:
    backgroundColor: "{colors.papel}"
    textColor: "{colors.tinta}"
  line-cen:
    backgroundColor: "{colors.noche}"
    textColor: "{colors.papel}"
  input:
    backgroundColor: "{colors.papel}"
    textColor: "{colors.tinta}"
    rounded: "{rounded.field}"
    padding: "12px 14px"
    height: "52px"
---

# Design System: Nodo Domótica

## Overview

**Creative North Star: "La casa en miniatura"**

Nodo muestra lo que vende: la casa o el local del cliente, en corte isométrico, con cada equipo puesto donde va y funcionando. El visitante toca una situación ("Llego de noche", "Falla el frío") y ve la escena cambiar: anochece, se prenden luces, se abre el portón, un marcador se pone rojo y llega un aviso al celular. Todo el dibujo sale de un solo motor de proyección en SVG (`Iso`) dentro de la página, así que casa, local, planes y líneas comparten la misma geometría, el mismo contorno y la misma luz.

El fondo es muro de cal; la madera vive en los pisos; la noche es azul profundo y se usa para escenas nocturnas y bloques de peso (packs, línea con central local, contacto). El amarillo "luz encendida" es la única energía de la página. Rechaza el arreglo típico de domótica (titular, celular con la app y tarjetas sobre azul marino) y también la metáfora abstracta del diseño anterior.

**Key Characteristics:**
- Escena isométrica funcional como prueba principal, rotulada "Escena de ejemplo".
- Cada equipo es un marcador redondo con pictograma; su estado se lee por color.
- Amarillo solo para lo que está prendido o es la acción; verde solo para lo armado o seguro; rojo solo para alertas.
- Gabarito para todo lo que se rotula; Onest para todo lo que se lee.
- Formas blandas: pastillas para acciones, 28px en paneles, 20px en piezas chicas.

## Colors

### Primary
- **Luz Encendida** (`luz`): bombillas y halos encendidos, marcador "prendido", perilla del botón principal, selección de texto, situación activa, precios de packs sobre noche, foco sobre oscuro.

### Secondary
- **Noche** (`noche`) y **Noche 2** (`noche-2`): fondo de escenas nocturnas, packs, columna de la línea con central local, horario y contacto. **Tinta Nocturna** (`noche-tinta`) para el texto de apoyo encima.
- **Seguro** (`seguro`, texto `seguro-texto`): anillo de marcador armado y el check de "visita sin costo".
- **Alerta** (`alerta`, texto `alerta-texto`): marcador en alerta con halo pulsante, etiqueta de temperatura, título del aviso de alerta, error de formulario.

### Neutral
- **Cal** (`cal`) fondo general; **Cal 2** (`cal-2`) superficies secundarias y columna de rótulos; **Papel** (`papel`) superficies elevadas, campos, avisos; **Regla** (`regla`) separadores.
- **Tinta** (`tinta`) texto y botón principal; **Tinta 2** (`tinta-2`) bajadas y apoyo.
- **Madera** (`madera`) pisos de la escena y del logo; **Cielo** (`cielo`) fondo del escenario de día.

### Named Rules
**Un color, un significado.** Amarillo es "prendido", verde es "armado", rojo es "alerta", en la escena y fuera de ella. Ningún adorno usa esos tres.

**Las dos líneas no se pintan con colores de estado.** La económica es papel con tinta; la central local es noche con papel.

## Typography

**Display Font:** Gabarito (Segoe UI, system-ui)
**Body Font:** Onest (Segoe UI, system-ui)

### Hierarchy
- **Display** (900, clamp(2.5rem, 4.9vw, 4.1rem), 1.04): titular de portada, máximo 12ch.
- **Headline** (800, clamp(2rem, 4.2vw, 3.3rem)): títulos de sección.
- **Title** (800, 1.3rem): planes, oficios, preguntas (1.18rem).
- **Price** (900, 1.7rem, cifras tabulares): "Desde $209.990"; en packs 1.6rem en luz.
- **Button** (800, 1.08rem): botones y situaciones (.98rem).
- **Lede** (400, clamp(1.1rem, 1.5vw, 1.22rem)): bajadas, máximo 52ch.
- **Body** (400, 1.0625rem, 1.6).

**La regla del rótulo.** Botones, situaciones, precios, horas y títulos en Gabarito; texto corrido en Onest. Horas y precios con cifras tabulares.

## Layout

Contenedor de 1240px con margen clamp(16px, 4vw, 40px); secciones con clamp(72px, 10vw, 128px). Portada en dos columnas (5.2 / 6.8): texto arriba a la izquierda, escenario a la derecha con el celular sobresaliendo de su esquina inferior derecha; debajo, "Qué pasó" y las notas de cada línea en tres columnas.

Quiebres: 1360px (el celular sobresale 64px), 1100px (portada en una columna), 1020px (se oculta la navegación), 980px (planes de a dos), 760px (el celular pasa a ser una tarjeta de aviso bajo la escena, aparece la barra fija de WhatsApp, comparación de líneas en dos columnas con rótulos a todo el ancho), 620px (planes en una columna).

## Elevation & Depth

La profundidad la da el dibujo isométrico (tres caras con 0%, 10% y 20% de oscurecimiento, contorno tinta al 50%). En la interfaz, sombras suaves con desplazamiento solo en el botón principal, el selector Casa/Negocio y el celular. La noche se hace con `filter: brightness(.46) saturate(.7)` sobre la estructura; luces y marcadores quedan por encima, sin oscurecer.

## Shapes

Pastilla para acciones, situaciones, etiquetas y fichas; círculo para marcadores y bombillas; 28px para escenario, packs, comparación y formulario; 20–22px para piezas chicas; 14px para campos. Lo que aún no existe (el piloto) se dibuja con borde discontinuo.

## Components

### Escenario y escena
Panel de cielo (de noche #2A3350) con el selector Casa / Negocio, situaciones en pastillas y la escena SVG. Cambiar de situación aplica estados: luces (`data-light`), objetos que aparecen (`data-show`), portón que corre y marcadores (`idle`, `on`, `armed`, `off`, `alert`). Cada situación tiene enlace propio (`#casa-patio`, `#negocio-frio`).

### Marcador de equipo
Círculo de 15px de radio en papel con anillo tinta y pictograma de 18px. Prendido: relleno luz. Armado: anillo verde de 4px. Apagado: gris. Alerta: relleno rojo con halo que pulsa.

### Aviso en el celular
Celular tinta con pantalla noche, hora grande y una tarjeta papel con "Aviso · hora", pastilla "Ejemplo", título, texto y, si aplica, imagen de cámara o gráfico de consumo. En celular, solo la tarjeta.

### Botón principal
Pastilla tinta de 56px con perilla circular luz (40px) que lleva el ícono de WhatsApp. Sube 2px al pasar. Variante fantasma con contorno tinta de 2px.

### Planes
Ilustración isométrica sobre baldosa en panel cal, nombre, etiqueta "Casa o negocio", resultado, lista con viñetas de anillo y precio "Desde" separado por regla.

### Comparación de líneas
Tabla de tres columnas: rótulos en cal 2, línea económica en papel, línea con central local en noche. Cada columna lleva su casita isométrica.

## Do's and Don'ts

### Do:
- **Do** dibujar toda ilustración con el motor `Iso` y la misma paleta de materiales.
- **Do** rotular escenas y avisos como ejemplo mientras no haya instalaciones reales.
- **Do** decir en cada escena cómo funciona en la línea económica.
- **Do** mantener objetivos táctiles de 44px o más.

### Don't:
- **Don't** prometer una sola app ni funcionamiento sin internet para la línea económica.
- **Don't** usar amarillo, verde o rojo como decoración.
- **Don't** armar la portada como titular más celular con la app y tarjetas sobre azul marino.
- **Don't** inventar clientes, testimonios ni cifras de rendimiento.
