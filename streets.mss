// streets, trails and freight rail

#streets-low-zm[zoom>=9][zoom<12] {
  /*line-color: @street-casing;
  line-join: round;
  line-cap: round; */
  
  [road_class='freeway'] { line-color: @street-casing; }
  [road_class='major_arterial'] { line-color: @street-casing; }
  [road_class='minor_arterial'][zoom>10] { line-color: @street-casing; }
  
  [zoom=10] {
    [road_class='freeway'] { line-width: 2; }
    [road_class='major_arterial'] {line-width: 1; }
  }
  [zoom=11] {
    [road_class='freeway'] { line-width: 3; }
    [road_class='major_arterial'] {line-width: 2; }
    [road_class='minor_arterial'] {line-width: 1; }
  }
}


#streets-high-zm[zoom>=12][zoom<19] {
  [road_class='freeway'],[road_class='arterial'],
  [road_class='local'],[road_class='service'] {
    ::casing {
      line-color: @street-casing;
      line-width: 3;
      line-cap: round; }
    //fill
      line-color: @street-fill;
      line-width: 2;
      line-cap: round;
  }
  
  [road_class='trail'] {
    /*::halo {
      line-color: @street-fill;
      line-width: 1.5;
      line-dasharray: 1.5, 0.5;
      line-opacity: 0.5 } */
    //fill
    line-color: @trail;
    line-width: 1;
    line-dasharray: 1, 1.5; 
  }
  
  [highway='steps'] {
    line-color: @trail;
    line-width: 3;
    line-dasharray: 1, 1.5;
  }
}
