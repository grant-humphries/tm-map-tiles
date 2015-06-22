// streets, trails and freight rail

#osmcarto_street {
	::streets [zoom > 10] [highway='service'], [highway='residential'], [highway='tertiary'], 
    [highway='tertiary_link'], [highway='secondary'], [highway='secondary_link'], 
    [highway='primary'], [highway='primary_link'], [highway='trunk'], [highway='trunk_link'], 
    [highway='motorway'], [highway='motorway_link'] {
    	::casing {
    		line-color: #AAACA9;
      		line-width: 3;
      		line-cap: round;
    	}
    	::fill {
      		line-color: #FEFFFC;
    		line-width: 2;
      		line-cap: round;
        }
    	/**::arterials [highway='secondary'], [highway='secondary_link'], [highway='primary'], 
      	[highway='primary_link'] {
      		line-width: 3;
    	}
    	::freeways [highway='trunk'], [highway='trunk_link'], [highway='motorway'], 
      	[highway='motorway_link'] {
    		line-width: 4;
    	}**/
    }
  	
  	::paths [highway='footway'], [highway='path'], [highway='cycleway'] {
  		/**::casing {
      		line-color: #FEFFFC;
      		line-width: 1.5;
      		line-dasharray: 1.5, 0.5;
    	}**/
    	::fill {
    		line-color: #AAACA9;
      		line-width: 1;
      		line-dasharray: 1, 1.5;
		}
    }
  	
  	// these should come in until close zoom levels as they render weird further out
  	::stairs [highway='steps'] {
  		line-color: #AAACA9;
      	line-width: 3;
      	line-dasharray: 1, 1.5;
  	}
}






