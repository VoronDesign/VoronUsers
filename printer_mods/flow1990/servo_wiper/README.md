<h1>Servo Wiper for Voron Switchwire!</h1>
<hr>
<div>Attention! Depending on how much space you have between your bed and your X-Motor you will loose some space on x, this will only affect large prints and I am working on a solution for this.</div>
<hr>
<div>
  <p>Since I wanted something to clean my nozzle automatically on my Voron Switchwire I came up with this idea. It is really simple!</p>
    <img src='https://github.com/flow1990/VoronUsers/blob/master/printer_mods/flow1990/servo_wiper/Images/front_view_fusion.png' width='500px'>
  <img src='https://github.com/flow1990/VoronUsers/blob/master/printer_mods/flow1990/servo_wiper/Images/image1.jpeg' width='500px'>
</div>
<hr>
<div>
  <h3><B>BOM</B></h3>
  <ul>
    <li>Brass Brush (it is important that it is real brass, it is supposed <B>NOT</B> to be magnetic. I use this one: <a href='https://www.replimat.eu/brass-brush/rt10044'>replimat.eu</a>)</li>
    <li>BHCS M3x50 x2</li>
    <li>BHCS M3x10 x1</li>
    <li>BHCS M3x6 x4</li>
    <li>M3 Heatset Inserts x5</li>
    <li>MG90S Servo</li>
    <li>N42 Magnets 6x3mm x2</li>
  </ul>
</div>
<hr>
<div>
  <h3><B>Installation</B></h3>
  <dl>
    <dt>Step Zero:</dt>
    <dd>Break out the included supports from the brush_catridge.stl</dd>
    <dt>Step One:</dt>
    <dd>The installation is really simple, you just have to cut the brush at 41mm (between 40 and 41 is okay if you accidentally cut to much you can use tape to hold it in place.</dd>
    <dt>Step Two:</dt>
    <dd>Insert the heatsets, if you are not sure where to put them you can use the CAD files.</dd>
    <dt>Step Three:</dt>
    <dd><img src='https://github.com/flow1990/VoronUsers/blob/master/printer_mods/flow1990/servo_wiper/Images/motor_mount.jpeg' width='500px'</dd>
    <dd>Assemble anything like seen in the CAD files. you have to loosen two screws from your X-Motor, this is where the M3x50 screws will go in. Do not attach the servo arm to the motor yet.</dd>
    <dt>Step Four:</dt>
    <dd><img src='https://github.com/flow1990/VoronUsers/blob/master/printer_mods/flow1990/servo_wiper/Images/wiring.png' width='500px'</dd>
    <dd>Wire the servo like seen in the picture (at least if you use a SKR MINI E3 V3).</dd>
    <dt>Step Five:</dt>
    <dd>Include the BRUSH.cfg in your config. Send <B>_BRUSH_SERVO_TEST_ANGLE angle=90</B> to your printer to check if the servo is working. If it works bring it in deploy position with <B>_BRUSH_SERVO_TEST_ANGLE angle=170</B></dd>
    <dt>Step Six:</dt>
    <dd><img src='https://github.com/flow1990/VoronUsers/blob/master/printer_mods/flow1990/servo_wiper/Images/arm.jpeg' width='500px'></dd> 
    <dd>Now you can attach the arm to the servo, you need the big arm thing that comes with the servo (see picture above). Check that the servo is in angle=170deg position and be sure to attach the arm beeing in the deploy position (above the print bed).</dd>
    <dt>Step Seven:</dt>
    <dd>Move your toolhead (<I>G0 X?? Z??</I>)so it is right ABOV the brush and insert the X and Z coordinates in the BRUSH.cfg</dd>
    <dt>Step Eight:</dt>
    <dd>Now find a position where the toolhead is not touching the brush, this is supposed to be your save position.</dd>
    <dt>Step Nine:</dt>
    <dd>Check the BRUSH.cfg for the other variables, everything is explained there.</dd>
  </dl>
  <p><B>Thats it!</B> You can now include <I>CLEAN_NOZZLE</I> in your start macro.</p>
</div>
