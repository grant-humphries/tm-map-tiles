/*              --------- streets.mss --------
This style sheets is used to render streets, railways and trails, these
three groups are refered to collectively as 'highways' in the comments
throughout this document.  Turning circles are styled here as well */


/* *************** Width Variables z10-z12 **************** */

/* -freeway-       -highway-     -major-arterial-  -minor-arterial- */
@fwy_z10: 1.5;   @hwy_z10: 1;     
@fwy_z11: 2;     @hwy_z11: 1.13;  @mja_z11: 0.4;  
@fwy_z12: 2.25;  @hwy_z12: 1.25;  @mja_z12: 1.25;  @mna_z12: 0.4; 

/* ******************************************************** */

#streets-low-zm[zoom>=10][zoom<=12] {
  line-color: @street-dark;
  line-join: round;
  line-cap: round;
  line-width: 0;
 
  [zoom=10] {
    [lz_class='freeway'] { 
      line-width: @fwy_z10; 
      line-color: @street-casing; 
    }
    [lz_class='highway'] { line-width: @hwy_z10; }    
  }
  [zoom=11] {
    [lz_class='freeway'] { 
      line-width: @fwy_z11; 
      line-color: @street-casing; }
    [lz_class='highway'] { line-width: @hwy_z11; }
    [lz_class='major-arterial'] { line-width: @mja_z11; }
  }
  [zoom=12] {
    [lz_class='freeway'] { 
      line-width: @fwy_z12; 
      line-color: @street-casing; 
    }
    [lz_class='highway'] { line-width: @hwy_z12; }
    [lz_class='major-arterial'] { line-width: @mja_z12; }
    [lz_class='minor-arterial'] { line-width: @mna_z12; }
  }
}


/* *************** Width Variables z13-z18 **************** */

/*-------------- Street ------------------*/
/*--- fill ---*/
/* -freeway-      -arterial-       -local-         -service- */
@fwy_z13: 3.5;  @art_z13: 2;     @loc_z13: 0.7;   
@fwy_z14: 4.5;  @art_z14: 2.5;   @loc_z14: 1;     
@fwy_z15: 6;    @art_z15: 4;     @loc_z15: 2.5;  @srv_z15: 0.4; 
@fwy_z16: 10;   @art_z16: 7;     @loc_z16: 4;    @srv_z16: 1.5; 
@fwy_z17: 15;   @art_z17: 10.5;  @loc_z17: 6;    @srv_z17: 3;
@fwy_z18: 20;   @art_z18: 14;    @loc_z18: 8;    @srv_z18: 4; 

/*--- casing ---*/
/* -freeway-                   -arterial-                  */
@fwy_z13c: @fwy_z13 + 0.8;                               //13
@fwy_z14c: @fwy_z14 + 0.8;   @art_z14c: @art_z14 + 0.8;  //14
@fwy_z15c: @fwy_z15 + 1;     @art_z15c: @art_z15 + 1;    //15
@fwy_z16c: @fwy_z16 + 1.5;   @art_z16c: @art_z16 + 1.5;  //16
@fwy_z17c: @fwy_z17 + 2;     @art_z17c: @art_z17 + 2;    //17
@fwy_z18c: @fwy_z18 + 2.5;   @art_z18c: @art_z18 + 2.5;  //18
 
/* -local-                     -service-                   */
@loc_z15c: @loc_z15 + 0.8;                               //15
@loc_z16c: @loc_z16 + 1.25;  @srv_z16c: @srv_z16 + 1;    //16
@loc_z17c: @loc_z17 + 1.5;   @srv_z17c: @srv_z17 + 0.8;  //17
@loc_z18c: @loc_z18 + 2;     @srv_z18c: @srv_z18 + 1.5;  //18

/*-------------- Freight-Rail ------------
/*--- fill ---*/
/* -mainline-      -siding- */
@mln_z13: 0.4;   
@mln_z14: 0.8;   
@mln_z15: 1;     @sdg_z15: 0.4;
@mln_z16: 1.25;  @sdg_z16: 1;
@mln_z17: 1.5;   @sdg_z17: 0.8;
@mln_z18: 2;     @sdg_z18: 1;

/*--- casing ---*/
/* -mainline-                 -siding- */
@mln_z15c: @mln_z15 + 0.8;  
@mln_z16c: @mln_z16 + 1;    
@mln_z17c: @mln_z17 + 1;    @sdg_z17c: @mln_z17 + 1;
@mln_z18c: @mln_z18 + 1;    @sdg_z18c: @mln_z18 + 1;

