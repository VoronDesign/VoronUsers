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

| Creator | Config title | Description | V0 | V1.8 | V2.4 | VSW |
| --- | --- | --- | --- | --- | --- | --- |
| revnull | [BTT Octopus Board Pins](./klipper/revnull/btt_octopus_pins) | Defines a set of `[board_pins]` aliases for use with the BTT Octopus controller | :grey_question: | :grey_question: | :heavy_check_mark: | :grey_question: |
| jaeger | [FYSETC Spider on V1.8](./klipper/jaeger/Spider_1.1_V1.8) | Example configuration and wiring diagram for a FYSETC Spider 1.1 board on the V1.8 | :x: | :heavy_check_mark: | :x: | :x: |

---

## RepRapFirmware

| Creator | Config title | Description | V0 | V1.8 | V2.4 | VSW |
| --- | --- | --- | --- | --- | --- | --- |
| DorjeDorf | [Duet 3 Config](./reprapfirmware/DorjeDorf) | RRF 3.3 example config | :x: | :x: | :heavy_check_mark: | :x: |
| fulg | [Duet 2 Config](./reprapfirmware/fulg) | RRF 2.05 example config | :x: | :x: | :heavy_check_mark: | :x: |

---
