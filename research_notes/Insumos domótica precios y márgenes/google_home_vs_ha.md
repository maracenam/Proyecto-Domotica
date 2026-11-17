# Google Home vs eWeLink/Smart Life vs Home Assistant para Nodo Domótica (Chile, nov 2026)

Note on method: research done 2026-11-17 via web search. Direct page fetches to support.google.com, developers.home.google.com, nabucasa.com and sonoff.tech were blocked by the session's network policy, so several official pages are cited from search-result snippets rather than full reads. Items drawn from general/prior knowledge and not re-verified are placed under "Inferences" or "Gaps", never under "Cited Findings".

## 1. What works in Google Home for eWeLink (Sonoff) and Smart Life (Tuya) devices

### Takeaway
On/off control of switches, plugs and relays through cloud-to-cloud account linking is solid for both eWeLink and Smart Life. Everything beyond that is weak or unreliable: camera live view on displays, sensors as automation starters, energy data, and alarm arm/disarm. Google Home works well as a voice and simple-control layer, but it cannot be the single monitoring panel for this product mix.

### Cited Findings
- **eWeLink linking:** eWeLink links to Google Home by account linking. In the eWeLink app the path is Add Device > More Options > Link Google Home. — [eWeLink blog: Tricks to control eWeLink devices with Google Home](https://ewelink.cc/tricks-to-control-ewelink-devices-with-google-home)
- **eWeLink cameras:** eWeLink camera devices are shown in Google Home after linking, and users "ask Google to show you the live streaming". eWeLink's Camera Plan guide also says to link the eWeLink account to Google Home and then discover the camera there. — [eWeLink: How to join eWeLink camera plan](https://ewelink.cc/?p=16296); [eWeLink blog (cameras)](https://ewelink.cc/category/blog/page/42/)
- **Sonoff CAM Slim Gen2:** Sonoff markets it as working with "Alexa and Google Assistant smart displays, allowing you to view your security footage with simple voice commands". This is vendor copy only. — [Sonoff: CAM Slim Gen2](https://sonoff.tech/en-hu/blogs/news/smart-security-total-privacy-meet-sonoff-cam-slim-gen2-smart-home-security-camera)
- **CAM Slim Gen2 protocols:** CNX Software's review says the CAM-S2 supports RTSP but not ONVIF, and the RTSP URL is enabled in eWeLink under Device Settings > More Settings > RTSP. The camera is indoor-only. — [CNX Software review, Dec 2024](https://www.cnx-software.com/2024/12/04/sonoff-cam-slim-gen2-review-tiny-indoor-security-camera-ewelink-home-assistant/)
- **CAM-PT2:** CNX reports it is the first Sonoff camera with ONVIF as well as RTSP. Its listed integrations are Google Home, Alexa, Home Assistant (RTSP and ONVIF), third-party NVRs and HomeKit via Scrypted. — [CNX Software CAM-PT2 review, Aug 2025](https://www.cnx-software.com/2025/08/31/sonoff-cam-pt2-indoor-security-camera-review-ewelink-onvif-nvr-home-assistant/?amp=1)
- **Tuya cameras in Google Home (community reports):**
  - Some users see "Camera Feed is not available" on Google devices. — [OzBargain thread](https://ozbargain.com.au/node/703090)
  - Others say Tuya cameras play on a Nest Hub but not in the Google Home app.
  - Automation-triggered streams sometimes stop working even though voice commands still work. — [Google Nest Community](https://www.googlenestcommunity.com/t5/Speakers-and-Displays/Camera-is-no-longer-streamed-via-automations/m-p/753164); [Wyze forum](https://forums.wyze.com/t/wyze-motion-automatically-play-on-google-home/283284/52)
  - A Nest Community moderator said that for unsupported cameras, streaming to a Nest display isn't supported, only casting to a Chromecast/TV. — [Google Nest Community](https://www.googlenestcommunity.com/t5/Speakers-and-Displays/I-bought-tuya-smart-doorbell-and-don-t-work/m-p/452848)
- **Tuya–Google integration:** Tuya says its platform is "fully integrated" with the Google Home APIs, via cloud-to-cloud. — [Tuya news](https://www.tuya.com/news-details/tuya-smart-and-google-home-apis-fully-integrated-building-a-seamless-smart-home-ecosystem-Kecf3inr5or3a)
- **Tuya cloud and multiple platforms:** A Home Assistant user reports that "Tuya cloud usually can't support multiple connections", so linking one account to several platforms can cause problems. — [HA community](https://community.home-assistant.io/t/using-tuya-and-home-assistant-together-in-google-home/456053)
- **Alarm arm/disarm in Google Home:**
  - Google's help page "Set up your home security system with Google" says not all alarms are compatible, and you must speak your PIN if the provider requires one. — [Google Nest Help 16357155](https://support.google.com/googlenest/answer/16357155)
  - The developer guide describes PIN challenges passed with arm/disarm requests (SecuritySystem device, ArmDisarm trait). — [Google Home Developers: Security System guide](https://developers.home.google.com/cloud-to-cloud/guides/securitysystem); [ArmDisarm trait](https://developers.home.google.com/cloud-to-cloud/traits/armdisarm)
  - I found no source confirming that Tuya/Smart Life WiFi alarm hubs expose arm/disarm to Google Home.
  - One user notes the Smart Life app cannot "arm home" from scenes. — [HA community: Tuya arm state](https://community.home-assistant.io/t/tuya-integration-change-arm-state/445464)
  - An Arlo user's workaround of driving arm state through Tuya switches and Google routines worked "sometimes". — [Arlo community](https://community.arlo.com/t5/Partner-Integrations/Exploring-replacing-ARLO-geofencing-with-3rd-party-automation/m-p/2426871)
- **Energy data:**
  - A 2022 Nest Community thread says energy-monitoring data from smart plugs cannot be viewed in the Google Home app. — [Google Nest Community](https://www.googlenestcommunity.com:443/t5/Nest-Thermostats/Energy-reading-on-Google-Hubs-and-Google-Home-app/m-p/321963)
  - Energy over Matter needs Matter 1.3 energy reporting on both the device and the platform, and adoption is uneven. — [Trunetto guide](https://www.trunetto.com/troubleshooting/smart-plugs/eve/eve-energy-matter-apple-home-not-google-home); [TP-Link community](https://community.tp-link.com/en/smart-home/forum/topic/642786)
- **Sensors as automation starters:** Search found no official Google list confirming that specific eWeLink or Tuya door/motion sensors work as Home app automation starters. The eWeLink "Device Event" camera-recording triggers (door, motion, smoke, water-leak) are eWeLink-side features, not Google features. — [eWeLink blog](https://ewelink.cc/category/blog/page/42/)

### Inferences
- **POW (energy):** Google Home will show the relay on/off only. kWh and W stay in eWeLink. Treat this as near-certain for cloud-to-cloud devices, based on the energy findings above.
- **TH sensors:** Temperature/humidity will probably show as a reading or thermostat-like tile. Whether a TH reading can trigger an automation through cloud-to-cloud is unverified, so test before promising it.
- **RF433 alarm:** Arm/disarm, siren state and per-sensor alarm events from the Tuya siren should stay in Smart Life. Google Home should not be sold as the alarm console. Google also states automations are "for convenience only, not safety or security-critical use cases" (see section 2).
- **Push notifications:** Alarm triggered, door opened, camera motion and similar alerts should stay with the vendor apps (eWeLink / Smart Life), or move to the Home Assistant companion app.

### Gaps
- I could not read the current official Google "supported devices / starters" pages (blocked domain). Exact 2026 cloud-to-cloud starter support for third-party OpenClose/Motion sensors is unconfirmed.
- No 2025–2026 source confirms that Sonoff cameras give live view on Nest Hub or Google TV specifically. Field-test one CAM-S2 and one CAM-PT2 on a Nest Hub 2 before selling it.

## 2. Google Home automations/Script editor, Matter (Sonoff/Tuya), and availability in Chile

### Takeaway
Google Home now has three automation layers: the basic Home app builder, the YAML script editor, and Gemini "describe it" automations (some features need Premium). These cover simple routines, but are explicitly not meant for security. Sonoff sells Matter-over-WiFi devices (MINIR4M, M5 Matter) that Google hubs can control locally. Chile has local retail for Nest Hubs (about CLP 165k on sale). I could not confirm that Gemini for Home is available in Chile.

### Cited Findings
- **Script editor:**
  - It is a YAML editor in the Google Home web interface and mobile app, launched in 2023 with nearly 100 starters/actions, and works with third-party devices.
  - Some Matter sensors (for example Eve Motion) can be starters in the script editor even when the basic Home app builder doesn't offer them.
  - Google says automations are "for convenience only, not safety or security-critical use cases".
  - — [Google Nest Help: script editor](https://support.google.com/googlenest/answer/13460475); [Hackster](https://www.hackster.io/news/google-launches-new-nest-automation-capabilities-with-a-yaml-based-script-editor-54ba4dca9f38); [Android Central](https://www.androidcentral.com/accessories/smart-home/google-home-script-editor-available)
- **2025 redesign (Oct 1, 2025):**
  - The Google Home app was redesigned around Gemini: an "Ask Home" bar, three tabs (Home, Activity, Automations), and conversational automation creation.
  - Google Home Premium replaces Nest Aware. Standard is US$10/month or US$100/year; Advanced costs about double in the US; Canada is about C$13/month. Some "easy automations" and advanced camera/AI features need Premium.
  - — [9to5Google, 2025-10-01](https://9to5google.com/2025/10/01/gemini-for-home-app-launch/); [Google blog](https://blog.google/products-and-platforms/devices/google-nest/google-home-app-gemini-redesign/); [TechRadar](https://www.techradar.com/home/smart-home/google-home-premium-is-here-to-replace-nest-aware-heres-how-much-it-costs-and-who-gets-it); [Engadget](https://engadget.com/home/smart-home/google-has-overhauled-its-smart-home-app-to-feature-gemini-130041497.html)
- **Gemini for Home in Spanish:**
  - Spanish support was announced in March 2026, with launch/early access in Mexico. — [9to5Google, 2026-03-31](https://9to5google.com/2026/03/31/google-homes-latest-updates-include-gemini-in-spanish-improved-smart-home-controls/); [Thurrott](https://www.thurrott.com/a-i/334400/google-gemini-for-home-adds-spanish-support-and-launches-in-mexico)
  - It reached Spain in April 2026, as part of a 16-country / 7-language expansion. — [El Español, 2026-04-08](https://www.elespanol.com/elandroidelibre/noticias-y-novedades/20260408/oficial-google-home-cambia-siempre-espana-decimos-adios-asistente-hola-gemini/1003744199599_0.html); [Android Central](https://www.androidcentral.com/accessories/smart-home/googles-gemini-for-home-is-going-global-with-more-languages-and-regions)
  - Gemini Live needs Home Premium Standard (US$9.99/month), which is included in Google AI Pro (US$19.99/month).
- **Chile availability:**
  - Falabella Chile lists Nest Hub 2nd gen at CLP 164,990, on sale from CLP 229,990 (black) or CLP 269,990 (chalk); the listing date is unknown. — [Falabella: Nest Hub 2nd Gen](https://www.falabella.com/falabella-cl/product/154200391/google-nest-hub-2nd-gen-negro); [Falabella Google Nest](https://www.falabella.com/falabella-cl/shop/google-nest)
  - US list price is US$99.99. — [Google Store](https://store.google.com/product/google_nest_hub?hl=en-US)
  - Mercado Libre publishes a "how to set up Google Home in Chile" guide. — [Mercado Libre CL](https://www.mercadolibre.cl/blog/como-configurar-google-home-en-chile-paso-a-paso)
- **Sonoff Matter:**
  - The MINIR4M and M5 series are listed as "Matter-enabled Wi-Fi devices" with On/Off control. — [Sonoff ZBBridge-U supported list](https://sonoff.tech/blogs/news/zigbee-bridge-ultra-supported-devices-list?page=2)
  - The M5 Matter page says it works with Google Home. Its bridge feature for Zigbee sub-devices goes through eWeLink cloud-to-cloud. — [Sonoff M5 Matter](https://sonoff.tech/en-de/products/sonoff-switchman-matter-over-wifi-smart-wall-switch-m5-matter-80-type)
  - The ZBBridge-U (Zigbee Bridge Ultra) is Matter-certified for Google Home, Apple, SmartThings and Alexa. It can expose Home Assistant entities to those platforms as a Matter bridge. — [Sonoff ZBBridge-U page](https://sonoff.tech/en-us/pages/zbbridge-u-empower-home-assistant-with-matter-bridge-and-mqtt-syncing)
  - eWeLink can now also sync Google Home Matter devices into eWeLink (Android, app v5.20+). — [eWeLink blog](https://ewelink.cc/how-to-sync-and-control-google-home-matter-devices-in-ewelink/)
- **Matter local control:** Google added local Matter control on Google Home hubs (Home Runtime, announced at CES 2025). Matter devices work locally over the home network, but non-Matter setups send commands over the internet. — [ChannelNews CES 2025](https://www.channelnews.com.au/ces-2025-google-home-hubs-to-offer-local-control-over-matter-devices/); [Google Nest Help: Prepare for Matter](https://support.google.com/googlenest/answer/12391458?hl=en-AU)

### Inferences
- **Spanish:** The Google Assistant voice experience in Spanish works in Chile. Gemini for Home appears to roll out country by country (US/CA, then Mexico, then Spain and others), so it may still be absent or in early access in Chile as of Nov 2026. Do not build the offer on Gemini-only features.
- **Tuya Matter:** Tuya does sell Matter-over-WiFi modules. The Smart Life RF433 siren is almost certainly not Matter, so it will stay cloud-only.

### Gaps
- I could not confirm Chile on the Gemini for Home or Google Home Premium country list.
- I did not find current Paris/Ripley/PC Factory prices or a Nest Hub Max in Chile.
- Whether the MINIR4M under Matter keeps its "detach relay"/switch-input features in Google Home is unverified.

## 3. Cloud dependence

### Takeaway
Google Home controls eWeLink and Smart Life devices through the vendors' clouds (cloud-to-cloud). When the home's internet or either cloud goes down, control and automations for those devices stop. Only Matter devices on a Google hub keep working locally. Home Assistant with local integrations keeps working on the LAN.

### Cited Findings
- **Google Home without Matter:** Google says that without a Matter setup, commands go over the internet. Cloud-to-cloud devices stop if the provider's server or internet fails. — [Google Nest Help: Prepare for Matter](https://support.google.com/googlenest/answer/12391458?hl=en-AU); [ChannelNews](https://www.channelnews.com.au/ces-2025-google-home-hubs-to-offer-local-control-over-matter-devices/)
- **Outage evidence:** During a large AWS outage, many cloud smart-home devices were unusable, while local systems (Home Assistant, Zigbee, Matter, Hubitat) were unaffected. — [Matter Alpha](https://www.matteralpha.com/industry-news/how-an-aws-outage-left-the-smart-home-ecosystem-in-the-dark)
- **Local-first caveat:** One HA user reported Matter devices failing after internet loss on HA's Matter Server beta. Local-first doesn't automatically mean internet-independent. — [HA community](https://community.home-assistant.io/t/matter-is-supposed-be-local-first-ha-matter-server-beta-appears-to-be-internet-first/1011140)

### Inferences
- **Chilean context:** Outages after storms and Starlink/4G backup links make local control a real selling point for the "central local" line, especially for gates and alarm sirens.

### Gaps
- No Chile-specific data on residential internet downtime.

## 4. Home Assistant: costs, cloud, integrations, exposing to Google, multi-client management

### Takeaway
A Home Assistant node costs about US$199 (HA Green, price raised in Jan 2026) or a Raspberry Pi 5 kit. Nabu Casa adds US$6.50/month or US$65/year per home, for remote access, Google Assistant/Alexa exposure and cloud backups. Integrations exist for every Nodo product line: SonoffLAN (local and cloud), Tuya (cloud official, plus community local options), and RTSP/ONVIF cameras. Nabu Casa has no installer or multi-tenant console, so each client needs its own subscription.

### Cited Findings
- **HA Green price:**
  - The suggested price rose to US$199 (excluding tax) / €179 (including tax), effective January 2026, because component costs nearly doubled since 2023. — [Nabu Casa news 2026-01-08](https://www.nabucasa.com/news/2026-01-08-green-pricing-change/); [Matter Alpha](https://www.matteralpha.com/news/home-assistant-green-price-hiked-here-s-why)
  - The launch price was US$99, and sources differ on whether there were one or two increases. — [domo-blog.fr](https://www.domo-blog.fr/nouvelle-flambee-du-prix-pour-la-box-home-assistant-green-faut-il-passer-au-mini-pc/)
  - Green vs Raspberry Pi 5 vs mini PC comparisons for 2026. — [raspberry.tips](https://raspberry.tips/en/raspberrypi-tutorials/home-assistant-hardware-comparison-2026-green-blue-yellow-vs-raspberry-pi); [bitdoze](https://www.bitdoze.com/best-home-assistant-hardware/)
- **Nabu Casa / Home Assistant Cloud:**
  - Price is US$6.50/month or US$65/year before tax, with a 31-day free trial and no lifetime plan or free tier. — [Nabu Casa pricing](https://www.nabucasa.com/pricing/); [Nabu Casa support: cost](https://support.nabucasa.com/hc/en-us/articles/26179687501341-How-much-does-a-Home-Assistant-Cloud-subscription-cost); [Neil Turner 2025](https://neilturner.me.uk/2025/02/23/)
  - It includes secure remote access, the Google Assistant and Alexa integrations, and TTS/STT for Assist. — [home-assistant.io/cloud](https://www.home-assistant.io/cloud/)
  - The service is being renamed "Home Assistant Link" on Dec 2, 2026, with the same subscription. This is per search snippet from the Nabu Casa news feed and was not fully read. — [Nabu Casa news feed](https://www.nabucasa.com/news/feed.xml)
  - Homeway is a cheaper third-party remote-access alternative with a free tier. — [Neil Turner](https://neilturner.me.uk/tag/remote/)
- **Sonoff integrations:**
  - SonoffLAN (AlexxIT, HACS) controls stock-firmware eWeLink devices over LAN and/or cloud, and auto-prefers LAN. Support varies by model. — [GitHub AlexxIT/SonoffLAN](https://github.com/alexxit/sonofflan)
  - eWeLink LAN mode is encrypted, and the keys come from the eWeLink account. — [luisllamas.es](https://www.luisllamas.es/en/integrating-commercial-tuya-ewelink-shelly-devices-home-assistant/)
  - Sonoff's official HA paths are the eWeLink Smart Home add-on, a Matter bridge, and Zigbee (ZHA/Z2M). — [Sonoff HA guide](https://sonoff.tech/en-us/blogs/news/sonoff-device-integration-with-home-assistant-complete-guide)
  - An unverified blog claims eWeLink blocked some sensor updates in 2026, fixed in SonoffLAN 3.11.0. Check the GitHub release notes before relying on this.
- **Tuya integrations:**
  - The official HA Tuya integration is cloud-based. — [luisllamas.es](https://www.luisllamas.es/en/integrating-commercial-tuya-ewelink-shelly-devices-home-assistant/)
  - Community LocalTuya and Tuya-Local (HACS) control devices locally, using the cloud only to fetch local keys. — [GitHub rospogrigio/localtuya](https://github.com/rospogrigio/localtuya); [make-all/tuya-local](https://relatedrepos.com/gh/make-all/tuya-local); [xZetsubou/hass-localtuya](https://relatedrepos.com/gh/xZetsubou/hass-localtuya)
- **Cameras in HA:**
  - The CAM-S2 connects via RTSP and the CAM-PT2 via RTSP and ONVIF. — [CNX CAM-S2](https://www.cnx-software.com/2024/12/04/sonoff-cam-slim-gen2-review-tiny-indoor-security-camera-ewelink-home-assistant/); [CNX CAM-PT2](https://www.cnx-software.com/2025/08/31/sonoff-cam-pt2-indoor-security-camera-review-ewelink-onvif-nvr-home-assistant/?amp=1); [Sonoff: add camera to HA](https://sonoff.tech/es-es/blogs/noticias/how-to-add-security-camera-to-home-assistant)
  - Tuya cameras generally don't expose a feed to HA easily. — [HA community WTH](https://community.home-assistant.io/t/wth-cant-i-get-a-tuya-camera-feed-in-home-assistant/467161)
- **Exposing HA to Google Home:**
  - Nabu Casa includes the Google Assistant integration. — [home-assistant.io/cloud](https://www.home-assistant.io/cloud/)
  - Alternatively, a Sonoff ZBBridge-U can push HA entities into Google Home as Matter devices. — [Sonoff ZBBridge-U](https://sonoff.tech/en-us/pages/zbbridge-u-empower-home-assistant-with-matter-bridge-and-mqtt-syncing)
- **Multi-client management:**
  - Each HA installation requires its own Nabu Casa account and subscription. Multi-instance management has been "on the roadmap" with no date given. — [Nabu Casa FAQ](https://support.nabucasa.com/hc/en-us/sections/26177468171549-FAQ-Home-Assistant-Cloud); [HA community: single account multiple instances](https://community.home-assistant.io/t/nabu-casa-single-account-to-manage-multiple-instances/144224?page=2); [WTH thread](https://community.home-assistant.io/t/wth-cant-i-have-multiple-has-on-a-single-nabu-casa/220121); [Managed HA installations thread](https://community.home-assistant.io/t/managed-ha-installations/331055)
  - Automatic cloud backups have been built in for subscribers since HA 2024.6; one source cites a 5 GB limit. — [simon42](https://www.simon42.com/home-assistant-backup-restore/)
  - Third-party managed-HA services aimed at integrators exist (for example about US$99/month plus US$8 per instance), but these are unverified vendor claims. — [Ghost Smart Homes](https://ghost-smart-homes-managed.pages.dev/homeassistant/); [Selora Homes](https://selorahomes.com/docs/roadmap/secure-remote-access/)

### Inferences
- **Remote support model:** Use the client's own Nabu Casa account, with the installer added as an HA admin user, or a Tailscale/WireGuard VPN per site. Keep backups both in Nabu Casa cloud and on the installer's own storage. This is a common practice inferred from the threads above, not an official installer program.
- **Chile pricing:** Nabu Casa at US$65/year is about CLP 60–65k/year at roughly 950 CLP/USD (FX assumed, not sourced). That leaves room for a Nodo maintenance plan, for example CLP 8–15k/month, that bundles Nabu Casa, backups, updates and remote support.
- **HA Green in Chile:** Import cost will be well above US$199 once shipping and 19% IVA are added. Local Chilean price not found.

### Gaps
- Raspberry Pi 5 kit price in Chile (for example from MCI Electronics or Mercado Libre) was not researched in this pass.
- HA Green local availability in Chile is unknown.
- Frigate on RPi5 vs Green performance was not researched. The general knowledge is that Frigate needs a Coral TPU or a mini PC rather than a Green; not sourced here.
- The current HA companion app notification feature set was not re-verified.

## 5. Recommendation for an installer business (client experience, support burden, recurring revenue)

### Takeaway
Don't make Google Home the client's central console. Offer two lines.

**(A) Línea Económica (cloud):**
- eWeLink stays the primary app for Sonoff devices: energy data, cameras, scenes and notifications.
- Smart Life stays the primary app for the alarm (arm/disarm and alerts).
- Google Home or Nest Hub is optional, as a voice and quick-control layer for lights, plugs and gate relays. Validate camera live view per model.
- Recurring revenue is low; offer an optional remote support plan.

**(B) Línea Central Local:**
- Home Assistant (HA Green, or an RPi5 with SSD) per home.
- Integrations: SonoffLAN for Sonoff devices, Tuya-Local/LocalTuya or official Tuya for the siren, and RTSP/ONVIF for cameras (CAM-PT2 preferred).
- One unified dashboard and companion app with push notifications.
- Nabu Casa for remote access and backups, with Google Home exposure via Nabu Casa for voice.
- Prefer Matter (MINIR4M, M5 Matter) for new installs so lights and relays also work locally from a Google hub.
- This line justifies a monthly maintenance fee.

### Cited Findings
- **Not for security:** Google says Google Home automations are for convenience, not security-critical use. — [Google Nest Help: script editor](https://support.google.com/googlenest/answer/13460475)
- **Energy stays in vendor apps:** Energy data from third-party plugs is not shown in Google Home (2022 thread); Matter energy reporting adoption is uneven. — [Nest Community](https://www.googlenestcommunity.com:443/t5/Nest-Thermostats/Energy-reading-on-Google-Hubs-and-Google-Home-app/m-p/321963); [Trunetto](https://www.trunetto.com/troubleshooting/smart-plugs/eve/eve-energy-matter-apple-home-not-google-home)
- **Tuya camera streams unreliable:** Tuya camera streams on Google displays are inconsistent. — [Google Nest Community](https://www.googlenestcommunity.com/t5/Speakers-and-Displays/I-bought-tuya-smart-doorbell-and-don-t-work/m-p/452848)
- **Cost per HA home:** Nabu Casa US$65/year and HA Green US$199. — [Nabu Casa pricing](https://www.nabucasa.com/pricing/); [Matter Alpha](https://www.matteralpha.com/news/home-assistant-green-price-hiked-here-s-why)
- **Google Home Premium:** About US$10/month for Gemini/advanced automations and camera history. — [TechRadar](https://www.techradar.com/home/smart-home/google-home-premium-is-here-to-replace-nest-aware-heres-how-much-it-costs-and-who-gets-it)

### Inferences
- **Lowest support burden for the economic line:** Keep the vendor apps, and use Google Home only for voice and on/off. Promising camera, alarm or energy in Google Home will generate support tickets.
- **Best client experience for the central line:** Home Assistant (one app, local, unified alarm, energy and cameras), but the installer must own updates, which is exactly what justifies a fee. Main risks: HACS integrations (SonoffLAN, LocalTuya) can break with HA or vendor-firmware updates, and there is no multi-tenant console.
- **Mitigations:**
  - Stage updates on a test unit.
  - Pin versions.
  - Standardize on a hardware set.
  - Prefer Matter or Zigbee devices over WiFi-cloud devices for new central-line installs.
- **Sales narrative:**
  - Económica: "app del fabricante + voz Google".
  - Central Local: "funciona sin internet, todo en una app, alarmas y consumo, soporte remoto incluido".

### Gaps
- No Chilean installer pricing benchmarks for maintenance plans were gathered in this pass.
- No field verification of a Sonoff camera on a Nest Hub in Chile.
