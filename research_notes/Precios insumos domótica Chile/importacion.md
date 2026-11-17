# Importación de insumos domótica a Chile (AliExpress / Temu / Alibaba / Amazon / tienda oficial Sonoff) vs compra local — noviembre 2026

Research date: 16-Nov-2026. Exchange rate used throughout: **dólar observado BCCh 16-Nov-2026 = CLP 999,10 por USD** (rounded to 1.000 CLP/USD for landed-cost math) — [mindicador.cl (serie dólar observado, Banco Central)](https://mindicador.cl/api/dolar). Recent range: 969,80 (10-Nov) to 999,10 (16-Nov).

Important caveat on AliExpress prices below: AliExpress search pages fetched from Chile display prices in CLP (format `$17.100`) and, because AliExpress is a platform registered with the SII, the 19% IVA is collected at checkout — so the displayed CLP figure should be treated as "IVA-included" (inference, see Q1). Search-result prices on AliExpress are often the lowest variant / first-order promo price of a listing, not necessarily the price of the exact SKU; I flag suspicious outliers.

## Q1. Current Chilean import rules for courier/postal purchases (Nov 2026)

### Takeaway
Since 25-Oct-2025 (Ley 21.713), every remote purchase of goods ≤ US$500 from abroad pays 19% IVA — collected at checkout when the platform is registered with the SII (AliExpress, Amazon, Temu, Shein, etc.) or on arrival via Correos/courier (Formulario 18 / TGR) when it is not — and is **exempt from the 6% ad valorem duty**. The old US$41 duty-free/IVA-free franchise was eliminated. Above US$500, the general regime applies: 6% ad valorem on CIF + 19% IVA on (CIF + duty) + courier clearance fees.

### Cited Findings
- Legal basis: "Ley 21.713, de Cumplimiento de Obligaciones Tributarias"; new system started **25 de octubre [2025]**; purchases made before that date are governed by the previous rules even if they arrive later — [Aduana: Cambios en tus compras internacionales](https://www.aduana.cl/cambios-en-tus-compras-internacionales/aduana/2025-10-15/153938.html)
- "Se elimina la franquicia que permitía ingresar compras menores a US$ 41 sin impuestos." Registered platforms charge the 19% IVA at purchase; on arrival the consumer pays no IVA "siempre que el impuesto haya sido recargado en la transacción en línea" and no ad valorem. Initial registered platforms listed by Aduana: Aliexpress, Amazon, Shein, Temu, Elseiver, Its Elementary, Shopee, Regina Margherita, Everichgroup — [Aduana: Cambios en tus compras internacionales](https://www.aduana.cl/cambios-en-tus-compras-internacionales/aduana/2025-10-15/153938.html)
- Over 93% of shipments in 2024 had a declared value ≤ US$41 — [Aduana: Cambios en tus compras internacionales](https://www.aduana.cl/cambios-en-tus-compras-internacionales/aduana/2025-10-15/153938.html)
- "Compras internacionales hasta USD 500 pagan solo IVA, sin arancel aduanero adicional"; condition stated: products "sean para uso personal y no tengan fines comerciales"; above USD 500 "se aplicará el arancel aduanero de 6% además del IVA" under the general import regime — [Aduana: Sin arancel aduanero hasta USD 500](https://www.aduana.cl/sin-arancel-aduanero-hasta-usd-500/aduana/2025-10-20/174429.html)
- Unregistered platforms: "deberán pagar el IVA y derechos aduaneros cuando arriben al país" — [Aduana: Cambios en tus compras internacionales](https://www.aduana.cl/cambios-en-tus-compras-internacionales/aduana/2025-10-15/153938.html)
- Aduana says IVA is paid on the platform and Aduanas keeps inspecting 100% of shipments — [Aduana, 6-Oct-2025](https://www.aduana.cl/compras-online-internacionales-iva-se-pagara-en-las-plataformas-y/aduana/2025-10-06/100335.html)
- Example above US$500 (Aduana): CIF US$1.000 → duty 6% = US$60; IVA 19% on US$1.060 = US$201,40; total US$261,40 — [Aduana: Cuánto impuesto se paga al importar](https://www.aduana.cl/cuanto-impuesto-se-paga-al-importar/aduana/2022-06-29/121230.html)
- Correos de Chile process: if platform is registered with SII the IVA comes included; if not, pay at TGR ("Pagos" → "Pago de Importación Vía Postal (F18)", RUT + folio FIVPS) or via Correos' payment button; Correos notifies by email/SMS/WhatsApp/phone. "Para compras menores a 500 USD, se aplica un 19% adicional"; ≥ US$500 follows the normal import process. Correos' worked example for a US$535 CIF parcel: duty 6% = US$32,10; **aforo 1,5% of CIF = US$8,02**; IVA 19% on CIF+duty = US$107,75; insurance 2% of FOB (theoretical); total US$147,87. Correos defines "Tasa Presentación: Costo de tramitación ante Aduana" but **publishes no CLP amount** — [Correos de Chile: Proceso de internación e impuestos](https://www.correos.cl/proceso-de-internacion-e-impuestos)
- ChileAtiende procedure "Pagar importación por vía postal (IVA Digital)" — [ChileAtiende ficha 4201](https://www.chileatiende.gob.cl/fichas/4201-pagar-derechos-aduaneros-por-importaciones-realizadas-via-postal)
- SII registration news: as of 24-Oct-2025 AliExpress, Amazon (incl. amazon.co.jp) and Shopbop had registered; press reported 20 platforms representing ~90% of remote low-value purchases — [SII noticia 24-Oct-2025](https://www.sii.cl/noticias/2025/241025noti01pcr.htm); [Radio U. de Chile 25-Oct-2025](https://radio.uchile.cl/2025/10/25/comienza-a-regir-el-iva-del-19-a-compras-de-bienes-de-hasta-us500-en-el-extranjero/)
- Official registered-platform list (PDF, file dated 16-Mar-2026) — [SII plataformas_inscritas.pdf](https://www.sii.cl/destacados/iva_bienes/plataformas_inscritas.pdf) (could not be text-extracted in this session; see Gaps). SII hub page: [sii.cl/destacados/iva_bienes](https://www.sii.cl/destacados/iva_bienes/)
- First month: Aduanas processed 3.733.446 shipments; via Correos de Chile 361.095 parcels entered, 229.882 with IVA already collected — [Aduana balance 9-Dec-2025](https://www.aduana.cl/balance-iva-digital-aduanas-tramito-3-733-446-envios-el-primer-mes-de/aduana/2025-12-09/074834.html); ~US$10 million collected in the first month — [Diario Financiero](https://www.df.cl/economia-y-politica/df-tax/primer-mes-del-iva-a-importaciones-aduanas-reviso-3-7-millones-de)
- SII reported > US$94 million collected in the first months; CNC reported informal purchases through digital platforms fell 39% in Q1-2026 — [ivachile.cl](https://www.ivachile.cl/iva-compras-internacionales.html) (secondary source)
- **Double-charging problem (July 2026):** Defensoría del Contribuyente (Dedecon) found some buyers on Amazon, AliExpress, Shein, eBay were charged IVA twice — at checkout and again on arrival via Correos de Chile or the courier — because administrative rules give importers no way to prove the prior payment; no effective refund mechanism existed as of 26-Jul-2026 — [T13, 26-Jul-2026](https://www.t13.cl/noticia/nacional/dedecon-detecta-doble-cobro-del-iva-algunas-compras-internacionales-podria-afec-26-7-2026). A Feb-2026 consumer complaint describes Correos demanding tax on a parcel already taxed at checkout, parcel held 3 months — [reclamos.cl Feb-2026](https://www.reclamos.cl/aduanas/reclamo/2026/feb/aduanas-doble-cobro-de-impuesto)
- Correos de Chile letter to Aduanas (Apr-2026) says its systems were still being adapted and the TGR system did not yet support the two franchises that allow charging only IVA on the sale; asked for a transition period — [Aduana, carta Correos 2026](https://www.aduana.cl/aduana/site/docs/20260506/20260506120951/erick_cartes_correos_de_chile.pdf)
- Courier handling fee (older, 2024 figure quoted by a consumer-observatory minuta): "tarifa de gestión aduanera que varía entre $3.000 y $8.000 según el courier" — [ODECU Minuta 24 (PDF, Feb-2026)](https://www.odecu.cl/wp-content/uploads/2026/02/Minuta-24-Impuesto-compra-int.pdf) (figure attributed to a 2024 source; could not be re-verified)
- Correos tariffs are set by Resolución 66 Exenta (1-Oct-2025), "Encomienda Internacional: tarifas exentas de IVA" — [BCN Res. 66 Exenta 2025](https://www.bcn.cl/leychile/navegar?idNorma=1217019); [Diario Oficial 1-Oct-2025](https://www.diariooficial.interior.gob.cl/publicaciones/2025/10/01/44263/01/2704814.pdf) (tables not readable in results)
- DHL Express Chile: customs procedures handled by DHL itself, "sin necesidad de pasar por un agente aduanero"; optional-services tariff "Válido: Enero 1, 2026" but amounts not shown in results; average price increase 5,9% for Time Definite products effective Jan-2027 — [DHL: todo sobre aduanas chilenas](https://www.dhl.com/discover/es-es/envia-con-dhl/comienza-a-enviar-con-dhl/todo-sobre-aduanas-chilenas); [DHL Chile servicios opcionales](https://mydhl.express.dhl/cl/es/ship/optional-services.html); [DHL Chile important information](https://mydhl.express.dhl/cl/en/important-information.html)
- Business use: IVA on these purchases can only be used as crédito fiscal if related to the giro and backed by a valid tax document; a personal purchase normally generates no credit in F29 — [ivachile.cl](https://www.ivachile.cl/iva-compras-internacionales.html) (secondary; verify with SII)
- Conflicting claim: ivachile.cl says Aduanas keeps a separate US$41 franchise for occasional non-commercial shipments; Aduana's own page says the US$41 franchise "se elimina" — [ivachile.cl](https://www.ivachile.cl/iva-compras-internacionales.html) contradicted by [Aduana](https://www.aduana.cl/cambios-en-tus-compras-internacionales/aduana/2025-10-15/153938.html). Treat Aduana as authoritative.
- Older/outdated info to ignore: Aduana pages from 2018 and press from 2024 describing the US$41 exemption — e.g. [Aduana 2018](https://www.aduana.cl/cuanto-impuesto-se-paga-al-importar/aduana/2018-12-12/233227.html), [BioBioChile Aug-2024](https://www.biobiochile.cl/noticias/servicios/toma-nota/2024/08/26/amp/cuando-y-cuanto-debo-pagar-en-impuestos-aduaneros-al-hacer-compras-en-el-extranjero-de-forma-online.shtml)

### Inferences
- For a registered platform (AliExpress, Temu, Amazon): landed cost ≈ displayed IVA-included price + shipping (often free) + CLP 0 duty + (normally) no courier fee; risk of a second IVA charge on arrival (Dedecon) that must be disputed.
- For the Sonoff official store (itead.cc / sonoff.tech) and Shelly's own store — not seen in any registered-platform list I could read — the buyer pays price + shipping, then 19% IVA on arrival (Correos F18 or courier) plus the courier's clearance/handling fee (unknown exact CLP; 2024 reference CLP 3.000–8.000 for Correos-type handling; DHL likely higher but unpublished).
- The ≤US$500 ad valorem exemption is written as for "uso personal, sin fines comerciales"; a reseller importing several units may be treated as a commercial import (6% duty + 19% IVA + customs-agent costs). This is the single biggest legal/cost uncertainty for an installer business and should be confirmed with Aduana or a customs agent.
- Above US$500 the effective tax load is 25,54% of CIF (6% + 19%×1,06) plus 1,5% aforo in the Correos example, plus clearance fees.

### Gaps
- Could not read the current SII registered-platform PDF (binary not extractable); whether Temu, Alibaba, eBay, Itead/Sonoff or Shelly are currently registered is unconfirmed. Aduana's Oct-2025 list includes Temu and AliExpress; Alibaba/Itead/Shelly not mentioned anywhere.
- No official 2026 CLP figure for Correos de Chile "tasa de presentación"/handling fee, nor DHL/FedEx Chile clearance fees.
- Whether Temu shows IVA-included prices at checkout in Chile was not verified directly (Temu pages fetched did not show amounts).

## Q2. Per-product prices (AliExpress / Temu / itead) and landed cost in CLP vs Chilean store prices

### Takeaway
On AliExpress (prices shown in CLP, IVA included, mostly free shipping) Sonoff items land in Santiago at roughly 50–70% of the price MCI Electronics charges through Falabella/Paris/Easy (e.g. MINIR4 ~CLP 10.330 vs CLP 14.990 local; TH Elite ~CLP 14.100 vs 24.990; Raspberry Pi 5 4GB ~CLP 86.600 vs 195.990). The official Sonoff store is not cheaper than AliExpress once 19% IVA on arrival and shipping are added. I could not obtain Temu prices for any item, nor local Chilean prices for several SKUs.

### Cited Findings
Exchange rate for conversions: 999,10 CLP/USD — [mindicador.cl](https://mindicador.cl/api/dolar).

AliExpress (Chile view, CLP, search-page prices, 16-Nov-2026):
- Sonoff MINI R4 Extreme: CLP 10.330 free shipping (4.9, 10.000+ sold); MINIR4M Matter: CLP 12.547 free shipping (4.9, 500+ sold) and CLP 13.200 (was 27.521); other listings CLP 3.578–9.200 (promo/first-order) — [AliExpress search MINI R4](https://www.aliexpress.com/w/wholesale-Sonoff-Mini-R4-Extreme.html)
- Sonoff CAM-PT2: CLP 17.100 free shipping (4.9, 1K+ sold); other sellers CLP 33.700–41.500; CAM-B1P outdoor 2K IP65: CLP 49.000 free shipping (3 sold) — [AliExpress search CAM-PT2](https://www.aliexpress.com/w/wholesale-Sonoff-CAM-PT2.html)
- Sonoff POWCT POW Ring (100A CT): CLP 33.200 (was 73.800; 5.0, 361 sold; "-$40.600 1er pedido" label suggests first-order promo) and CLP 56.600 free shipping (14 sold) — [AliExpress search POWCT](https://www.aliexpress.com/w/wholesale-Sonoff-POWCT-POW-Ring.html)
- Sonoff TH Elite THR316D/THR320D: CLP 14.100 (4.8, 1K+ sold, the most credible unit price); listings at CLP 2.317–6.900 are likely accessory/variant prices; 3-unit pack CLP 41.400; WTS01 probe only appears as a compatibility mention, not as a priced listing — [AliExpress search TH Elite](https://www.aliexpress.com/w/wholesale-Sonoff-THR320D-TH-Elite.html)
- Sonoff ZBDongle-E: CLP 16.100 (15.300 each for 2+; 4.9, 1.000+ sold), CLP 16.400 pre-flashed coordinator (800+ sold), CLP 19.490 free shipping (3.000+ sold); SNZB-04PR2 door sensor CLP 2.214 (4.9, 5.000+ sold — probably variant/promo); no standalone SNZB-02 listing seen — [AliExpress search ZBDongle-E](https://www.aliexpress.com/w/wholesale-Sonoff-ZBDongle-E.html); [AliExpress search S26R2/S40 (returned Zigbee items)](https://www.aliexpress.com/w/wholesale-Sonoff-S26R2-S40.html)
- Shelly Pro 3EM 120A V2: CLP 118.200 (4.8, 419 sold); Pro 3EM-3CT63: CLP 116.700 free shipping (4.9, 223 sold); Pro 3EM-400: CLP 265.600 — [AliExpress search Shelly Pro 3EM](https://www.aliexpress.com/w/wholesale-Shelly-Pro-3EM.html)
- Tuya WiFi alarm siren kit with 433 MHz door/PIR sensors: KERUI kit CLP 20.100 (4.6, 402 sold); generic Tuya 433 MHz kit CLP 21.900; Tuya WiFi/GSM 4G system CLP 24.600 free shipping (600+ sold); no WiFi gate/garage opener on that page — [AliExpress search Tuya alarm 433](https://www.aliexpress.com/w/wholesale-Tuya-wifi-alarm-siren-kit-433.html)
- Raspberry Pi 5 4GB: CLP 86.600 free shipping (several sellers, 234–273 sold, ratings 3.9–5.0); CLP 88.700 (4.8, 221 sold); kits CLP 103.000–347.400 — [AliExpress search Raspberry Pi 5 4GB](https://www.aliexpress.com/w/wholesale-Raspberry-Pi-5-4GB.html)

Official Sonoff store (sonoff.tech / itead):
- CAM-PT2: US$24,90 on sonoff.tech pt-br page; €25,61 on es-eu page — [sonoff.tech pt-br smart-home-selection](https://sonoff.tech/pt-br/pages/smart-home-selection); ZBDongle-E promotional US$24,90 on the same page (search-snippet data; direct fetch of sonoff.tech was rate-limited/truncated, and itead.cc returned HTTP 403)
- MINIR4M launch/pre-order price US$12,90 vs MINIR4 US$9,90 (Aug-2023, dated) — [CNX Software](https://www.cnx-software.com/2023/08/16/sonoff-minir4m-a-matter-compatible-wifi-smart-switch/); manufacturer store lists MINIR4 at US$12,90 — [sonoff.tech MINIR4](https://sonoff.tech/products/sonoff-mini-extreme-wi-fi-smart-switch-minir4)
- Sonoff official shipping policy: DHL express 4–10 business days; standard air mail 15–35 business days; free shipping on orders over US$89; times exclude processing and customs clearance — [sonoff.tech política de envío](https://sonoff.tech/es-es/policies/shipping-policy); [sonoff.tech shipping info](https://sonoff.tech/es-es/pages/shipping-info)
- Other USD references: ZBDongle-E US$35,51 (TME, qty 1) — [TME](https://www.tme.com/us/en-us/details/zbdongle-e/building-automation/sonoff/); US$30,14 (RobotShop) — [RobotShop ZBDongle-E](https://robotshop.com/es/products/sonoff-zigbee-30-temperature-humidity-sensor-snzb-02); SNZB-02 US$19,14 (RobotShop, same page); MINIR4M US$17,95 (Ameridroid) — [Ameridroid](https://ameridroid.com/products/sonoff-mini-extreme-wi-fi-smart-switch-matter-enabled); THR320D €17,49, MINIR4M €14,49, CAM-PT2 €22,99 (aio.lv, EU retail incl. VAT) — [aio.lv THR320D](https://aio.lv/en/product--sonoff-thr320d--8604351.md), [aio.lv MINIR4M](https://aio.lv/en/product--sonoff-minir4m--11671297.md), [aio.lv CAM-PT2](https://aio.lv/en/product--sonoff-cam-pt2--11581471.md)
- Shelly Pro 3EM (120A) US$154,99; Pro 3EM-400 US$329,99 (US-dollar store, country unconfirmed) — [reach.dog listing](https://reach.dog/shop/digital-bay-tech/products/shelly-pro-3em-smart-din-rail-3-phase-energy-meter); Pro 3EM-400 €272,90 official Shelly ES — [shelly.com Pro 3EM-400](https://www.shelly.com/es/products/shelly-pro-3em-400); Pro 3EM-3CT63 €130,80 — [domadoo](https://www.domadoo.fr/es/contadores-inteligentes/7728-shelly-contador-de-energia-wi-fi-en-carril-din-shelly-pro-3em-3ct63-3800235268193.html?domid=8)
- Raspberry Pi 5: official page shows only the 16GB price (US$305) — [raspberrypi.com](https://www.raspberrypi.com/products/raspberry-pi-5/); US distributors ~US$85 for 4GB — [Mouser/DigiKey via search](https://www.digikey.com/es/products/detail/raspberry-pi/SC1431/21658261)

Chilean retail (MCI Electronics via department stores; undated pages):
- Sonoff MINI R4 Extreme: CLP 14.990, "garantía de 6 meses" — [Easy.cl](https://www.easy.cl/interruptor-wifi-sonoff-mini-r4-extreme-mkq0lsnfli/p); CLP 14.990 — [Falabella Sonoff brand page](https://www.falabella.com/falabella-cl/brand/SONOFF)
- Sonoff S26 R2 (4000W/16A "patas grandes"): CLP 13.990, listing warns an adapter is needed because pin spacing is larger than Chile's; lists only FCC/CE certifications — [Paris.cl S26R2](https://www.paris.cl/enchufe-wifi-sonoff-s26-r2-4000w16a-patas-grandes-MKVQ9E4D0E.html); also at [Easy.cl](https://www.easy.cl/enchufe-wifi-sonoff-s26-r2-4000w16a-mkvq9e4d0e/p)
- Sonoff TH Elite 20A: CLP 24.990 (Falabella); pack TH Elite 20A + THS01: CLP 31.990 — [Easy.cl pack](https://www.easy.cl/pack-interruptor-wifi-th-elite-20a-sensor-ths01-mkzdwlp2bc/p); [Easy.cl TH Elite](https://www.easy.cl/interruptor-wifi-th-elite-20a-mke96h2k7s/p)
- Sonoff POW Elite 20A: CLP 24.990; Zigbee Bridge Max CLP 89.990 — [Falabella Sonoff](https://www.falabella.com/falabella-cl/brand/SONOFF)
- Raspberry Pi 5 4GB: CLP 195.990 (board) — [Paris.cl](https://www.paris.cl/raspberry-pi-5-de-4gb-ram-MKHDV6XW0T.html); kit with original accessories CLP 231.990 (MCI on Falabella) — [Falabella Raspberry Pi](https://www.falabella.com/falabella-cl/brand/RASPBERRY%20PI)
- MCI Electronics is Sonoff's listed distributor in Chile (Los Militares 5953, Las Condes) and offers installation service — [Sonoff: MCI Electronics in Chile](https://testshoppingcart.sonoff.tech/?p=21964); [Sonoff where-to-buy](https://sonoff.tech/es-es/pages/where-to-buy)

### Inferences
Landed-cost table ("precio puesto en Santiago", CLP, 1.000 CLP/USD). AliExpress column = displayed CLP price (IVA incl.) + CLP 0 shipping where "Envío gratis"; Official-store column = USD price × 1.000 × 1,19 + share of shipping (assume free standard shipping on a >US$89 order; add ~CLP 3.000–8.000 courier handling per parcel, not per item).

| Product | AliExpress landed (CLP) | Official Sonoff/other store landed (CLP, est.) | Chile retail (CLP) |
|---|---|---|---|
| CAM-PT2 | ~17.100 (best) / ~34.000 (typical) | US$24,90 → ~29.600 + fee | not found |
| CAM-B1P | ~49.000 | not found | not found |
| MINIR4M | ~12.500–13.200 | US$12,90–17,95 → ~15.400–21.400 + fee | 14.990 (MINIR4, non-Matter) |
| MINIR4 | ~10.330 | US$12,90 → ~15.400 + fee | 14.990 |
| S26R2 (EU) | not found | not found | 13.990 (needs adapter) |
| S40 | not found | not found | not found |
| POWCT | ~33.200 (promo) / ~56.600 | not found | not found (POW Elite 20A 24.990 for reference) |
| THR320D | ~14.100 | €17,49 EU retail → ~20.000 ex-VAT equiv | 24.990 (31.990 with THS01) |
| WTS01 | not found | not found | not found |
| DW2-WiFi | not found | not found | not found |
| Basic R4 | not found | not found | not found |
| Tuya 433 siren kit | ~20.100–24.600 | n/a | not found |
| WiFi gate opener | not found | n/a | not found |
| Raspberry Pi 5 4GB | ~86.600 | US$85 (Mouser/DigiKey) → ~101.000 + fee | 195.990 |
| ZBDongle-E | ~16.100–19.490 | US$24,90 → ~29.600 + fee | not found |
| SNZB-04 | ~2.200 (suspicious promo) | not found | not found |
| SNZB-02 | bundle only | US$19,14 → ~22.800 + fee | not found |
| Shelly Pro 3EM 120A | ~118.200 | US$154,99 → ~184.400 + fee | not found |

- Single-item orders from the official Sonoff store under US$89 pay shipping on top, making them clearly worse than AliExpress; the official store only competes for bulk/warranty reasons, not price.
- The AliExpress "best" prices (CLP 17.100 CAM-PT2, CLP 2.214 SNZB-04, CLP 33.200 POWCT) carry first-order/variant discount labels; a repeat business buyer should budget the "typical" listing price (second figure).

### Gaps
- Temu: no product prices obtained (pages fetched showed no amounts); Temu Chile shipping page gives no delivery days or minimums.
- itead.cc blocked (HTTP 403) and sonoff.tech rate-limited (HTTP 429) — official USD prices for S26R2, S40, POWCT, THR320D, WTS01, DW2-WiFi, Basic R4, SNZB-04, GlassView were not captured.
- No AliExpress listing found for S26R2, S40, DW2-WiFi, Basic R4, WTS01, GlassView, WiFi gate opener in the pages fetched (search pages return mixed results).
- No Chilean retail price found for CAM-PT2, CAM-B1P, POWCT, ZBDongle-E, SNZB sensors, Shelly Pro 3EM, Tuya kits; no mercadolibre.cl listings surfaced.
- Official Raspberry Pi 5 4GB USD price not visible on the fetched page.

## Q3. Delivery times to Santiago and reliability of AliExpress Choice / local-warehouse listings

### Takeaway
Published ranges: AliExpress Choice ~7–15 days, Standard 20–40 days, Saver 20–45 days, Cainiao Super Economy 30–75 days; Temu standard ~10–20 days to Chile; Sonoff official DHL 4–10 business days or standard air 15–35 business days. I found no evidence of a genuine "Entrega desde Chile"/local-warehouse AliExpress program for Chile; tracking frequently shows "última milla/entregado" when the parcel has only reached the Santiago regional hub.

### Cited Findings
- AliExpress to Chile: Choice 7–15 days; Standard Shipping 20–40 days; Saver 20–45 days; Cainiao Super Economy 30–75 days; last mile mostly Correos de Chile — [Wise: Cómo comprar en AliExpress desde Chile](https://wise.com/cl/blog/como-comprar-en-aliexpress-desde-chile)
- AliExpress Choice in Chile ~15 days (marketing blog, Apr-2026) — [AliDrop](https://www.alidrop.co/blogs/what-is-aliexpress-choice)
- Saver shipping 25–60 days (Global66) — [Global66 blog](https://www.global66.com/blog/?p=18303)
- A 2026 dropshipping analysis says an AliExpress order can take 15–45 business days to reach a Chilean customer — [andreybusiness.com](https://www.andreybusiness.com/chile/blog/aliexpress-vs-temu-dropshipping-contra-entrega-2026)
- User case: tracking marked "Última milla"/"Entregado" when parcel had only reached the regional distribution warehouse in Santiago — [JustAnswer case](https://www.justanswer.es/informatica-es/uw4u2-hola-no-se-si-puedan-ayudar-como-puedo-saber-que.html); July-2026 complaint that AliExpress disregards Correos de Chile delivery proofs — [reclamos.cl Jul-2026](https://www.reclamos.cl/aliexpress/reclamo/2026/jul/aliexpress-la-plataforma-desconoce-los-comprobantes-de-envio-de-correos-de-chile)
- Temu: standard and pickup-point shipping free above a minimum (amount not shown); first return free within 90 days; return label works only within Chile — [Temu Chile shipping info](https://www.temu.com/cl/shipping-info.html); [Temu Chile return policy](https://www.temu.com/cl/return-and-refund-policy.html); Chile 10–20 days (guide) — [Tiendanube guide](https://www.tiendanube.com/blog/como-comprar-en-temu-desde-chile/); Latin America standard 8–21 business days — [La República](https://www.larepublica.co/consumo/entre-8-y-21-dias-tiempos-de-entrega-prometidos-por-plataformas-como-temu-y-shein-4063108)
- Sonoff official store: DHL express 4–10 business days, standard 15–35 business days (another page says 2–4 weeks), free over US$89, excluding processing and customs — [sonoff.tech shipping policy](https://sonoff.tech/es-es/policies/shipping-policy)
- Local alternative: Falabella Sonoff listings show free shipping with same-day/next-day delivery — [Falabella Sonoff](https://www.falabella.com/falabella-cl/brand/SONOFF)

### Inferences
- For an installer with scheduled jobs, AliExpress Choice (~2 weeks) is workable only with 3–4 weeks of buffer stock; Standard/Saver (3–6 weeks) requires forward stocking.
- The "Envío gratis" label on AliExpress Chile listings does not identify Choice vs. seller shipping; the fetched search pages do not expose Choice badges, so Choice reliability could not be assessed from listings.

### Gaps
- No Reddit/r/chile threads surfaced in any search; no first-hand 2025–2026 Chilean delivery-time data beyond the cases above.
- No evidence found for an AliExpress "Entrega desde Chile" local-warehouse program (unconfirmed, not disproved).

## Q4. Warranty (SERNAC), SEC certification, plug type

### Takeaway
A Chilean reseller/installer owes the 6-month legal warranty (repair, replacement or refund at the consumer's choice) regardless of where it sourced the product and cannot require the consumer to exhaust the manufacturer's warranty first. Selling electrical products that require SEC certification without it is an "infracción objetiva" (Supreme Court upheld a 100 UTM fine in 2025); I could not find any SEC certificate record for Sonoff models, and MCI's own listings show only CE/FCC or state "No requiere código QR SEC". EU-plug S26R2 needs a certified Schuko-to-Chile adapter (4,8 mm vs 4 mm pins).

### Cited Findings
- Garantía legal: within 6 months from delivery the consumer chooses refund, exchange or free repair; repair time suspends the term; providers cannot impose an order of preference or require exhausting the manufacturer's (convencional) warranty first; cannot condition exchange on original packaging; "sin cambio y devolución" notices are invalid — [SERNAC garantía legal](https://www.sernac.cl/portal/604/w3-article-88030.html); [SERNAC article 88457](https://www.sernac.cl/604/w3-article-88457.html); [SERNAC 87921](https://www.sernac.cl/portal/604/w3-article-87921.html)
- SERNAC circular interpretativa (Jan-2026) fixing criteria for garantía convencional/voluntaria — [Diario Financiero](https://www.df.cl/economia-y-politica/actualidad/garantias-sin-letra-chica-sernac-fija-criterios-en-nueva-circular-y)
- SERNAC fiscalized "mall chinos" (25-Jun-2026) checking Spanish labelling and warranty info on imported goods; fiscalized e-commerce platforms (Sep-2026) and Cyber Monday (Oct-2026) for warranty disclosure — [SERNAC 89178](https://www.sernac.cl/604/w3-article-89178.html); [Radio Agricultura Sep-2026](https://www.radioagricultura.cl/noticias/nacional/sernac-fiscaliza-plataformas-de-comercio-electronico-por-informacion-sobre-garantia-legal-a-consumidores_20260909/); [Radio Agricultura Oct-2026](https://www.radioagricultura.cl/noticias/nacional/sernac-fiscaliza-el-cyber-monday-revisara-si-las-empresas-informan-correctamente-la-garantia-legal_20261005/)
- MCI's local MINIR4 listing advertises "garantía de 6 meses" — [Easy.cl](https://www.easy.cl/interruptor-wifi-sonoff-mini-r4-extreme-mkq0lsnfli/p)
- SEC: electrical products sold in Chile must be certified; importers/manufacturers may request authorization to sell when no SEC-authorized certification body exists; foreign certifications can be recognized (Sistema de Certificación N°6); contact contacto@sec.cl — [ChileAtiende 2644](https://www.chileatiende.gob.cl/fichas/2644-autorizacion-para-comercializar-productos-electricos-a-gas-y-o-combustibles-liquidos); [ChileAtiende 2698](https://www.chileatiende.gob.cl/fichas/2698-autorizacion-para-usar-laboratorios-extranjeros-para-efectuar-ensayos-a-productos-electricos-a-gas-yo-de-combustibles-liquidos)
- Verifying certification: SEC seal carries a QR/number that can be checked on sec.cl — [ChileAtiende 24131](https://www.chileatiende.gob.cl/fichas/24131-verificar-la-certificacion-de-productos-electricos-y-de-combustibles)
- Supreme Court (reported 19-Nov-2025) upheld a 100 UTM SEC fine (Res. Ex. N° 33.088, 10-Jul-2025) for selling electrical appliances without safety certification, without SEC QR seal and without safety warnings; selling without certification is an "infracción objetiva"; small quantity is no defense — [Diario Constitucional](https://www.diarioconstitucional.cl/2025/11/19/corte-suprema-confirma-multa-de-100-utm-por-venta-de-artefactos-electricos-sin-certificacion-seguridad-publica-justifica-sancion/)
- MCI listing for Sonoff SwitchMan M5 2C (Matter) states "No Requiere Código QR SEC" (seller claim) — [Paris.cl SwitchMan M5](https://www.paris.cl/interruptor-wifi-de-pared-sonoff-switchman-m5-2c-matter-MKLS6M16D6.html); S26R2 listing shows only FCC and CE — [Paris.cl S26R2](https://www.paris.cl/enchufe-wifi-sonoff-s26-r2-4000w16a-patas-grandes-MKVQ9E4D0E.html)
- TE1 = "Declaración de instalaciones eléctricas interiores" (SEC) — [ChileAtiende 2656](https://www.chileatiende.gob.cl/fichas/2656/1/pdf)
- Plug: Type L is used only in Italy and Chile — [MercadoLibre guide](https://www.mercadolibre.cl/blog/guia-enchufes-para-cocina); Schuko pins are 4,8 mm vs Chile 4 mm, adapters sold as "Certificado SEC" (10A) — [Easy.cl adaptador Schuko](https://www.easy.cl/pack-4-adaptador-enchufe-schuko-hembra-electrico-10a-sec-mka7210urv/p); some Schuko 16A plugs "pueden entrar con fuerza" — [Ripley adaptador](https://simple.ripley.cl/adaptador-schuko-bipaso-enchufe-corriente-macrotel-universal-me-1112-mpm10003406642)

### Inferences
- An installer that resells imported Sonoff gear is the "proveedor" for SERNAC purposes and bears the 6-month legal warranty itself; AliExpress seller disputes (typically 15–90 days) do not cover that period, so a spare-parts float is needed.
- Whether DIY relay modules (MINIR4, TH Elite, Basic) fall under a mandatory SEC certification protocol is unclear; MCI's "no requiere QR SEC" claim suggests at least some Sonoff SKUs are outside mandatory protocols, but plug-in devices (S26R2/S40) and power supplies are typically within scope. Confirm per-product with SEC before reselling.
- S26R2 EU plug: usable only with a 10A/16A SEC-certified adapter; S40 (Chile/Italy type L) would avoid this but no price found.

### Gaps
- No SEC product-certification record found for any Sonoff model; the SEC search tool was not queried directly.
- No source addresses sanctions for an installer who installs uncertified devices (vs. selling them); no SEC rule specific to domotics found.

## Q5. Does bulk import (Alibaba, Itead wholesale) make sense for 2–8 installs/month?

### Takeaway
Sonoff/Itead has a formal distributor program with a minimum initial purchase and annual volume (amounts not published); Alibaba MINIR4 listings show MOQ 5 pieces but implausible per-unit prices. At 2–8 installs/month (roughly 10–60 devices/month), AliExpress multi-unit listings (price breaks at 2–3+ units) already deliver most of the savings without the >US$500 duty regime.

### Cited Findings
- Sonoff "Become a distributor": requirements include a legally compliant company, minimum initial purchase amount, annual purchase volume, stock-up ability; benefits: competitive pricing, priority shipping, samples, official listing; figures not published — [sonoff.tech become-a-distributor](https://sonoff.tech/become-a-distributor); application form — [sonoff.tech distributor application](https://sonoff.tech/es-es/pages/distributor-application-form)
- Alibaba MINIR4 listings: MOQ 5 pieces; tiered prices £541/£526/£511 (5–99/100–999/1000+) and £520/£505/£443 — roughly 40× retail, likely placeholder or bundle pricing; shipping "to be negotiated" — [Alibaba listing 1](https://www.alibaba.co.uk/product-detail/SONOFF-MiniR4-Smart-Wifi-Switch-2_1601626128328.html); [Alibaba listing 2](https://www.alibaba.co.uk/product-detail/SONOFF-MINI-R4-Wifi-Switch-Module_1601626057625.html)
- AliExpress quantity breaks observed: ZBDongle-E CLP 16.100 → 15.300 each for 2+; CAM-PT2 CLP 36.000 → 32.498 each for 3+; TH Elite 3-pack CLP 41.400 (~13.800 each) — [AliExpress ZBDongle-E](https://www.aliexpress.com/w/wholesale-Sonoff-ZBDongle-E.html); [AliExpress CAM-PT2](https://www.aliexpress.com/w/wholesale-Sonoff-CAM-PT2.html); [AliExpress TH Elite](https://www.aliexpress.com/w/wholesale-Sonoff-THR320D-TH-Elite.html)
- Above US$500 per shipment: 6% duty + 19% IVA on CIF+duty, plus courier/agent costs; FTA certificate of origin can reduce duty to 0% — [ivachile.cl](https://www.ivachile.cl/iva-compras-internacionales.html); [Aduana example](https://www.aduana.cl/cuanto-impuesto-se-paga-al-importar/aduana/2022-06-29/121230.html)
- Chile–China FTA: Correos notes general-regime duty may be 1,5%/6% depending on regime — [Correos proceso de internación](https://www.correos.cl/proceso-de-internacion-e-impuestos)

### Inferences
- A monthly AliExpress basket of, e.g., 8× MINIR4M + 4× TH Elite + 2× CAM-PT2 + 2× ZBDongle-E ≈ CLP 230.000 (~US$230) stays under the US$500 threshold, duty-free, IVA at checkout; splitting orders into <US$500 parcels avoids the general regime, but Aduana's "sin fines comerciales" wording means a business doing this repeatedly is formally in a gray zone.
- Bulk via Alibaba/Itead wholesale only pays off at volumes well above 60 units/month, once a customs agent (~CLP 50.000–100.000 per despacho is typical but unverified here), 6% duty (or 0% with China-FTA certificate of origin), IVA, and SEC certification costs are included.

### Gaps
- Itead/Sonoff distributor minimum purchase and price breaks not published; need direct contact.
- No credible Alibaba unit prices for Sonoff items found (listings appear mispriced).
- Customs-agent fees for a commercial import under the general regime were not researched.
