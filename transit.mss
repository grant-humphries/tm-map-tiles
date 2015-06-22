// trimet transit lines

#current_route {
	::bus_routes [type=1] {
  		line-color: @bus;
  		line-width: 2.5;
    }
}

#current_rail {
  	::max [type='MAX'] {
        line-width: 3;
        
        [line='B'] {
    		line-color: @max-blue;
    	}
        [line='R'] {
    		line-color: @max-red;	
    	}
        [line='Y'] {
    		line-color: @max-yellow;
    	}
    	[line='G'] {
            line-color: @max-green;
    	}
    	//br-b
    	[line='BR'] {
      		line-color: @max-blue;
        	line-offset: 1.5;
      	}
            ::br-r [line='BR'] {
                line-color: @max-red;
                line-offset: -1.5;
                line-width: 3;
      	}
      	//bgr-b
    	[line='BGR'] {
      		line-color: @max-blue;
        	line-offset: 3;
      	}
            ::bgr-g [line='BGR'] {
                line-color: @max-green;
                line-offset: 0;
                line-width: 3;
            }
            ::bgr-r [line='BGR']{
                line-color: @max-red;
                line-offset: -3;
                line-width: 3;
      	}
      	//bgry-b
    	[line='BGRY'] {
      		line-color: @max-blue;
        	line-offset: 1.5;
      	}
      		::bgry-g [line='BGRY'] {
      			line-color: @max-green;
        		line-offset: -1.5;
            	line-width: 3;
      		}
      		::bgry-r [line='BGRY'] {
      			line-color: @max-red;
        		line-offset: -4.5;
            	line-width: 3;
      		}
      		::bgry-y [line='BGRY'] {
      			line-color: @max-yellow;
        		line-offset: 4.5;
            	line-width: 3;
      		}
      	//bg-b
    	[line='BG'] {
      		line-color: @max-blue;
        	line-offset: 1.5;
      	}
      		::bg-g [line='BG'] {
      			line-color: @max-green;
        		line-offset: -1.5;
            	line-width: 3;
      		}
      	//gy-g
    	[line='GY'] {
      		line-color: @max-green;
        	line-offset: 1.5;
      	}
      		::gy-y [line='GY'] {
      			line-color: @max-yellow;
        		line-offset: -1.5;
      			line-width: 3;
      		}
    	[line='AUX'] {
    		line-opacity: 0;
    	}
  	}

  	::streetcar [type='SC'] {
  		line-width: 2;	
    
    	[line='NS'] {
    		line-color: @streetcar-ns;
    	}
    	[line='CL'] {
  			line-color: @streetcar-cl;
  		}
  		//ns/cl-ns
    	[line='NS/CL'] {
      		line-color: @streetcar-ns;
        	line-offset: 1;
      	}
      		::ns/cl-cl {
      			line-color: @streetcar-cl;
          		line-offset: -1;
      			line-width: 2;
      		}
    	[line='AUX'] {
      		line-opacity: 0;	
      	}
  	}

  	::wes [type='CR'] {
  		line-color: @wes;
    	line-width: 3.5;
  	}
}