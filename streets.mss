// streets, trails and freight rail

@fwy_z10: 3;   @hwy_z10: 1;    @mja_z10: 0;   @mna_z10: 0; 
@fwy_z11: 3;   @hwy_z11: 1;    @mja_z11: 0;   @mna_z11: 0; 
@fwy_z12: 3;   @hwy_z12: 1;    @mja_z12: 0;   @mna_z12: 0; 

#streets-low-zm::casing[zoom>=10][zoom<13] {
  line-color: @street-casing;
  line-join: round;
  line-cap: round;
 
  [zoom=10] {
    [lw_class='freeway'] { line-width: 2; }
    [lw_class='highway'] {line-width: 0.4; }
    [lw_class='major_arterial'] {line-width: 0; }
    [lw_class='minor_arterial'] {line-width: 0; }
  }
  [zoom=11] {
    [lw_class='freeway'] { line-width: 3.5; }
    [lw_class='highway'] {line-width: 0.6; }
    [lw_class='major_arterial'] {line-width: 0.6; }
    [lw_class='minor_arterial'] {line-width: 0; }
  }
  [zoom=12] {
    [lw_class='freeway'] { line-width: 4; }
    [lw_class='highway'] {line-width: 1.8; }
    [lw_class='major_arterial'] {line-width: 1; }
    [lw_class='minor_arterial'] {line-width: 0.4; }
  }
}

#streets-low-zm[zoom>=11][zoom<13] {
  line-color: @street-fill;
  line-join: round;
  line-cap: round;
 
  [zoom=11] {
    [lw_class='freeway'] { line-width: 3; }
    [lw_class='highway'] {line-width: 0; }
    [lw_class='major_arterial'] {line-width: 0; }
    [lw_class='minor_arterial'] {line-width: 0; }
  }
  [zoom=12] {
    [lw_class='freeway'] { line-width: 3; }
    [lw_class='highway'] {line-width: 1; }
    [lw_class='major_arterial'] {line-width: 0; }
    [lw_class='minor_arterial'] {line-width: 0; }
  }
}

// high zoom street widths 
// (casing widths are derived from these fill widths)
@fwy_z13: 3;   @art_z13: 1.75; @loc_z13: 0.8; @serv_z13: 0; 
@fwy_z14: 3.5; @art_z14: 2;    @loc_z14: 1;   @serv_z14: 0; 
@fwy_z15: 6;   @art_z15: 4;    @loc_z15: 2;   @serv_z15: 0; 
@fwy_z16: 10;  @art_z16: 7;    @loc_z16: 4;   @serv_z16: 1.5; 
@fwy_z17: 15;  @art_z17: 10.5; @loc_z17: 6;   @serv_z17: 3;
@fwy_z18: 20;  @art_z18: 14;   @loc_z18: 8;   @serv_z18: 4; 

// Casing (or fill if the way consists of only one element)
#streets-high-zm::casing[zoom>=13][zoom<19] {
  line-join: round;
  
  [type='street'] {
    line-color: @street-casing;
    line-cap: round;
  }
  [type='path'] {
    line-color: @trail-halo;
    line-opacity: 0.5;
    line-cap: butt;
    line-width: 0;
  }
  
  [zoom=13] {
    [class='freeway'] { line-width: @fwy_z13 + 0.8; }
    [class='arterial'] { line-width: @art_z13 + 0.8; }
    [class='local'] { line-width: @loc_z13 + 0.8; }
    [class='service'] { line-width: 0; }
  }
  [zoom=14] {
    [class='freeway'] { line-width: @fwy_z14 + 0.8; }
    [class='arterial'] { line-width: @art_z14 + 0.8; }
    [class='local'] { line-width: @loc_z14 + 0.8; }
    [class='service'] { line-width: 0; }
  }
  [zoom=15] {
    [class='freeway'] { line-width: @fwy_z15 + 1; }
    [class='arterial'] { line-width: @art_z15 + 1; }
    [class='local'] { line-width: @loc_z15 + 0.8; }
    [class='service'] { line-width: @serv_z15 + 0.4; }
  }
  [zoom=16] {
    [class='freeway'] { line-width: @fwy_z16 + 1.5; }
    [class='arterial'] { line-width: @art_z16 + 1.5; }
    [class='local'] { line-width: @loc_z16 + 1.25; }
    [class='service'] { line-width: @serv_z16 + 1; }
  }
  [zoom=17] {
    [class='freeway'] { line-width: @fwy_z17 + 2; }
    [class='arterial'] { line-width: @art_z17 + 2; }
    [class='local'] { line-width: @loc_z17 + 1.5; }
    [class='service'] { line-width: @serv_z17 + 1; }
  }
  [zoom=18] {
    [class='freeway'] { line-width: @fwy_z18 + 2.5; }
    [class='arterial'] { line-width: @art_z18 + 2.5; }
    [class='local'] { line-width: @loc_z18 + 2; }
    [class='service'] { line-width: @serv_z18 + 1.5; }
  }
}

//Fill
#streets-high-zm[zoom>=13][zoom<19] {
  line-join: round;
  
  [type='street'] {
    line-color: @street-fill;
    line-cap: round;
  }
  [type='path'] {
    line-color: @trail;
    line-opacity: 0.5;
    line-cap: butt;
    line-width: 0;
  }

  [zoom=13] {
    [class='freeway'] { line-width: @fwy_z13; }
    [class='arterial'] { line-width: @art_z13; }
    [class='local'] { line-width: @loc_z13; }
    [class='service'] { line-width: @serv_z13; }
  }
  [zoom=14] {
    [class='freeway'] { line-width: @fwy_z14; }
    [class='arterial'] { line-width: @art_z14; }
    [class='local'] { line-width: @loc_z14; }
    [class='service'] { line-width: @serv_z14; }
  }
  [zoom=15] {
    [class='freeway'] { line-width: @fwy_z15; }
    [class='arterial'] { line-width: @art_z15; }
    [class='local'] { line-width: @loc_z15; }
    [class='service'] { line-width: @serv_z15; }
  }
  [zoom=16] {
    [class='freeway'] { line-width: @fwy_z16; }
    [class='arterial'] { line-width: @art_z16; }
    [class='local'] { line-width: @loc_z16; }
    [class='service'] { line-width: @serv_z16; }
  }
  [zoom=17] {
    [class='freeway'] { line-width: @fwy_z17; }
    [class='arterial'] { line-width: @art_z17; }
    [class='local'] { line-width: @loc_z17; }
    [class='service'] { line-width: @serv_z17; }
  }
  [zoom=18] {
    [class='freeway'] { line-width: @fwy_z18; }
    [class='arterial'] { line-width: @art_z18; }
    [class='local'] { line-width: @loc_z18; }
    [class='service'] { line-width: @serv_z18; }
  }
}