/*--- bridge fill ---*/

/*--- bridge casing ---*/

/*-------------- Paths -------------------*/
/*--- fill ---*/
/* -trail-         -dirt-road-      -stairs-              */
@trl_z16: 1.5;   @drd_z16: 1.75;  @sta_z16: @trl_z16 * 2.25;
@trl_z17: 1.75;  @drd_z17: 2.25;  @sta_z17: @trl_z17 * 2.25;
@trl_z18: 2;     @drd_z18: 2.5;   @sta_z18: @trl_z18 * 2.25;

/*--- halo ---*/

/*--- bridge fill ---*/

/*--- bridge casing ---*/

/* ******************************************************** */

// high zoom streets
#streets-high-zm[zoom>=13][zoom<=18],
#bridges[zoom>=13][zoom<=18],
#tunnels[zoom>=13][zoom<=18] {
  
  // highways will be invisible (no width) unless their width is
  // explicitly set later in the stylesheet
  line-width: 0;
  line-join: round;
  line-cap: round;

  // high level rules for various components of highways
  [component='fill'] {
    [hwy_type='street'] { 
      line-color: @street-light; 

      // at higher zooms lower order streets only have a fill
      // component (no case) and the fill color must be switched
      [hwy_class='arterial'][zoom<=13] { line-color: @street-dark;}
      [hwy_class='local'][zoom<=14] {line-color: @street-dark;}
      [hwy_class='service'][zoom<=15] {line-color: darken(@street-dark, 10%);}

      [passage='tunnel'] {
        line-color: lighten(@background, 3%);
        line-dasharray: @loc_z17, @loc_z17 / 5;
        line-cap: butt; 
      }
    }
    
    [hwy_type='freight-rail'] {
      line-color: white;
      line-cap: butt;

      // color for rail will only fill component
      [hwy_class='mainline'][zoom<=14] { line-color: @street-casing; }
      [hwy_class='siding'][zoom<=16] { line-color: @street-casing; }
    }
    [hwy_type='path'] {
      line-color: darken(@trail, 7.5%);
      line-cap: butt;

      [hwy_class='dirt-road'] { line-color: rgb(181, 162, 145); }
    }
  }

  [component='casing'] {
    [hwy_type='street']  { 
      line-color: @street-casing;

      // streets on bridges darken their casing and switch
      // line end type
      [passage='bridge'] { 
        line-cap: butt;
        line-color: darken(@street-casing, 15%); 
      }
      [passage='tunnel'] { line-color: rgb(220, 220, 220); }
    }
    [hwy_type='freight-rail'] { line-color: darken(@street-casing, 10%); }
    
    [hwy_type='path'] {
      line-color: @path-halo;
      line-opacity: .4;
    }
    // for paths on bridges and tunnels hide the casing element (which
    // normally serves as halo and used the bridge & tunnel components)
    [passage='bridge'],[passage='tunnel'] { 
      [highway='path'] { line-opacity: 0; }
    }    
  }
  
  [component='b+t_fill'] {
    line-color: white;

    [hwy_type='freight-rail'] { line-cap: butt; }
    [hwy_type='path'] { line-color: @street-light; }
  }

  [component='b+t_casing'] {
    line-cap: butt;

 /*   [hwy_type='street'] {
      [passage='bridge'] { line-color: darken(@street-casing, 15%); }
      [passage='tunnel'] { line-color: @street-dark; }
    }*/
    [hwy_type='freight-rail'] { line-color: darken(@street-casing, 30%); }
    [hwy_type='path'] { line-color: darken(@street-casing, 15%); }
  }

  // highway styling by zoom level
  [zoom=13] {
    [hwy_class='freeway'] { 
      [component='fill'] { line-width: @fwy_z13; }
      [component='casing'] { line-width: @fwy_z13c; }
    }
    [hwy_class='arterial'] {
      [component='fill'] { line-width: @art_z13; }
    }
    [hwy_class='local'] {
      [component='fill'] { line-width: @loc_z13; }
    }
    [hwy_class='mainline'] {
      [component='fill'] { line-width: @mln_z13; }
    }
  }
  
  [zoom=14] {
    [hwy_class='freeway'] { 
      [component='fill'] { line-width: @fwy_z14; }
      [component='casing'] { line-width: @fwy_z14c; }
    }
    [hwy_class='arterial'] {
      [component='fill'] { line-width: @art_z14; }
      [component='casing'] { line-width: @art_z14c; }
    }
    [hwy_class='local'] {
      [component='fill'] { line-width: @loc_z14; }
    }
    [hwy_class='mainline'] {
      [component='fill'] { line-width: @mln_z14; }
    }
  }

  [zoom=15] {
    [hwy_class='freeway'] {
      [component='fill'] { line-width: @fwy_z15; }
      [component='casing'] { line-width: @fwy_z15c; }
    }
    [hwy_class='arterial'] {
      [component='fill'] { line-width: @art_z15; }
      [component='casing'] { line-width: @art_z15c; }
    }
    [hwy_class='local'] {
      [component='fill'] { line-width: @loc_z15; }
      [component='casing'] { line-width: @loc_z15c; }
    }
    [hwy_class='service'] {
      [component='fill'] { line-width: @srv_z15; }
    }
    [hwy_class='mainline'] {
      [component='fill'] { 
        line-width: @mln_z15; 
        line-dasharray: 10, 10; }
      [component='casing'] { line-width: @mln_z15c; }
    }
    [hwy_class='siding'] {
      [component='fill'] { line-width: @sdg_z15; }
    }
  }

  [zoom=16] {
    [hwy_class='freeway'] {
      [component='fill'] { line-width: @fwy_z16; }
      [component='casing'] { line-width: @fwy_z16c; }
    }
    [hwy_class='arterial'] {
      [component='fill'] { line-width: @art_z16; }
      [component='casing'] { line-width: @art_z16c; }
    }
    [hwy_class='local'] {
      [component='fill'] { line-width: @loc_z16; }
      [component='casing'] { line-width: @loc_z16c; }
    }
    [hwy_class='service'] {
      [component='fill'] { line-width: @srv_z16; }
      [component='casing'] { line-width: @srv_z16c; }
    }
    [hwy_class='mainline'] {
      [component='fill'] { 
        line-width: @mln_z16; 
        line-dasharray: 13, 13; }
      [component='casing'] { line-width: @mln_z16c; }
      [component='b+t_fill'] { line-width: 3.45; }
      [component='b+t_casing'] { line-width: 4.65; }
    }
    [hwy_class='siding'] {
      [component='fill'] { line-width: @sdg_z16; }
    }
    [hwy_class='dirt-road'] {
      [component='fill'] { 
        line-width: @drd_z16;
        line-dasharray: @drd_z16 * 5, @drd_z16; }
      [component='casing'] { line-width: @drd_z16 + 2; }
    }
    [hwy_class='trail'] {
      [component='fill'] { 
        line-width: @trl_z16; 
        line-dasharray: @trl_z16, @trl_z16; }
      [component='casing'] { line-width: @trl_z16 + 2; }
      [component='b+t_fill'] { line-width: @trl_z16 + 1; }
      [component='b+t_casing'] { line-width: @trl_z16 + 2; }
    }
    [hwy_class='stairs'] {
      [component='fill'] {
        line-width: @sta_z16; 
        line-dasharray: @trl_z16, @trl_z16 * 0.8; }
      [component='casing'] { line-width: @trl_z16 * 2.25 + 2; }
    }
  }

  [zoom=17] {
    [hwy_class='freeway'] {
      [component='fill'] { line-width: @fwy_z17; }
      [component='casing'] { line-width: @fwy_z17c; }
    }
    [hwy_class='arterial'] {
      [component='fill'] { line-width: @art_z17; }
      [component='casing'] { line-width: @art_z17c; }
    }
    [hwy_class='local'] {
      [component='fill'] { line-width: @loc_z17; }
      [component='casing'] { line-width: @loc_z17c; }
    }
    [hwy_class='service'] {
      [component='fill'] { line-width: @srv_z17; }
      [component='casing'] { line-width: @srv_z17c; }
    }
    [hwy_class='mainline'] {
      [component='fill'] { 
        line-width: @mln_z17; 
        line-dasharray: 15, 15; }
      [component='casing'] { line-width: @mln_z17c; }
      [component='b+t_fill'] { line-width: 3.9; }
      [component='b+t_casing'] { line-width: 5.6; }
    }
    [hwy_class='siding'] {
      [component='fill'] { 
        line-width: @sdg_z17; 
        line-dasharray: 10, 10; }
      [component='casing'] { line-width: @sdg_z17c; }
    }
    [hwy_class='dirt-road'] {
      [component='fill'] { 
        line-width: @drd_z17;
        line-dasharray: @drd_z17 * 5, @drd_z17; }
      [component='casing'] { line-width: @drd_z17 + 2.5; }
    }
    [hwy_class='trail'] {
      [component='fill'] {
        line-width: @trl_z17; 
        line-dasharray: @trl_z17, @trl_z17; }
      [component='casing'] { line-width: @trl_z17 + 2.5; }
      [component='b+t_fill'] { line-width: @trl_z17 + 1.5; }
      [component='b+t_casing'] { line-width: @trl_z18 + 2.5; }
    }
    [hwy_class='stairs'] {
      [component='fill'] { 
        line-width: @sta_z17; 
        line-dasharray: @trl_z17, @trl_z17 * 0.8; }
      [component='casing'] { line-width: @trl_z17 * 2.25 + 2.5; }
    }
  }

  [zoom=18] {
    [hwy_class='freeway'] {
      [component='fill'] { 
        line-width: @fwy_z18;

        [passage='tunnel'] {
          line-width: @fwy_z18 * 0.8;
          line-dasharray: @fwy_z18 * 0.8, ((@fwy_z18 + 2.5) - @fwy_z18 * 0.8) / 2 }}
      [component='casing'] { line-width: @fwy_z18c; }
    }
    [hwy_class='arterial'] {
      [component='fill'] { line-width: @art_z18; }
      [component='casing'] { line-width: @art_z18c; }
    }
    [hwy_class='local'] {
      [component='fill'] { line-width: @loc_z18; }
      [component='casing'] { line-width: @loc_z18c; }
    }
    [hwy_class='service'] {
      [component='fill'] { line-width: @srv_z18; }
      [component='casing'] { line-width: @srv_z18c; }
    }
    [hwy_class='mainline'] {
      [component='fill'] { 
        line-width: @mln_z18; 
        line-dasharray: 20, 20; }
      [component='casing'] { line-width: @mln_z18c; }
      [component='b+t_fill'] { line-width: 5; }
      [component='b+t_casing'] { line-width: 7; }
    }
    [hwy_class='siding'] {
      [component='fill'] {
        line-width: @sdg_z18; 
        line-dasharray: 12, 12; }
      [component='casing'] { line-width: @sdg_z18c; }
    }
    [hwy_class='dirt-road'] {
      [component='fill'] { 
        line-width: @drd_z18;
        line-dasharray: @drd_z18 * 5, @drd_z18; }
      [component='casing'] { line-width: @drd_z18 + 3; }
    }
    [hwy_class='trail'] {
      [component='fill'] {
        line-width: @trl_z18; 
        line-dasharray: @trl_z18, @trl_z18; }
      [component='casing'] { line-width: @trl_z18 + 3; }
      [component='b+t_fill'] { line-width: @trl_z18 + 2; }
      [component='b+t_casing'] { line-width: @trl_z18 + 3; }
    }
    [hwy_class='stairs'] {
      [component='fill'] {
        line-width: @sta_z18; 
        line-dasharray: @trl_z18, @trl_z18 * 0.8; }
      [component='casing'] { line-width: @trl_z18 * 2.25 + 3; }
    }
  }
}


//turning circles
#turning-circle-fill[zoom>=15],
#turning-circle-casing[zoom>=15] {
  marker-allow-overlap: true;
  marker-line-opacity: 0;

  [component='fill'] { marker-fill: @street-light; }
  [component='casing'] { marker-fill: @street-casing; }
  
  [zoom=15] {
    [component='fill'] { marker-width: @loc_z15 * 1.8; }
    [component='casing'] { marker-width: @loc_z15 * 1.8 + 0.8; }
  }
  [zoom=16] {
    [component='fill'] { marker-width: @loc_z16 * 1.8; }
    [component='casing'] { marker-width: @loc_z16 * 1.8 + 1.25; }
  }
  [zoom=17] {
    [component='fill'] { marker-width: @loc_z17 * 1.8; }
    [component='casing'] { marker-width: @loc_z17 * 1.8 + 1.5; }
  }
  [zoom=18] {
    [component='fill'] { marker-width: @loc_z18 * 1.8; }
    [component='casing'] { marker-width: @loc_z18 * 1.8 + 2; }
  }
}