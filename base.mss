// background, natural features, buildings and areas

Map {background-color: @background;}

#hillshade[zoom<16]{
  raster-opacity: 0.15;
}

#parks {
  polygon-fill: @park;
  polygon-smooth: 0;
}

#water {
  // Columbia river relation is broken in osm extract
  // need to repair this
  polygon-fill: @water;
  //line-color: @water-casing;
}

#buildings[zoom>=14] {
  polygon-fill: @building;
  
  [zoom>=17] { 
    building-fill: @building;
    building-height: 1.5;
    building-fill-opacity: 0.75;
  }  
}