// streets, trails and freight rail

@fwy_z10: 1.5;   @hwy_z10: 1;    @mja_z10: 0;    @mna_z10: 0; 
@fwy_z11: 2;     @hwy_z11: 1.13; @mja_z11: .4;   @mna_z11: 0; 
@fwy_z12: 2.5;   @hwy_z12: 1.25; @mja_z12: 1.25; @mna_z12: 0.4; 

#streets-low-zm[zoom>=10][zoom<=12] {
  line-color: @street-dark;
  line-join: round;
  line-cap: round;
 
  [zoom=10] {
    [class_lz='freeway'] { line-width: @fwy_z10; line-color: @street-casing; }
	[class_lz='highway'] { line-width: @hwy_z10; }    
    [class_lz='major_arterial'] { line-width: @mja_z10; }
	[class_lz='minor_arterial'] { line-width: @mna_z10; }
  }
  [zoom=11] {
    [class_lz='freeway'] { line-width: @fwy_z11; line-color: @street-casing; }
    [class_lz='highway'] { line-width: @hwy_z11; }
    [class_lz='major_arterial'] { line-width: @mja_z11; }
    [class_lz='minor_arterial'] { line-width: @mna_z11; }
  }
  [zoom=12] {
    [class_lz='freeway'] { line-width: @fwy_z12; line-color: @street-casing; }
    [class_lz='highway'] { line-width: @hwy_z12; }
    [class_lz='major_arterial'] { line-width: @mja_z12; }
    [class_lz='minor_arterial'] { line-width: @mna_z12; }
  }
}

// Casing (or fill if the way consists of only one element)
#streets-high-zm::casing[zoom>=13][zoom<=18],
#bridges[component='casing'][zoom>=13][zoom<=18],
#tunnels[component='casing'][zoom>=13][zoom<=18] {
  line-join: round;
  line-cap: round;
  
  [type='street'] { line-color: @street-casing; }
  [type='freight-rail'] { 
    line-color: darken(@street-casing, 10%);
    line-width: 0;
  }
  [type='path'] {
    line-color: @path-halo;
    line-opacity: .4;
    line-cap: butt;
    line-width: 0;
  }
  [bridge='yes'],[tunnel='yes'] { 
    line-cap: butt;
    line-opacity: 1;
  }
  [bridge='yes'] { line-color: darken(@street-casing, 15%); }
  [tunnel='yes'] { line-color: @street-dark; }
  
  [zoom=13] {
    [class='freeway'] { line-width: @fwy_z13 + .8; }
    [class='arterial'] { line-width: 0; }
    [class='local'] { line-width: 0; }
    [class='service'] { line-width: 0; }
  }
  [zoom=14] {
    [class='freeway'] { line-width: @fwy_z14 + .8; }
    [class='arterial'] { line-width: @art_z14 + .8; }
    [class='local'] { line-width: 0; }
    [class='service'] { line-width: 0; }
  }
  [zoom=15] {
    [class='freeway'] { line-width: @fwy_z15 + 1; }
    [class='arterial'] { line-width: @art_z15 + 1; }
    [class='local'] { line-width: @loc_z15 + .8; }
    [class='service'] { line-width: 0; }
    [class='mainline'] {line-width: 1.8; }
  }
  [zoom=16] {
    [class='freeway'] { line-width: @fwy_z16 + 1.5 }
    [class='arterial'] { line-width: @art_z16 + 1.5; }
    [class='local'] { line-width: @loc_z16 + 1.25; }
    [class='service'] { line-width: @srv_z16 + 1; }
    [class='mainline'] {line-width: 2.25; }
    [class='trail'] { line-width: @trl_z16 + 2; }
  }
  [zoom=17] {
    [class='freeway'] { line-width: @fwy_z17 + 2; }
    [class='arterial'] { line-width: @art_z17 + 2; }
    [class='local'] { line-width: @loc_z17 + 1.5; }
    [class='service'] { line-width: @srv_z17 + .8; }
    [class='mainline'] {line-width: 2.5; }
    [class='siding'] {line-width: 1.8; }
    [class='trail'] { line-width: @trl_z17 + 2.5; }
  }
  [zoom=18] {
    [class='freeway'] { line-width: @fwy_z18 + 2.5; }
    [class='arterial'] { line-width: @art_z18 + 2.5; }
    [class='local'] { line-width: @loc_z18 + 2; }
    [class='service'] { line-width: @srv_z18 + 1.5; }
    [class='dirt-road'] { line-width: 1; }
    [class='mainline'] {line-width: 3; }
    [class='siding'] {line-width: 2; }
    [class='trail'] { line-width: @trl_z18 + 3; }
    [class='stairs'] {line-width: 1; }
  }
}

// high zoom street widths 
// (casing widths are derived from these fill widths)
@fwy_z13: 3.5; @art_z13: 2;    @loc_z13: 0.7; @srv_z13: 0; 
@fwy_z14: 4.5; @art_z14: 2.5;  @loc_z14: 1;   @srv_z14: 0; 
@fwy_z15: 6;   @art_z15: 4;    @loc_z15: 2.5; @srv_z15: .4; 
@fwy_z16: 10;  @art_z16: 7;    @loc_z16: 4;   @srv_z16: 1.5; 
@fwy_z17: 15;  @art_z17: 10.5; @loc_z17: 6;   @srv_z17: 3;
@fwy_z18: 20;  @art_z18: 14;   @loc_z18: 8;   @srv_z18: 4; 

