[neopixel side_bars]
pin: expander:PB1 # replace with your own pin
chain_count: 32
color_order: GRBW
initial_RED: 0.6
initial_GREEN: 0.0
initial_BLUE: 0.0
initial_WHITE: 0.0

[gcode_macro M73]
#   store progress % and remaining time as variables
rename_existing: M733
variable_p: 0.0
variable_r: 0.0
variable_leds: 32 #leds count that I want to use as progressbar
variable_offset: 1 #index of the first led of the progressbar at the whole long neopixel strip. begins with 1
default_parameter_P: 0.0
default_parameter_R: 0.0
gcode:
    SET_GCODE_VARIABLE MACRO=M73 VARIABLE=p VALUE={P}
    SET_GCODE_VARIABLE MACRO=M73 VARIABLE=r VALUE={R}
    {% if 'P' in params %}
        {action_respond_info(params.P|string)}
        {% set print_Progress = ((((((params.P)|float)*100)/100)/100*leds)|int) %}

        {% if print_Progress != leds %}
            SET_LED LED=side_bars RED={(((((params.P)|float)/100*leds)|float) - (print_Progress))/2} GREEN=0 BLUE={(1-(((((params.P)|float)/100*leds)|float) - (print_Progress)))/2} INDEX={print_Progress + 1} TRANSMIT=0 #light up the last pixel, with its brightness according to the remainder.
        {% endif %}
        

        {% for led in range(0, print_Progress ) %}
            {% if led != 0 %}
                SET_LED LED=side_bars RED=0.5 GREEN=0 BLUE=0 INDEX={led} TRANSMIT=1 #Light up to maximum all the leds that are filled completely with their progess
            {% endif %}
        {% endfor %}
        {% if print_Progress <= (leds - 2) %}
            {% for led in range((print_Progress + 2), leds ) %}
                SET_LED LED=side_bars RED=0 GREEN=0 BLUE=0.5 INDEX={led} TRANSMIT=0  #shut all the rest leds in progressbar.
            {% endfor %}
        {% endif %}
    
    {% endif %}

[gcode_macro SIDE_BARS_FLASHING_RED_BLUE]
gcode:
    # add SIDE_BARS_FLASHING_RED_BLUE to the Print_Start before the Purge_Line
    {% for i in range(1, 15) %}
        SET_LED LED=side_bars RED=0.5 GREEN=0 BLUE=0
        G4 P60
        SET_LED LED=side_bars RED=0 GREEN=0 BLUE=0.5
        G4 P60
    {% endfor %}