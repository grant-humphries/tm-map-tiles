// trimet transit lines

#tm-bus {
  line-color: @bus;
  line-width: 2.5;
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