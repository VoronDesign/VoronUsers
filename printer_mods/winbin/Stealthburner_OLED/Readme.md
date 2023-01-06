Stealthburner OLED
============

Hardware
------
- OLED Display

```
Display Size: 0.49 inch
Dimension: 15x16 mm
Display area: 11.2x5.6mm
Display Driver IC: SSD1306
Resolution： 64x32
Port: IIC
Operating Voltage: 3.3-5V
Display color: Blue or White (Optional)
```

![Image oled](Images/0.49.jpg)
- BIQU EBB36

![Image ebb36](Images/EBB-36.jpg)

Klipper Config
------

```
[display]
lcd_type: ssd1306
i2c_mcu: EBBCan
i2c_bus: i2c3_PB3_PB4
display_group: sb_oled

[display_data sb_oled x]
position: 2, 4
text: { render("_x") }

[display_data sb_oled y]
position: 3, 4
text:  { render("_y") }

[display_data sb_oled bed]
position: 2,10
text:  { render("_bed") }

[display_data sb_oled fan]
position: 3, 10
text:  { render("_fan")}



[display_template _x]
text:
  {% if printer.display_status.message %}
    { printer.display_status.message }
  {% elif printer.idle_timeout.printing_time %}
    {% set pos = printer.toolhead.position %}
    { "X%-4.0f" % (pos.x) }
  {% else %}
    Bigo
  {% endif %}

[display_template _y]
text:
  {% if printer.idle_timeout.printing_time %}
    {% set pos = printer.toolhead.position %}
    { "Y%-4.0f" % (pos.y) }
  {% else %}
    Voron
  {% endif %}

[display_template _bed]
text:
  {% set heater = printer.heater_bed %}
      {% if heater.target %}
        {% set frame = (printer.toolhead.estimated_print_time|int % 2) + 1 %}
        ~bed_heat{frame}~
      {% else %}
        ~bed~
      {% endif %}

[display_template _fan]
text:
  {% if 'fan' in printer %}
    {% set speed = printer.fan.speed %}
    {% if speed %}
      {% set frame = (printer.toolhead.estimated_print_time|int % 2) + 1 %}
      ~fan{frame}~
    {% else %}
      ~fan1~
    {% endif %}
    { "{:>4.0%}".format(speed) }
  {% endif %}
```

Images
------

![Image](Images/1.JPG)

![Image](Images/2.jpg)
