// background, natural features, buildings and areas

Map {background-color: @background;}

#hillshade[zoom<16] {
  raster-opacity: .15;
}

#parks {
  polygon-fill: gray; 
  //polygon-smooth: 1;
  
  // values to consider adding:
  //natural='scrub'
  
  [type='park'] { polygon-fill: @park; }
  [type='wood'],[type='forest'] { polygon-fill: @wood; }
  [type='stadium'] { polygon-fill: @stadium; }
  [type='garden'] { polygon-fill: @garden; }
  [type='cemetery'],[type='grave_yard'] { polygon-fill: @cemetery; }
  [type='grass'],[type='golf_course'],[type='heath'] { polygon-fill: @grass; }
  [type='wetland'] { polygon-fill: @wetland }
}

#water {
  // Columbia river relation is broken in osm extract
  // need to repair this
  polygon-fill: @water;
  //line-color: @water-casing;
}

#buildings[zoom>=14][zoom<=18] {
  [zoom>=14][zoom<=16] { polygon-fill: @building; }
  [zoom>=17][zoom<=18] {
    building-fill: @building;
    building-fill-opacity: 1;
    polygon-fill: hsla(0,0,0,0);
    
    [zoom=17] { building-height: 1; }
    [zoom=18] { building-height: 3; }
  }
}