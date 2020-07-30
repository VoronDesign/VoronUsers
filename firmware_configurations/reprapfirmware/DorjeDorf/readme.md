Still very much a work in progress.

While I absolutely appreciate macros, I'm not a huge fan of them :) 

This setup is valid for RRF3 on a Duet 3 6HC main board with a 3HC daugher board.
Most things are connected to the main board, but the extruder motor and fan are on the daugher board along with electronics fans (in my case it's also caused by the voltages). 

There is a limitation currently where you can't control items on one board with temp sensors from another board so some things need to be handled manually (I turn on electronics fans manually in my start gcode, although I'll probably macro it :) ).
