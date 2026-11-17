# Google Home vs Home Assistant (vs Tuya / eWeLink / Alexa) como hub central para un instalador domótico en Chile — estado a noviembre 2026

Contexto del encargo: instalador pequeño en Chile que vende cámaras, alarma Tuya/Smart Life (sirena + sensores RF433), dispositivos Sonoff/eWeLink (luces, enchufes, POW Ring, TH Elite), portón WiFi, y para locales comerciales alertas de temperatura de refrigeradores y monitoreo energético; quiere ofrecer soporte remoto mensual pagado.

Tipo de cambio de referencia usado para conversiones: ~CLP 980 por USD (dólar observado fijado en $990,35 el 26-oct-2026; cierre $978 el 6-nov-2026; $985 el 10-nov-2026) — [Emol 6-nov-2026](https://www.emol.com/noticias/Economia/2026/11/06/1216355/dolar-volatil-semanal-980.html); [Emol 10-nov-2026](https://www.emol.com/noticias/Economia/2026/11/10/1216673/dolar-se-dispara-inflacion-eeuu.html); [Emol 24-oct-2026](https://www.emol.com/noticias/Economia/2026/10/24/1215091/dolar-1000-peso-tipo-cambio.html). Las conversiones a CLP en este documento son aproximadas (redondeadas) y no incluyen IVA/importación salvo que se indique.

---

## Pregunta 1 — Google Home en 2026: integraciones, automatizaciones, notificaciones, cámaras, alarma, acceso de terceros, uso comercial, hardware/costos, Chile/español

### Takeaway
Google Home sigue siendo un "agregador cloud-to-cloud": Sonoff/eWeLink y Tuya/Smart Life se enlazan vía "Works with Google" y requieren internet en ambos extremos; las automatizaciones nuevas (editor de automatizaciones + Gemini) ya soportan sensores de temperatura/humedad/contacto como disparadores y "enviar notificación", pero no hay disparador por consumo eléctrico, no hay desarmado de alarma, la visualización en vivo de cámaras de terceros es parcial y por marca (Tuya no confirmado), y las funciones Gemini/Google Home Premium NO están disponibles en Chile (lista oficial de 20 países no incluye Chile; solo México en Latinoamérica). No requiere hardware Nest para funcionar como app, pero sin Nest Hub no hay pantalla/altavoz ni funciones Gemini; y Google tuvo una caída global de dispositivos "offline" en enero 2026.

### Cited Findings

**Integración Sonoff/eWeLink y Tuya en Google Home**
- Sonoff: la integración con Google Home corre a través de la nube eWeLink ("cloud-to-cloud"), también para modelos WiFi sin Matter; se configura en Google Home > "Works with Google" > "eWeLink Smart Home"; requiere conexión a internet tanto en Google Home como en los dispositivos Sonoff — [help.sonoff.tech – Works with Google](https://help.sonoff.tech/docs/works-with-google/पर)
- Los dispositivos de la cuenta eWeLink enlazada (incluidos los compartidos) se sincronizan automáticamente a Google Home; para interruptores multicanal (Dual, 4CH) hay que nombrar el canal en el comando de voz o se conmutan todos juntos — [Sonoff guía Works with Google Home](https://sonoff.tech/en-br/blogs/news/works-with-google-home-instruction-guide); [ewelink.cc – eWeLink work with Google Home](https://ewelink.cc/ewelink-work-with-google-home/)
- La guía de eWeLink lista inglés (US/UK) y alemán como idiomas de comando de voz soportados para la integración eWeLink↔Google (página de eWeLink, sin fecha 2026; puede estar desactualizada) — [ewelink.cc](https://ewelink.cc/ewelink-work-with-google-home/)
- Sonoff/eWeLink: a partir de 2026 los sensores de potencia/corriente/voltaje de la mayoría de dispositivos POW ya no se actualizan por la nube para integraciones de terceros porque esas llamadas cargaban la nube eWeLink y fueron bloqueadas (afecta integraciones cloud, no se indica que afecte al propio Google Home, pero muestra que eWeLink restringe datos de energía vía cloud) — [AlexxIT/SonoffLAN README](https://github.com/alexxit/sonofflan); [Private Home Lab, 8-oct-2026](https://privatehomelab.com/?p=5754)
- Tuya/Smart Life en Google Home: existe el enlace cloud "Smart Life"/"Tuya Smart" en Works with Google (ampliamente usado); para cámaras Tuya en Google Home, el único reporte es de abril 2023 (Tuya aparecía "para algunos usuarios", sin documentación oficial de Google); hilo de HA sin respuesta sobre "no puedo añadir cámara Smart Life a Google Home" — [9to5Google abr-2023](https://9to5google.com/2023/04/06/google-home-cameras-new-brands/); [community.home-assistant.io](https://community.home-assistant.io/t/can-t-add-smart-life-camera-to-google-home/445514)

**Automatizaciones (editor "Household routines"/Automations + Gemini "Help me create" / "Ask Home")**
- Lista oficial de disparadores/condiciones/acciones soportados (página de soporte Google, actualizada 2026): disparador "Temperature sensor" (cambios o nivel fijado; solo starter), "Thermostat local temperature" (desde 10-sep-2025), "Humidity" (nivel, desde 2-feb-2026), "Binary state" (sensores de contacto, fuga de agua), "Occupancy", "Door open/close", "Smoke", "CO", "Battery status", "Device on/off" (desde 3-dic-2024), "Plugged in"/"Dock connected" (2-mar-2026), "Smart switch press patterns" (22-ene-2026), "Security system armed" (starter), presencia, horarios, "Hey Google" — [Google Support: Supported automation starters, conditions & actions](https://support.google.com/googlehome/answer/15684394?hl=en)
- Acciones oficiales: "Send a notification" (a ti y a otros miembros del hogar, desde 3-dic-2024), "Broadcast a message" por altavoces, encender/apagar dispositivos, "Arm a security system" (NO aparece desarmar), bloquear cerradura (no desbloquear), termostato, cortinas, delay — [misma página](https://support.google.com/googlehome/answer/15684394?hl=en)
- Consumo de energía/potencia como disparador: NO aparece en la lista oficial de starters — [misma página](https://support.google.com/googlehome/answer/15684394?hl=en). Google Home muestra datos de energía (mW, kWh) de enchufes Matter compatibles en el tile, pero no se encontró evidencia de que un umbral de potencia pueda disparar una rutina — [Analytics Insight](https://www.analyticsinsight.net/news/google-home-update-adds-matter-controls-and-energy-monitoring); [MatterAlpha – energy monitoring](https://www.matteralpha.com/explainer/matter-smart-plug-energy-monitoring)
- Eventos de cámara como disparador (movimiento, persona, paquete, vehículo, rostro) son solo para cámaras Nest; "familiar face" requiere Google Home Premium — [misma página de soporte](https://support.google.com/googlehome/answer/15684394?hl=en)
- "Help me create" (Gemini crea la automatización en lenguaje natural) requiere Google Home Premium y solo admins mayores de edad; muchas funciones nuevas no están soportadas en "Ask Home" ni "Help me create", solo en el editor estándar — [misma página](https://support.google.com/googlehome/answer/15684394?hl=en)
- Reportes de usuarios: el starter de temperatura Nest no funciona en algunos casos; un sensor Aqara ofrecía starter de humedad pero no de temperatura — [Google Nest Community](https://www.googlenestcommunity.com/t5/Home-Automation/Temperature-Sensor-that-works-as-starter-for-Automation/m-p/653900); [Google Nest Community – Aqara](https://www.googlenestcommunity.com/t5/Home-Automation/No-starter-for-temperature-Aqara-T-amp-H/m-p/485790)
- Las automatizaciones no pueden desarmar sistemas de seguridad; sí armar — [GadgetHacks 2026](https://android.gadgethacks.com/news/google-home-unlocks-20-new-automations-in-2026-update/)
- "What's new in Google Home" 2026 (oficial): starters de sistema de seguridad armado / enchufado / dock (2-mar-2026); alertas de salud de termostato (23-jun-2026); no menciona starters de energía ni umbrales de temperatura nuevos — [Google Support – What's new](https://support.google.com/googlehome/answer/15962877?hl=en)

**Cámaras de terceros en Google Home**
- 5-ago-2026: Google añadió soporte (Gemini/live view) para cámaras de Eufy, Tapo, Wyze, Reolink y Nanit; 23-jul-2026 cámaras Walmart onn — [Google Support – What's new](https://support.google.com/googlehome/answer/15962877?hl=en); [9to5Google ago-2026](https://9to5google.com/2026/08/06/google-home-third-party-cameras-update/)
- Documentación de Google: el acceso a live stream para cámaras "Works with Google" sigue "en desarrollo" y no está disponible para todas las marcas — [Android Authority – Tapo live feed](https://www.androidauthority.com/google-home-tp-link-tapo-camera-live-feed-working-3694233/)
- Para muchas cámaras de terceros no se puede ver el live feed en la app Google Home; hay que usar la app del fabricante o un Nest Hub por voz — [Gear Patrol](https://www.gearpatrol.com/tech/g39107683/best-camera-for-google-smart-home/)

**Acceso de terceros (instalador) / roles**
- Google Home tiene roles Admin y Member; Admin: añadir/quitar personas, dispositivos, enlazar servicios partner y suscripciones; Member: control básico, con permisos opcionales "Activity" y "Settings" (gestión completa de dispositivos y automatizaciones) — [Google Support – Manage people and permissions](https://support.google.com/googlehome/answer/9155535?hl=en); [9to5Google dic-2024](https://9to5google.com/2024/12/16/google-home-member-access/)
- No existe un portal de "dealer/instalador" multi-cliente en Google Home: el acceso remoto del instalador se logra únicamente siendo invitado como Member/Admin en cada hogar del cliente — inferencia a partir de la página de permisos (no se encontró ningún programa de instaladores de Google; el artículo patrocinado de SSI sobre "Google Home Premium para instaladores" devolvió 403) — [Security Sales & Integration (403)](https://www.securitysales.com/sponsored/google-home-premium-with-gemini-helping-you-bring-more-value-to-every-install/615943/)
- Gemini for Home: cuentas Enterprise (Google Workspace) y Family Link no soportadas (27-may-2026) — [Google Support – What's new](https://support.google.com/googlehome/answer/15962877?hl=en)

**Gemini for Home y disponibilidad en Chile / español**
- Países con early access (lista oficial, 20): Australia, Austria, Bélgica, Canadá, Dinamarca, Finlandia, Francia, Alemania, Irlanda, Italia, Japón, México, Países Bajos, Nueva Zelanda, Noruega, España, Suecia, Suiza, Reino Unido, EE.UU. Chile NO está. Idiomas: danés, holandés, inglés, francés, alemán, italiano, japonés, noruego, español, sueco. "Otros países tendrán acceso con el tiempo". Una vez que un hogar cambia a Gemini no puede volver a Assistant — [Google Support – Learn about Gemini for Home](https://support.google.com/googlehome/answer/16618650?hl=en)
- Español llegó el 31-mar-2026 con el lanzamiento en México (app 4.12+) — [9to5Google 31-mar-2026](https://9to5google.com/2026/03/31/google-homes-latest-updates-include-gemini-in-spanish-improved-smart-home-controls/); [Thurrott](https://www.thurrott.com/a-i/334400/google-gemini-for-home-adds-spanish-support-and-launches-in-mexico)
- Dispositivos con Gemini completo: Google Home Speaker (2026), Nest Hub 2ª gen, Nest Audio, Nest Mini 2ª gen, Nest Hub Max, Nest Hub 1ª gen, Home Mini 1ª gen. Sin suscripción: control smart home, media, alarmas, listas, preguntas generales; Gemini Live requiere Google Home Premium; búsqueda en historial de cámaras y Home Brief requieren plan Advanced — [Google Support – Gemini for Home](https://support.google.com/googlehome/answer/16618650?hl=en)
- Google Assistant en Android/Wear OS se reemplaza por Gemini desde 4-sep-2026; altavoces/pantallas Google Home van en otra vía (Gemini aún en despliegue); reportes de rutinas que dejaron de dispararse y comandos básicos fallando en la transición — [TechRepublic](https://www.techrepublic.com/article/news-google-assistant-shutdown-android-gemini/); [The Decoder](https://the-decoder.com/google-will-shut-down-google-assistant-starting-september-2026-as-gemini-takes-over-on-android-and-wear-os/)

**Google Home Premium (ex Nest Aware) – precio y disponibilidad**
- Nest Aware pasó a llamarse Google Home Premium con planes Standard y Advanced — [Google Store](https://store.google.com/magazine/nest-aware-now-google-home-premium)
- Precio EE.UU.: Standard US$10/mes o US$100/año; Advanced US$20/mes o US$200/año (subida en agosto 2025 desde $8/$15) — [TechRadar](https://www.techradar.com/home/smart-home/google-home-premium-is-here-to-replace-nest-aware-heres-how-much-it-costs-and-who-gets-it); [Android Authority](https://www.androidauthority.com/google-one-home-pricing-change-3604121); zona euro €10/€100 y €18/€180 — [Google Store IE](https://store.google.com/ie/product/nest_aware?hl=en-GB)
- Google Home Premium solo sirve para cámaras Nest (historial de video, rostros, Gemini de cámara); AI camera features de Advanced solo EE.UU./inglés — [9to5Google roundup](https://9to5google.com/?p=691220)
- Lista de países de Nest Aware (era pre-rebrand, 19 mercados): EE.UU., Australia, Austria, Bélgica, Canadá, Dinamarca, Finlandia, Francia, Alemania, Irlanda, Italia, México, Países Bajos, NZ, Noruega, España, Suecia, Suiza, UK — Chile no aparece — [Neowin](https://www.neowin.net/news/googles-simplified-nest-aware-subscription-is-now-available-in-19-markets/); regla oficial: el hogar debe estar en un país que soporte Google Home Premium — [Google Support](https://support.google.com/googlenest/answer/13315909)
- No existe Google Store para Chile en los resultados; ninguna fuente confirma precio/disponibilidad de Google Home Premium en CLP — búsqueda sin resultados Chile — [TechRadar MX](https://global.techradar.com/es-mx/home/smart-home/google-home-premium-llega-para-sustituir-a-nest-aware-aqui-te-contamos-cuanto-cuesta-y-quien-puede-adquirirlo)

**Hardware Google en Chile**
- Nest Hub 2ª gen en Falabella Chile (vendedor tercero Next Core): $164.990 con 39% dcto. sobre $269.990 (oferta sin fecha) — [Falabella – Nest Hub 2nd gen](https://www.falabella.com/falabella-cl/product/154200391/google-nest-hub-2nd-gen-negro)

**Fiabilidad**
- 22-ene-2026: caída de Google Home: luces, grupos, enchufes e interruptores aparecían "offline" en la app; reiniciar/re-añadir no lo arreglaba; Google reconoció el problema — [Geo.tv](https://www.geo.tv/latest/646584-google-home-outage-heres-why-your-lights-switches-and-outlets-are-appearing-offline); [Android Magazine 22-ene-2026](https://androidmagazine.eu/en/2026/01/22/google-home-uz-zase-nastval-uzivatele-nefunguji-automatizace-svetla-a-zasuvky-jsou-offline/); [Android Authority – outage over](https://androidauthority.com/google-home-outage-over-3700044)
- Un 15 de mayo (año no indicado en el snippet) hubo fallas intermitentes en app Nest, cámaras y termostatos mientras el status page oficial decía "operational" — [IBTimes AU](https://ibtimes.com.au/google-nest-outage-users-frustrated-1868889)

### Inferences
- Para este instalador, Google Home sería solo una "capa de voz/visualización" encima de eWeLink y Smart Life: cada dispositivo sigue dependiendo de su propia nube china + la nube de Google; una caída en cualquiera de las tres rompe automatizaciones y notificaciones.
- Alertas de temperatura de refrigeradores: factible en Google Home solo si el TH Elite se expone como "temperature sensor" vía eWeLink cloud (no verificado; usuarios reportan sensores sin starter de temperatura). Alertas por consumo (POW Ring) NO son posibles como disparador en Google Home.
- Cámaras Tuya: no hay live view confirmado en Google Home en 2026; el cliente seguirá usando Smart Life. Alarma Tuya: Google solo puede "armar", no desarmar.
- Gemini, "Help me create" y Google Home Premium no aplican a clientes chilenos hoy (país no soportado); lo que queda en Chile es el editor de automatizaciones clásico + Assistant/Gemini básico en español vía cuenta chilena (sin confirmar fecha de llegada de Gemini a Chile).
- No hay forma de que el instalador cobre por algo "real" sobre Google Home: no hay portal multi-cliente, no hay suscripción revendible, y el acceso remoto es solo ser "Member" en cada hogar.

### Gaps
- No se encontró confirmación de que un TH Elite/POW Ring expuesto por eWeLink aparezca en Google Home como "temperature sensor" con disparador de umbral; verificar en app.
- No se pudo abrir el artículo patrocinado de Security Sales & Integration sobre Google Home Premium para instaladores (HTTP 403); no se encontró ningún programa "Google Home Pro/dealer".
- Precio oficial de Nest Hub/Google Home Speaker (2026) en Chile y fecha de llegada de Gemini for Home a Chile: no encontrado.
- No se encontró lista oficial 2026 de países de Google Home Premium (solo la lista pre-rebrand de 19 mercados).

---

## Pregunta 2 — Home Assistant en 2026: hardware, Nabu Casa/Link, control local, integraciones (eWeLink, Tuya, RF433, cámaras), notificaciones, gestión remota multi-cliente, programas profesionales

### Takeaway
Home Assistant es la única opción que integra localmente Sonoff (SonoffLAN/add-on oficial), Tuya (cloud oficial o LocalTuya), RF433 (RF Bridge R2 vía SonoffLAN o Zigbee) y cámaras RTSP/Frigate en un solo panel con alertas por umbral de temperatura/energía y notificaciones push/Telegram gratuitas; el costo subió (Green US$199/€179 desde abr-2026; RPi 5 8GB en Chile CLP 309k–347k) y Home Assistant Cloud se renombra "Home Assistant Link" (US$6,50/mes o US$65/año, pago en USD por tarjeta, sin restricción de país indicada). No existe programa oficial de instaladores de Nabu Casa/Open Home Foundation; lo más cercano es Selora Homes (tercero, EE.UU., fleet dashboard + acceso remoto por sesión) y la práctica de integradores en foros (Nabu Casa por cliente o VPN/Tailscale; contratos claros; actualizaciones planificadas).

### Cited Findings

**Hardware y precios**
- Home Assistant Green: precio sugerido subió a US$199 / €179 (actualización 24-abr-2026 del anuncio del 8-ene-2026); causa: costo de componentes casi duplicado, principalmente RAM; Nabu Casa dice que hizo cambios para evitar otra subida pronto — [Nabu Casa – Green pricing change](https://www.nabucasa.com/news/2026-01-08-green-pricing-change/); [MatterAlpha](https://www.matteralpha.com/news/home-assistant-green-price-hiked-here-s-why)
- Green pasó de US$99 (lanzamiento 2023) a US$199/€179; sin sucesor anunciado a julio 2026; Amazon US lo lista a US$219 (oct-2026) — [raspberry.tips 2026](https://raspberry.tips/en/raspberrypi-tutorials/home-assistant-hardware-comparison-2026-green-blue-yellow-vs-raspberry-pi); [bitdoze (es) oct-2026](https://www.bitdoze.com/es/mejor-hardware-home-assistant/)
- Home Assistant Yellow: descontinuado (2022–2025); Nabu Casa recomienda Green como sucesor; listados agotados (US$134,95 Ameridroid) — [raspberry.tips Green vs Yellow](https://raspberry.tips/en/raspberrypi-tutorials/home-assistant-green-vs-yellow-comparison); [joinhomeshift – Yellow](https://joinhomeshift.com/home-assistant-yellow/)
- Home Assistant Connect ZBT-2 (Zigbee/Thread USB): MSRP US$49 / €45 — [The Pi Hut](https://thepihut.com/products/home-assistant-connect-zbt-2); [Ameridroid](https://ameridroid.com/collections/nabu-casa)
- Raspberry Pi 5 8GB en Chile (Falabella): placa sola $308.990 (MCI Electronics); kit con memoria y fuente $332.990; kit con accesorios originales $346.990; otro vendedor $340.546 — [Falabella búsqueda Raspberry Pi 5](https://www.falabella.com/falabella-cl/search?Ntt=Raspberry+Pi+5); [Paris.cl RPi5 8GB](https://www.paris.cl/raspberry-pi-5-de-8gb-ram-MK07752SX8.html)
- No se encontró ningún retailer chileno (Falabella, MCI, Altronics, Mercado Libre Chile) que venda Home Assistant Green; solo tiendas internacionales (Ameridroid US, Pimoroni EU €156,95 agotado, Core Electronics AU$269,95) — [Ameridroid](https://ameridroid.com/collections/home-automation/products/home-assistant-green); [Pimoroni](https://shop.pimoroni.com/en-eu/products/home-assistant-green)
- Nabu Casa sugiere que hardware existente más barato también puede correr HA (mini PC, etc.) — [Nabu Casa – Green pricing change](https://www.nabucasa.com/news/2026-01-08-green-pricing-change/); guías 2026 comparan Green vs mini PC vs RPi 5 — [bitdoze 2026](https://www.bitdoze.com/best-home-assistant-hardware/)

**Home Assistant Cloud → "Home Assistant Link" (Nabu Casa)**
- Precio: US$6,50/mes o US$65/año ("un año por el precio de 10 meses"), impuestos no incluidos; selector de moneda USD/CAD/EUR/GBP; prueba 31 días sin tarjeta; incluye acceso remoto, backups offsite, Alexa/Google Assistant, STT/TTS, mejor streaming de video/audio, soporte; sin restricción de país mencionada — [Nabu Casa pricing](https://www.nabucasa.com/pricing/)
- La página de Nabu Casa ya lo nombra "Home Assistant Link (formerly called Cloud)" aunque otro texto dice "soon to be renamed Link" (renombrado en curso en 2026) — [nabucasa.com](https://www.nabucasa.com/)
- Un suscripción Nabu Casa = una instancia; existe petición abierta (WTH) de múltiples HA en una sola suscripción y de un programa de reseller para instaladores; un instalador señala que backups compartidos en una sola cuenta mezclarían datos de clientes distintos — [HA Community – WTH multiple HAs on one Nabu Casa](https://community.home-assistant.io/t/wth-cant-i-have-multiple-has-on-a-single-nabu-casa/220121); [HA Community – WTH remote access](https://community.home-assistant.io/t/wth-remote-access-cloud/817168)
- LWN describe Nabu Casa como US$65/año por acceso remoto a sistemas tras firewall — [LWN](https://lwn.net/SubscriberLink/1017720/7155ecb9602e9ef2/)

**Control local / integraciones**
- SonoffLAN (AlexxIT, comunitario, no oficial): controla dispositivos con firmware eWeLink por LAN y/o cloud; modo "auto" usa ambos; en modo local la cuenta eWeLink solo se necesita para obtener las claves; soporta sensores RF del RF Bridge 433 (recibir/enviar comandos); desde 2026 los sensores de potencia/voltaje por cloud dejaron de actualizar (bloqueo de eWeLink) y SonoffLAN v3.11.0 (19-mar-2026) añadió un workaround — [GitHub AlexxIT/SonoffLAN](https://github.com/alexxit/sonofflan); [forum.ewelink.cc – SonoffLAN no oficial](https://forum.ewelink.cc/t/sonofflan-home-assistant/207886)
- Add-on oficial "eWeLink Smart Home" para HA: requiere login eWeLink + token de HA; cae a la nube para dispositivos que no alcanza por LAN — [Private Home Lab oct-2026](https://privatehomelab.com/?p=5754); guía oficial Sonoff para HA (Zigbee dongle, Matter Bridge, MQTT, add-on) — [Sonoff – integration complete guide](https://sonoff.tech/en-uk/blogs/news/sonoff-device-integration-with-home-assistant-complete-guide)
- RF Bridge R2 + SonoffLAN en HA para alarma 433 MHz (ej. Kerui D025 + Alarmo): funciona en local, pero un usuario reporta que si el bridge pierde internet dejan de llegar los estados (timestamp faltante); los sensores se "aprenden" primero en la app eWeLink — [HA Community – 433MHz alarm system Sonoff RF Bridge](https://community.home-assistant.io/t/433mhz-alarm-system-sonoff-rf-bridge-kerui-d025-alarmo/764231)
- Alternativa 100% local: flashear RF Bridge con ESPHome (solo hardware negro R1/R2 v1.0; la versión blanca R2 v2.0 usa otro microcontrolador) o Tasmota (RF→MQTT) — [ESPHome RF Bridge](https://esphome.io/components/rf_bridge/); [rogerfrost.com](https://www.rogerfrost.com/?p=5255)
- Tuya en HA: integración oficial (cloud) sin live stream de cámaras — [HA Community – Tuya no live stream](https://community.home-assistant.io/t/tuya-integration-no-live-stream-for-cameras-via-official-integration/357350); LocalTuya puede dar PTZ pero muchas cámaras solo entregan snapshots sin RTSP/ONVIF; algunas tienen interruptor "Local RTSP" pero la URL se genera vía API con expiración; proyectos tuya-camera-ha-frigate y go2rtc para traer streams a Frigate — [HA Community – PTZ localtuya](https://community.home-assistant.io/t/adding-ptz-control-to-tuya-cameras-with-localtuya/546134); [GitHub tuya-camera-ha-frigate](https://github.com/roshanabady/tuya-camera-ha-frigate)
- Riesgo Tuya cloud para integradores: Tuya revocó el acceso API a Homey (antes de feb-2025) "incumpliendo el acuerdo"; la alternativa TUYA CUBE API requiere licencia paga; Homey retiró su app oficial en feb-2025 y lanzó otra con autenticación distinta en dic-2025, advirtiendo que sigue dependiendo de las políticas de Tuya — [Homey – Official support for Tuya](https://homey.app/en-pt/news/official-support-for-tuya)
- Tuya SLA: 99,9%, "99,99% en 2024" (autoinforme) — [support.tuya.com](https://support.tuya.com/en/help/_detail/K8sdy0v2mi6nf); hilos de HA con caídas/"Tuya down" — [HA Community – Is Tuya/Smartlife down?](https://community.home-assistant.io/t/is-tuya-smartlife-down/740737)
- Cámaras locales: Sonoff iHost permite Home Assistant "over iHost" y actúa de Matter bridge para exponer dispositivos HA a Google/Alexa/Apple — [Sonoff – Matter bridge for HA over iHost](https://sonoff.tech/en-us/blogs/news/matter-bridge-for-ha-over-ihost-connect-home-assistant-devices-to-matter-compatible-platform)

**Gestión remota multi-cliente y programas profesionales**
- Integradores en foro HA (nov-2024 / nov-2025): Nabu Casa recomendado cuando el cliente usa app/web; VPN punto a punto "lo correcto"; un instalador (LarsenTech, nov-2025) usa DDNS+puerto para diagnóstico, add-on de Ubiquiti, hardware local para que funcione sin internet, integraciones básicas y contratos que definen qué se instala y que modificaciones no autorizadas anulan garantía; advertencias: disponibilidad 24/7, preguntas no pagadas, clientes que cambian cosas — [HA Community – Best practices for managing HA for clients remotely](https://community.home-assistant.io/t/best-practices-for-managing-home-assistant-for-clients-remotely/801080)
- Hilo dic-2025 "¿Alguien vive de gestionar instalaciones HA?": casos Luxeia (UK), startup en Singapur, integrador con 30 años (AMX/Crestron→HA) que ofrece monitoreo; modelo = hardware + instalación + consultoría; "espera llamadas a las 3 am cuando una actualización rompa todo"; estrategia estable: "HA se reinicia una vez al año en la actualización planificada"; especificaciones escritas claras — [HA Community – Does anyone make a living…](https://community.home-assistant.io/t/does-anyone-make-a-living-out-of-managing-home-assistant-smart-home-installs/963359)
- Opinión en foro: "el único modelo que tiene sentido es una suscripción: cuota mensual fija por actualizaciones y cambios menores"; los clientes que tocan el firewall desactivan el acceso externo — [HA Community – Another topic on commercial applications](https://community.home-assistant.io/t/another-topic-on-commercial-applications-with-home-installations-rough-how-to/293211/23); [HA Community – Managed HA installations](https://community.home-assistant.io/t/managed-ha-installations/331055)
- Reddit r/homeassistant: "Nabu y Tailscale son las dos opciones sólidas" para acceso remoto — [r/homeassistant (mirror)](https://reddit.rtrace.io/r/homeassistant/comments/1csx5p1/is_it_worth_migrating_to_nabu_casa_from_duckdns/); Tailscale publicó guía para acceso remoto a HA (16-jul-2026) — [Tailscale blog](https://www.tailscale.com/blog/remotely-access-home-assistant)
- Tailscale: plan Personal gratuito solo para uso no comercial (6 usuarios); plan Standard US$8/usuario/mes (añadido nov-2026 según agregador; Personal Plus y Starter eliminados); fuentes secundarias, verificar en tailscale.com/pricing — [Activepieces – Tailscale pricing 2026](https://www.activepieces.com/blog/tailscale-pricing-plans-costs-and-features-2026); [Costbench free plan](https://www.costbench.com/software/business-vpn/tailscale/free-plan/)
- No existe programa oficial de instaladores de Home Assistant/Nabu Casa; "Works with Home Assistant" es certificación de dispositivos, no de instaladores — [works-with.home-assistant.io](https://works-with.home-assistant.io/); [HA blog WWHA 2025 recap](https://www.home-assistant.io/blog/2025/12/09/wwha-2025-recap/)
- Selora Homes (tercero, lanzado oct-2025, SF/LA, "no afiliado a Home Assistant"): plataforma HA gestionada para instaladores; tres tracks (Integrator: revenue share de suscripciones; Specialist: suscripción con descuento; Fulfillment); acceso remoto "Selora Connect" con aprobación del dueño por sesión (15 min–72 h), fleet dashboard de salud de hubs, backups automáticos y actualizaciones gestionadas; sin precios publicados en la página — [Selora – for installers](https://selorahomes.com/for-installers); [Selora partner program](https://selorahomes.com/docs/installer/partner-program/); [Open Core Ventures oct-2025](https://www.opencoreventures.com/blog/selora-homes-launches-to-bridge-smart-home-reliability-gap)

**Notificaciones**
- Nabu Casa/Link incluye push vía Companion app sin configuración; acción oficial "Send a notification" en Google es equivalente; HA permite Telegram/WhatsApp vía integraciones (conocimiento general, no se buscó fuente específica → ver Gaps)

### Inferences
- En Chile, el RPi 5 8GB (CLP 309k–347k en retail) cuesta MÁS que el Green importado (US$199 ≈ CLP 195k + envío/impuestos ≈ CLP 240–280k estimados); un RPi 5 4GB o un mini PC usado puede bajar el costo, pero el Green "llave en mano" reduce horas de instalación.
- Nabu Casa/Link se factura en USD por tarjeta (Stripe) sin lista de países excluidos: desde Chile es pagable con tarjeta internacional (sujeto a IVA a servicios digitales 19% que Chile aplica a plataformas extranjeras — no verificado para Nabu Casa).
- El instalador puede pagar una suscripción Link por cliente (US$65/año) y revenderla dentro de la cuota mensual; con más de ~5 clientes, Tailscale Standard (US$8/usuario/mes para el instalador, un solo usuario) o un túnel propio sale más barato para el acceso del instalador, pero el cliente final pierde push/backup offsite/Google-Alexa que Link incluye.
- HA es la única vía para alertas por umbral de temperatura de refrigerador (TH Elite vía LAN) y por consumo (POW Ring), con historial local y notificación gratuita; en eWeLink/Google estas alertas dependen de la nube eWeLink, que en 2026 restringió los datos de energía a terceros.
- Alarma RF433: la ruta más robusta en HA es RF Bridge R2 reflasheado (ESPHome/Tasmota, solo versiones compatibles) o migrar sensores a Zigbee (ZBT-2 + sensores SNZB); la ruta SonoffLAN funciona pero puede depender de internet para los estados.

### Gaps
- No se encontró documentación oficial de Nabu Casa sobre disponibilidad/facturación específica en Chile ni sobre IVA chileno.
- No se encontró un precio chileno (CLP) para Home Assistant Green ni distribuidor local; habrá que importar (Ameridroid/Amazon) — costo de envío/aduana no investigado.
- No se verificó la compatibilidad "LAN pura" del POW Ring (POWCT) y TH Elite con SonoffLAN en 2026 (el README habla de "la mayoría de dispositivos POW").
- No se buscaron fuentes específicas sobre las integraciones Telegram/WhatsApp de HA ni sobre Frigate en RPi 5 (requisitos de aceleración Hailo/Coral).
- No se encontraron hilos de Reddit 2025–2026 dedicados al modelo de negocio de instaladores HA (los resultados fueron foros oficiales de HA).

---

## Pregunta 3 — Alternativas de "una sola app": Tuya/Smart Life, eWeLink-only (Advanced/Prime, CAST, iHost, NSPanel Pro), Alexa, SmartThings, hubs Matter

### Takeaway
La opción de "una app" más barata es seguir con dos apps nativas (Smart Life gratis para cámaras/alarma; eWeLink gratis o Advanced US$9,9/año para Sonoff) y, si se quiere unificar, el ecosistema eWeLink con iHost (~€104–130) como hub local + CAST/Web; Tuya cubre cámaras, alarma, enchufes y sensores en una sola app pero sus notificaciones por SMS/llamada son de pago por crédito. Alexa+ y Gemini no están en Chile (Alexa+ solo México/España/EE.UU. en 2026); SmartThings y hubs Matter no aportan nada a dispositivos WiFi Tuya/eWeLink sin Matter.

### Cited Findings
- eWeLink planes (8-oct-2026): Basic gratis; Advanced US$9,9/año o US$1,9/mes (App Store US$9,99/año); Prime US$19,9/año (anunciado 12-nov-2025: Wear OS, servidor MCP, Floor Plan, cupones Sonoff). Advanced incluye CarPlay/Android Auto, eWeLink Web, CAST, IFTTT, webhooks, funciones de cámara; límites Advanced: 5 dispositivos virtuales, 10 plugins termostato, 100 comparticiones por dispositivo; Prime: 10 / 15 / 200. LAN mode listado como función base. "Gratis no es lo mismo que local" — [Private Home Lab – eWeLink Subscription Plans](https://privatehomelab.com/?p=5754); [eWeLink v5.22](https://ewelink.cc/v5-22-raises-the-limits-more-virtual-devices-more-thermostat-plugins-easier-sharing/)
- Tabla eWeLink: número de escenas 300 (Free) vs 1000 (Advanced); compartir dispositivo 20 (Free) vs 100 (Advanced) — [eWeLink – Exploring Advanced Plan PDF (may-2024)](https://ewelink.cc/wp-content/uploads/2024/05/Your-complete-walkthrough-Exploring-Advanced-Plan.pdf); [App Store IE: €9,99/año o €1,99/mes](https://apps.apple.com/ie/app/ewelink/id1035163158)
- Hilo en foro eWeLink "Advanced plan: ¿booster o bummer?" (quejas de usuarios por funciones movidas a pago) — [forum.ewelink.cc](https://forum.ewelink.cc/t/ewelink-advanced-plan-a-booster-or-bummer/26136)
- Sonoff iHost: "servidor local privado" para smart home; precio tienda Sonoff EU desde €103,60 (venta aniversario 2026); reseller Líbano US$130 — [Sonoff anniversary sale 2026](https://sonoff.tech/en-it/pages/anniversary-sale-2026); [help.sonoff.tech iHost](https://help.sonoff.tech/docs/ihost/पर); iHost puede correr Home Assistant ("HA over iHost") y hacer de Matter bridge — [Sonoff – HA over iHost guide](https://sonoff.tech/en-us/blogs/news/home-assistant-over-ihost-one-stop-setup-guide)
- NSPanel Pro (120): €112,10 oferta / €132,50 regular en tienda Sonoff; Gen2 con relés es producto aparte (2026); una reseña dice que el Matter bridge iHost↔NSPanel Pro no funciona — [MatterAlpha NSPanel Pro Gen2](https://www.matteralpha.com/sonoff/nspanel-pro-gen2-p4528); [forum.ewelink.cc – NSPanel Pro Gen2](https://forum.ewelink.cc/t/your-smart-control-panel-finally-has-relays-sonoff-nspanel-pro-gen2-is-here/208270)
- RF Bridge R2: precios de reseller inconsistentes (US$43,95 Fruugo; €13,99 listado letón posiblemente versión anterior) — [Fruugo](https://www.fruugo.ca/sonoff-rf-bridger2-433mhz-smart-hub-wifi-home-security-control-device/p-339928657); [aio.lv](https://aio.lv/en/product--sonoff-rf-bridger2--10445292.md)
- Tuya/Smart Life: límites oficiales (FAQ actualizado ene-2025): 100 automatizaciones por hogar, 150 acciones por escena, límites interrelacionados — [support.tuya.com FAQ](https://support.tuya.com/en/help/_detail/K9q79msw3accz); app gratuita con compras in-app (almacenamiento cloud de cámara, planes Basic/Premium) — [App Store Tuya Smart](https://apps.apple.com/us/app/1034649547)
- Smart Life notificaciones por llamada/SMS: servicio de valor agregado de pago por crédito; cada llamada o SMS descuenta un crédito, incluso si no se contesta; también hay paquete de notificación por WhatsApp — [support.tuya.com – phone/SMS notification count](https://support.tuya.com/en/help/_detail/K9huthw84csog); [support.tuya.com – how to use](https://support.tuya.com/en/help/_detail/Kf7wcna2b9dn0)
- Sonoff en Chile (Falabella, MCI Electronics / blu store): TH Elite 20A $24.990; POW Elite 16A $21.990; POW Elite 20A $24.990 (tachado $32.990); no se encontró distribuidor oficial Sonoff en Chile — [Falabella marca Sonoff](https://www.falabella.com/falabella-cl/brand/SONOFF); [Falabella POW Elite 16A](https://www.falabella.com/falabella-cl/product/154975240/interruptor-wifi-smart-sonoff-pow-elite-16a/154975241)
- Alexa+: México desde ene-2026 (primer país hispanohablante), España early access desde 23-abr-2026 (gratis con Prime; €22,99/mes sin Prime); nada sobre Chile — [wwwhatsnew abr-2026](https://wwwhatsnew.com/2026/04/24/alexa-plus-espana-lanzamiento-precio-prime-abril-2026/); [Xataka](https://www.xataka.com/seleccion/amazon-ha-lanzado-alexa-espana-cinco-dispositivos-que-usarla-gratis-eres-cliente-prime)
- Matter energía: solo enchufes Matter 1.3+ específicos (Eve Energy, Tapo P110M) exponen consumo; "un enchufe etiquetado Matter con energy monitoring puede no reportar energía por Matter" — [MatterAlpha](https://www.matteralpha.com/explainer/your-matter-device-might-be-lying-about-what-it-can-do)

### Inferences
- Para el catálogo actual del instalador (todo WiFi Tuya/eWeLink, sin Matter), ningún hub Matter/SmartThings añade valor: los dispositivos solo se exponen vía cloud-to-cloud.
- "Una app" realista y barata: Smart Life (cámaras + alarma + sensores) y eWeLink (Sonoff) por separado, con eWeLink Advanced (US$9,9/año ≈ CLP 9.700) solo si el cliente quiere Web/CAST; costo marginal casi nulo pero sin alertas robustas por umbral de energía (bloqueo 2026 a terceros) ni control sin internet.
- iHost (~US$110–130 ≈ CLP 110–130k) da escenas locales y además puede correr HA, pero su ecosistema local cubre principalmente Zigbee y dispositivos eWeLink LAN; las cámaras Tuya y sensores RF433 siguen fuera.

### Gaps
- No se pudo abrir la página oficial de planes eWeLink (ewelink.cc/advanced-plan no muestra precios); los precios provienen de App Store y un blog de oct-2026.
- No se confirmó si iHost soporta RF Bridge R2 / sensores RF433 en escenas locales.
- No se encontró precio de créditos SMS/llamada de Smart Life en Chile ni disponibilidad de Alexa/Alexa+ en Chile.
- No se investigó SmartThings Station en 2026 (sin resultados relevantes para dispositivos WiFi Tuya/eWeLink).

---

## Pregunta 4 — Fiabilidad y riesgo cloud 2024–2026 (caídas, cierres, límites de planes, deprecaciones)

### Takeaway
Los tres ecosistemas cloud relevantes tuvieron eventos materiales en 2024–2026: Google (caída de dispositivos "offline" 22-ene-2026; transición forzosa Assistant→Gemini con rutinas rotas; Nest Aware +25–33% de precio en 2025; Gemini/Premium no en Chile), Tuya (revocación del API a Homey y paso a API de pago; caídas intermitentes), eWeLink (bloqueo en 2026 de datos de energía a integraciones de terceros; funciones movidas a Advanced/Prime). Home Assistant tiene riesgo distinto: subida de precio de hardware (Green x2 desde 2023) y carga de mantenimiento/actualizaciones sobre el instalador, pero sin dependencia de nube para funcionar.

### Cited Findings
- Google Home outage 22-ene-2026 (luces/enchufes offline, automatizaciones no funcionaban) — [Android Magazine](https://androidmagazine.eu/en/2026/01/22/google-home-uz-zase-nastval-uzivatele-nefunguji-automatizace-svetla-a-zasuvky-jsou-offline/); [Geekspin](https://geekspin.co/?p=321863)
- Google Assistant→Gemini: cierre en Android desde 4-sep-2026; rutinas que "funcionaron por años dejan de dispararse"; pérdida de controles de terceros (ej. Sonos) — [TechRepublic](https://www.techrepublic.com/article/news-google-assistant-shutdown-android-gemini/); [Forkast](https://forkast.news/google-is-forcing-you-off-assistant-and-into-a-10-month-fix-you-didnt-ask-for/)
- Nest Aware subió en ago-2025: Standard $8→$10, Advanced $15→$20 — [Android Authority](https://www.androidauthority.com/google-one-home-pricing-change-3604121); [Geekchamp](https://geekchamp.com/?p=245546)
- Tuya revocó API a Homey (antes feb-2025) y pasó a TUYA CUBE API de pago — [Homey](https://homey.app/en-pt/news/official-support-for-tuya); caídas intermitentes de Tuya reportadas por usuarios de HA y Homey — [HA Community](https://community.home-assistant.io/t/anyone-else-having-tuya-problems/480110); [Homey Community](https://community.homey.app/t/tuya-devices-not-connected/157438)
- Cuenta trial del Tuya IoT Platform (necesaria para la integración de HA/otros) expira y tiene límite de 50 dispositivos — [HA Community – Tuya IoT trial 50 device limit](https://community.home-assistant.io/t/tuya-iot-trial-account-50-device-limit/578524); [HA Community – Tuya integration expired](https://community.home-assistant.io/t/tuya-integration-seems-to-have-expired/559566)
- eWeLink bloqueó en 2026 actualizaciones de sensores de potencia por cloud a integraciones de terceros — [AlexxIT/SonoffLAN](https://github.com/alexxit/sonofflan); [Private Home Lab](https://privatehomelab.com/?p=5754)
- Home Assistant Green: precio duplicado desde 2023 (US$99→US$199) — [Nabu Casa](https://www.nabucasa.com/news/2026-01-08-green-pricing-change/)
- Integradores HA: "espera llamadas a las 3 am cuando una actualización rompa todo"; mitigación = actualizar una vez al año de forma planificada — [HA Community dic-2025](https://community.home-assistant.io/t/does-anyone-make-a-living-out-of-managing-home-assistant-smart-home-installs/963359)

### Inferences
- Para alertas críticas (temperatura de refrigerador en un local), una cadena de tres nubes (eWeLink→Google→push) es la menos fiable; HA local con push vía Link o Telegram elimina dos de las tres dependencias (sigue dependiendo del internet del local para avisar, inevitable).
- El riesgo de "deprecación" es mayor en Google (cambio de asistente, funciones en early access) y Tuya (API comercial), mientras que en HA el riesgo es de mantenimiento (actualizaciones) que el instalador puede controlar con una política de actualización anual y backups.

### Gaps
- No se encontró un status page oficial de eWeLink ni un registro de caídas eWeLink con fechas 2024–2026.
- No se encontró cobertura de prensa sobre una caída de Tuya con fecha concreta en 2025–2026 (solo hilos de foro).

---

## Pregunta 5 — Ingreso recurrente: qué permite cobrar una cuota mensual "por algo real" y qué reportan integradores

### Takeaway
Solo Home Assistant (y en menor medida el ecosistema eWeLink con iHost) permite al instalador vender un servicio tangible: acceso remoto para soporte, monitoreo de salud del sistema, alertas configuradas (temperatura/energía/alarma), backups offsite y actualizaciones planificadas; el costo base revendible es Home Assistant Link (US$65/año ≈ CLP 64k/año ≈ CLP 5.300/mes) o una VPN propia. Con Google Home no hay nada que revender (Premium no está en Chile y solo aplica a Nest); con Tuya/eWeLink el instalador solo podría revender eWeLink Advanced (US$9,9/año) o créditos SMS de Tuya, márgenes mínimos. Los integradores en foros coinciden en que el modelo viable es suscripción fija por actualizaciones/cambios menores, con contratos claros y stack simple/estable.

### Cited Findings
- "El único modelo de negocio que tiene sentido es un servicio de suscripción: cuota mensual fija para actualizaciones y cambios menores pedidos por el cliente" — [HA Community](https://community.home-assistant.io/t/another-topic-on-commercial-applications-with-home-installations-rough-how-to/293211/23)
- Integrador con 30 años de experiencia ofrece monitoreo sobre HA; otro cobra consultoría continua por cambios de requisitos; recomendación de evitar productos que dependen de la nube del fabricante — [HA Community dic-2025](https://community.home-assistant.io/t/does-anyone-make-a-living-out-of-managing-home-assistant-smart-home-installs/963359)
- Instalador (nov-2025): clientes residenciales de largo plazo, integraciones básicas, controles bloqueados, contratos que anulan garantía por modificaciones no soportadas; Nabu Casa cuando el cliente usa app; hardware local para funcionar sin internet — [HA Community – Best practices](https://community.home-assistant.io/t/best-practices-for-managing-home-assistant-for-clients-remotely/801080)
- Selora Homes (EE.UU.) construye exactamente este modelo sobre HA: revenue share de suscripciones para integradores, acceso remoto por sesión aprobada por el dueño, fleet dashboard, backups y actualizaciones gestionadas — [Selora – for installers](https://selorahomes.com/for-installers); roadmap de "secure remote access" y "automated troubleshooting for installers" aún no lanzados — [Selora roadmap](https://selorahomes.com/docs/roadmap/secure-remote-access/)
- Nabu Casa/Link: US$6,50/mes o US$65/año incluye acceso remoto, backups offsite, Alexa/Google, soporte — [Nabu Casa pricing](https://www.nabucasa.com/pricing/); petición de programa reseller para instaladores sin respuesta oficial — [HA Community WTH](https://community.home-assistant.io/t/wth-cant-i-have-multiple-has-on-a-single-nabu-casa/220121)
- Google Home: roles Admin/Member como único mecanismo de acceso de terceros; sin portal de dealer — [Google Support – permissions](https://support.google.com/googlehome/answer/9155535?hl=en)
- eWeLink Advanced US$9,9/año; Prime US$19,9/año — [Private Home Lab](https://privatehomelab.com/?p=5754)

### Inferences
- Paquete mensual defendible sobre HA: (a) acceso remoto + Link (CLP ~5.300/mes de costo), (b) alertas configuradas (frío, consumo, alarma, offline del hub), (c) backup offsite y restauración, (d) 1 ventana de actualización planificada al año + soporte por WhatsApp. Precio de venta sugerido por los foros no existe; es inferencia que un rango CLP 10.000–20.000/mes por cliente cubriría Link + 30–60 min de soporte/mes.
- Con Google Home el instalador puede cobrar solo por horas de soporte, no por servicio continuo; con Tuya/eWeLink puede cobrar "configuración de escenas" puntual.

### Gaps
- No se encontraron cifras concretas (USD/mes) que integradores cobren por soporte remoto de HA; los foros no las publican.
- No hay hilos de Reddit 2025–2026 específicos sobre instaladores HA en los resultados (solo foro oficial).

---

## Pregunta 6 — Costo total aproximado por cliente (hardware + suscripciones), USD y CLP

### Takeaway
Costo por cliente (hub + suscripción primer año, sin contar los dispositivos Sonoff/Tuya que son comunes a todas las opciones): Google Home ≈ US$0 (solo app) a US$170–275 con Nest Hub, suscripción US$0 (Premium no disponible/no aplica); Home Assistant Green ≈ US$199 + envío + Link US$65/año ≈ US$280–330 primer año (≈ CLP 275–325k), o RPi 5 8GB comprado en Chile CLP 309–347k + Link; eWeLink-only ≈ US$0–20/año (Advanced/Prime) o + iHost ~US$110–130; Tuya-only ≈ US$0 + créditos SMS. Cifras de conversión a ~CLP 980/USD, noviembre 2026.

### Cited Findings
- Home Assistant Green US$199/€179 — [Nabu Casa](https://www.nabucasa.com/news/2026-01-08-green-pricing-change/); Amazon US US$219 — [bitdoze oct-2026](https://www.bitdoze.com/es/mejor-hardware-home-assistant/)
- Home Assistant Link US$65/año o US$6,50/mes — [Nabu Casa pricing](https://www.nabucasa.com/pricing/)
- Connect ZBT-2 US$49 (si se migra RF433 a Zigbee) — [The Pi Hut](https://thepihut.com/products/home-assistant-connect-zbt-2)
- Raspberry Pi 5 8GB en Chile CLP 308.990 (placa) / 332.990 (kit) / 346.990 (kit accesorios originales) — [Falabella](https://www.falabella.com/falabella-cl/search?Ntt=Raspberry+Pi+5)
- Nest Hub 2ª gen Chile CLP 164.990 (oferta) / 269.990 (lista) — [Falabella](https://www.falabella.com/falabella-cl/product/154200391/google-nest-hub-2nd-gen-negro)
- Google Home Premium US$10/mes Standard, US$20/mes Advanced (EE.UU.; no disponible en Chile según lista de 19 mercados) — [TechRadar](https://www.techradar.com/home/smart-home/google-home-premium-is-here-to-replace-nest-aware-heres-how-much-it-costs-and-who-gets-it); [Neowin](https://www.neowin.net/news/googles-simplified-nest-aware-subscription-is-now-available-in-19-markets/)
- eWeLink Advanced US$9,9/año; Prime US$19,9/año — [Private Home Lab](https://privatehomelab.com/?p=5754)
- Sonoff iHost desde €103,60 (oferta 2026) / US$130 reseller — [Sonoff sale](https://sonoff.tech/en-it/pages/anniversary-sale-2026); NSPanel Pro €112–132 — [MatterAlpha](https://www.matteralpha.com/sonoff/nspanel-pro-gen2-p4528)
- RF Bridge R2 US$14–44 según reseller — [Fruugo](https://www.fruugo.ca/sonoff-rf-bridger2-433mhz-smart-hub-wifi-home-security-control-device/p-339928657); [aio.lv](https://aio.lv/en/product--sonoff-rf-bridger2--10445292.md)
- Tipo de cambio ~CLP 978–990/USD (nov-2026) — [Emol](https://www.emol.com/noticias/Economia/2026/11/06/1216355/dolar-volatil-semanal-980.html)

### Inferences (tabla resumen, costos estimados por cliente, primer año; dispositivos finales excluidos)

| Opción | Hardware hub | Suscripción/año | Total 1er año aprox. | Años siguientes | Qué obtiene el cliente | Qué puede cobrar el instalador |
|---|---|---|---|---|---|---|
| Google Home (solo app) | US$0 | US$0 | US$0 / CLP 0 | US$0 | Voz + automatizaciones básicas cloud; sin energía como disparador; cámaras Tuya no en vivo | Solo horas de soporte |
| Google Home + Nest Hub 2 | CLP 165–270k (US$170–275) | US$0 (Premium no disponible en Chile, solo Nest cams) | CLP 165–270k | US$0 | Pantalla/voz; Gemini no disponible en Chile | Solo horas |
| HA Green + Link | US$199 + envío/aduana (≈CLP 195k + 40–80k est.) | US$65 (≈CLP 64k) | ≈US$300–330 / CLP 295–325k | US$65 / CLP 64k | Control local, alertas temp/energía, cámaras RTSP, alarma RF433 (bridge reflasheado o Zigbee), app push, backups | Cuota mensual (acceso remoto, alertas, backups, actualizaciones) |
| HA RPi 5 8GB (Chile) + Link | CLP 309–347k (US$315–355) | US$65 | ≈US$380–420 / CLP 373–411k | US$65 | Igual que Green, más potencia (Frigate) | Igual |
| HA + VPN propia (Tailscale/Cloudflare) sin Link | igual hub | US$0 (uso personal) – Standard US$8/usuario/mes para uso comercial del instalador | hub + 0–96/año | 0–96 | Sin push nativo vía Nabu, sin backup offsite incluido | Igual pero más trabajo propio |
| eWeLink-only (app) | US$0 | Advanced US$9,9 / Prime US$19,9 | US$0–20 / CLP 0–20k | US$0–20 | Web/CAST, escenas 300–1000, sin control sin internet, energía limitada a terceros | Reventa de Advanced (margen ínfimo) |
| eWeLink + iHost | US$110–130 (CLP 108–127k) | US$0–20 | ≈US$110–150 | US$0–20 | Escenas locales eWeLink/Zigbee, opcional HA over iHost | Soporte + escenas |
| Tuya/Smart Life only | US$0 (gateway Zigbee opcional ~US$15–25) | US$0 + créditos SMS/llamada | ≈US$0–25 | créditos | Cámaras, alarma, enchufes, sensores en una app; 100 automatizaciones/hogar | Créditos SMS, escenas |

- Para 10 clientes/año, el delta de costo HA vs Google es ≈ US$3.000–4.000 de hardware + US$650/año de Link, recuperable con una cuota de CLP 10–15k/mes por cliente (≈US$120–180/año/cliente) en el primer año.

### Gaps
- No se obtuvo costo de importación (envío + IVA + aduana) de Home Assistant Green a Chile; la estimación CLP 40–80k es inferencia.
- No se encontró precio chileno de Sonoff iHost, NSPanel Pro, RF Bridge R2 ni POW Ring (POWCT); solo TH Elite/POW Elite en Falabella.
- No se verificó si Nabu Casa aplica IVA 19% a clientes chilenos.
