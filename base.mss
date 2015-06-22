// background, natural features, buildings and areas

Map {background-color: @background;}

#osmcarto_polygon {
	::parks [leisure='park'], [natural='wood'], [leisure='garden'] {
    	polygon-fill: @park;
    }
    
	::water [waterway='riverbank'], [natural='water']  {
    	polygon-fill: @water;
    	//line-color: @water-casing;
	}
  	
  	// buildings should come in at zoom level 16
  	::builings [building!='undefined'] {
  		polygon-fill: @building;
  	}
}