@trl_z16: 1.5;
@trl_z17: 1.75;
@trl_z18: 2;

//Fill
#streets-high-zm[zoom>=13][zoom<=18],
#bridges[component='fill'][zoom>=13][zoom<=18],
#tunnels[component='fill'][zoom>=13][zoom<=18] {
  line-join: round;
  
  [type='street'] {
    line-color: @street-light;
    line-cap: round;
  }
  [type='path'] {
    line-color: darken(@trail, 7.5%);
    line-cap: butt;
    line-width: 0;
  }
  [type='freight-rail'] {
    line-color: white;
    line-cap: butt;
    line-width: 0;
  }
  
  [class='stairs'] { line-color: @trail }
  [tunnel='yes'] {
    line-color: darken(@street-light, 5%);
    line-dasharray: @loc_z17,@loc_z17/5;
    line-cap: butt; 
  }
  
  [zoom=13] {
    [class='freeway'] { line-width: @fwy_z13; }
    [class='arterial'] { line-width: @art_z13; line-color: @street-dark; }
    [class='local'] { line-width: @loc_z13; line-color: @street-dark; }
    [class='service'] { line-width: @srv_z13; }
    [class='mainline'] { line-width: .4; line-color: @street-casing; }
  }
  [zoom=14] {
    [class='freeway'] { line-width: @fwy_z14; }
    [class='arterial'] { line-width: @art_z14; }
    [class='local'] { line-width: @loc_z14; line-color: @street-dark; }
    [class='service'] { line-width: @srv_z14; }
    [class='mainline'] { line-width: .8; line-color: @street-casing; }
  }
  [zoom=15] {
    [class='freeway'] { line-width: @fwy_z15; }
    [class='arterial'] { line-width: @art_z15; }
    [class='local'] { line-width: @loc_z15; }
    [class='service'] { line-width: @srv_z15; line-color: darken(@street-dark, 10%); }
    [class='mainline'] { line-width: 1; line-dasharray: 10,10;}
    [class='siding'] { line-width: .4; line-color: @street-casing; } 
  }
  [zoom=16] {
    [class='freeway'] { line-width: @fwy_z16; }
    [class='arterial'] { line-width: @art_z16; }
    [class='local'] { line-width: @loc_z16; }
    [class='service'] { line-width: @srv_z16; }
    [class='mainline'] { line-width: 1.25; line-dasharray: 13,13;}
    [class='siding'] { line-width: 1; line-color: @street-casing; } 
    [class='trail'] { line-width: @trl_z16; line-dasharray: @trl_z16,@trl_z16; }
    [class='stairs'] { line-width: @trl_z16 * 2.25; line-dasharray: @trl_z16,@trl_z16*.8; }
  }
  [zoom=17] {
    [class='freeway'] { line-width: @fwy_z17; }
    [class='arterial'] { line-width: @art_z17; }
    [class='local'] { line-width: @loc_z17; }
    [class='service'] { line-width: @srv_z17; }
    [class='mainline'] { line-width: 1.5; line-dasharray: 15,15;}
    [class='siding'] { line-width: .8; line-dasharray: 10,10;} 
    [class='trail'] { line-width: @trl_z17; line-dasharray: @trl_z17,@trl_z17; }
    [class='stairs'] { line-width: @trl_z17 * 2.25; line-dasharray: @trl_z17,@trl_z17*.8; }
  }
  [zoom=18] {  
    [class='freeway'] { line-width: @fwy_z18; }
    [class='arterial'] { line-width: @art_z18; }
    [class='local'] { line-width: @loc_z18; }
    [class='service'] { line-width: @srv_z18; }
    [class='mainline'] { line-width: 2; line-dasharray: 20,20; }
    [class='siding'] { line-width: 1; line-dasharray: 12,12; } 
    [class='trail'] { line-width: @trl_z18; line-dasharray: @trl_z18,@trl_z18; }
    [class='stairs'] { line-width: @trl_z18 * 2.25; line-dasharray: @trl_z18,@trl_z18*.8; }
  }
}

//Backing (this element only exists for trails on bridges)
#bridges[component='backing'][class='trail'][zoom>=16][zoom<=18] {
  line-color: @street-light;
  line-join: round;
  //line-opacity: 0.75;
  
  [zoom=16] { line-width: @trl_z16 + 1; }
  [zoom=17] { line-width: @trl_z17 + 1.5; }
  [zoom=18] { line-width: @trl_z18 + 2; }
}

//turning circles
#turning-circle-casing[zoom>=15] {
  marker-line-color: @street-casing;
}
#turning-circle[zoom>=15] {
  marker-fill: @street-light;
  marker-line-opacity: 0;
}
#turning-circle[zoom>=15],
#turning-circle-casing[zoom>=15]{
  marker-allow-overlap: true;
  
  [zoom=15] {marker-width: @loc_z15 * 1.8 }
  [zoom=16] {marker-width: @loc_z16 * 1.8 }
  [zoom=17] {marker-width: @loc_z17 * 1.8 }
  [zoom=18] {marker-width: @loc_z18 * 1.8 }
}