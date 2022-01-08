# Firmware Configurations

Firmware Configurations for Voron 3D printers, separated by firmware.
Remember to update this README when uploading new firmware configurations!

## Legacy printers

Configurations for legacy printers can be found [here](../legacy_printers/firmware_configurations). 
If one of your configurations applies to a current generation Voron printer, contact the admins in 
Discord to have your mod moved to this folder.

## Table structure

Update the following table with the information about your mod:
- Your name
- A link to your sub-folder
- A short description of your firmware config
- The printer compatibility. Use `:heavy_check_mark:` for :heavy_check_mark:,`:x:` for :x: and `:grey_question:` for :grey_question:

like so:
`
| Creator | [Config Title](link) | Description | :x: | :x: | :x: | :x: |`

---

## Klipper

| Creator | Config title | Description | V0 | V1.8 | V2.4 | VSW | VT |
| --- | --- | --- | --- | --- | --- | --- | --- |
| jaeger | [FYSETC Spider on V1.8](./klipper/jaeger/Spider_1.1_V1.8) | Example configuration and wiring diagram for a FYSETC Spider 1.1 board on the V1.8 | :x: | :heavy_check_mark: | :x: | :x: | :x: |
| MarcPot | [Fysetc Spider Board Pins](./klipper/MarcPot/fysetc_spider_pins) | Defines a set of `[board_pins]` aliases for use with the Fysetc Spider controller | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :x: |
| Mellow | [Fly-Super8 on V2.4](./klipper/Mellow/FLY-Super8) | Example configuration and wiring diagram for a FLY-Super8 board on the V2.4 | :x: | :x: | :heavy_check_mark: | :x: | :x: |
| Mellow | [Fly-Gemini on v0](./klipper/Mellow/FLY-Gemini) | Sample configuration and wiring diagram of Fly-Gemini Linux integrated motherboard in v0 and v0.1 | :heavy_check_mark: | :x: | :x: | :x: | :x: |
| revnull | [BTT Octopus Board Pins](./klipper/revnull/btt_octopus_pins) | Defines a set of `[board_pins]` aliases for use with the BTT Octopus controller | :grey_question: | :grey_question: | :heavy_check_mark: | :grey_question: | :x: |
| RealDeuce | [MKS Makerbase Monster8 v1.0_003](./klipper/RealDeuce/MKS-Makerbase/Monster8_v1.0_003/) | Configuration and instructions for installing an MKS Makerbase Monster8 board | :x: | :x: | :heavy_check_mark: | :x: | :x: |
| TechnoPhreak | [BTT SKR v2 for V2.4](./klipper/TechnoPhreak/BTT_SKR_v2) | Example configuration, wiring diagram and special instructions for the BTT SKR v2 controllers | :grey_question: | :grey_question: | :heavy_check_mark: | :grey_question: |

---

## RepRapFirmware

| Creator | Config title | Description | V0 | V1.8 | V2.4 | VSW |
| --- | --- | --- | --- | --- | --- | --- |
| DorjeDorf | [Duet 3 Config](./reprapfirmware/DorjeDorf) | RRF 3.3 example config | :x: | :x: | :heavy_check_mark: | :x: |
| fulg | [Duet 2 Config](./reprapfirmware/fulg) | RRF 2.05 example config | :x: | :x: | :heavy_check_mark: | :x: |

---