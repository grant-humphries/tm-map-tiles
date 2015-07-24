// trimet transit lines

#tm-district {
  line-color: @tm-district;
  line-width: 1;
  line-dasharray: 4, 2;
}

#tm-bus[zoom>=11] {
  [frequent=true] { line-color: @bus; }
  [frequent=false] { line-color: @bus; }
  
  [zoom=11] {
	[frequent=true] { line-width: 1; }
    [frequent=false] { line-width: 0.4; }
  }
  [zoom=12] {
	[frequent=true] { line-width: 1; }
    [frequent=false] { line-width: 0.4; }
  }
  [zoom=13] {
	[frequent=true] { line-width: 1; }
    [frequent=false] { line-width: 0.4; }
  }
  [zoom=14] {
	[frequent=true] { line-width: @loc_z14; }
    [frequent=false] { line-width: @srv_z14; }
  }
  [zoom=15] {
	[frequent=true] { line-width: @loc_z15; }
    [frequent=false] { line-width: @srv_z15; }
  }
  [zoom=16] {
	[frequent=true] { line-width: @loc_z16; }
    [frequent=false] { line-width: @srv_z16; }
  }
  [zoom=17] {
	[frequent=true] { line-width: @loc_z17; }
    [frequent=false] { line-width: @srv_z17; }
  }
  [zoom=18] {
	[frequent=true] { line-width: @loc_z18; }
    [frequent=false] { line-width: @srv_z18; }
  }
}

#tm-rail {
  // max light-rail
  [type='MAX'] {
    line-width: 3;
  
    [line='B'] { line-color: @max-blue; }
    [line='R'] { line-color: @max-red; }
    [line='Y'] { line-color: @max-yellow; }
    [line='G'] {line-color: @max-green; }  
    [line='BG'] {
      ::b {
        line-color: @max-blue;
        line-offset: 1.5;
        line-width: 3; }
      //g
        line-color: @max-green;
        line-offset: -1.5; }
    [line='BR'] {
      ::b {
        line-color: @max-blue;
        line-offset: 1.5;
        line-width: 3; }
      //r
        line-color: @max-red;
        line-offset: -1.5; } 
    [line='GY'] {
      ::g {
        line-color: @max-green;
        line-offset: 1.5;
        line-width: 3; }
      //y
        line-color: @max-yellow;
        line-offset: -1.5; }
    [line='BGR'] {
      ::b {
        line-color: @max-blue;
        line-offset: 3;
        line-width: 3; }
      ::g { 
        line-color: @max-green;
        line-width: 3; }
      //r
        line-color: @max-red;
        line-offset: -3; }
    [line='BGRY'] {
      ::b {
        line-color: @max-blue;
        line-offset: 1.5;
        line-width: 3; }
      ::g {
        line-color: @max-green;
        line-offset: -1.5;
        line-width: 3; }
      ::r {
        line-color: @max-red;
        line-offset: -4.5;
        line-width: 3; }
      //y
        line-color: @max-yellow;
        line-offset: 4.5; }
  }
      
  // steetcar
  [type='SC'] {
    line-width: 2;	

    [line='NS'] { line-color: @streetcar-ns; }
    [line='CL'] {line-color: @streetcar-cl; }
  	[line='NS/CL'] {
      ::ns {
        line-color: @streetcar-ns;
        line-offset: 1;
        line-width: 2; }
      //cl
        line-color: @streetcar-cl;
        line-offset: -1; }
  }
  
  // WES
  [type='CR'] {
    line-color: @wes;
    line-width: 2.5;
  }
}