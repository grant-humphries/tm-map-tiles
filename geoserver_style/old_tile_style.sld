<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0" 
  xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" 
  xmlns:xlink="http://www.w3.org/1999/xlink" 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<NamedLayer>
  <Name>Streets</Name>
  <UserStyle>
  <Title>Streets</Title>
  <Abstract>By Nathan Banks and Frank Purcell</Abstract>

  <!-- Start of 1890   Zoom 10 (close) -->
  <!-- 1890 - 3780     Zoom  9  -->
  <!-- 3780 - 7559     Zoom  8  -->
  <!-- 7559 - 15118    Zoom  7  -->
  <!-- 15118 - 37795   Zoom  6  -->
  <!-- 37795 - 75591   Zoom  5  -->
  <!-- 75591 - 151181  Zoom  4  -->
  <!-- 151181 - 302362 Zoom  3  -->
  <!-- 151181 - 604724 Zoom 3 and 2-->
  <!-- 151181 - 604724 - 1209449 Zoom 3, 2, 1 (far out zoom) -->     

  <!-- 
      display_type values

         1 = streets
       111 = major arterials
       131 = arterials
       151 = freeways

       191 = service roads
        91 = streets construction
        93 = bridge construction (tbd ... uses 91 right now)

         2 = paths
        22 = stairs
        
         3 = bridge (tbd)
         4 = rail

       NOTE: 1 - 4 are RLIS and OSM interchangable, whereas higher numbers are purely OSM data
  -->

  <!-- ******** SERVICE ROADS and CONSTRUCTION ******** -->
  <!-- SERVICE ROAD - UNDER LAYER -->
  <FeatureTypeStyle>
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>191</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MaxScaleDenominator>1000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">33</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>191</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>1000</MinScaleDenominator>
      <MaxScaleDenominator>1800</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">23</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>191</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>1800</MinScaleDenominator>
      <MaxScaleDenominator>2500</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">13</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>191</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>2500</MinScaleDenominator>
      <MaxScaleDenominator>5000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">7</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>191</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>5000</MinScaleDenominator>
      <MaxScaleDenominator>10000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">5</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
  </FeatureTypeStyle>

  <!-- SERVICE ROADS OVER LAYER -->
  <FeatureTypeStyle>
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>191</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>91</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>93</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MaxScaleDenominator>1000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#FFFFFF</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">30</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>191</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>91</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>93</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>1000</MinScaleDenominator>
      <MaxScaleDenominator>1800</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#FFFFFF</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">20</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>191</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>91</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>93</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>1800</MinScaleDenominator>
      <MaxScaleDenominator>2500</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#FFFFFF</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">10</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>191</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>91</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>93</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>2500</MinScaleDenominator>
      <MaxScaleDenominator>5000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#FFFFFF</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">5</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>191</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>91</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>93</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>5000</MinScaleDenominator>
      <MaxScaleDenominator>20000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#FFFFFF</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">3</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
  </FeatureTypeStyle>


  <!-- ******** STREETS ******** -->
  <!-- STREET OUTLINE - UNDER LAYER -->
  <FeatureTypeStyle>
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MaxScaleDenominator>1000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">100</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 

    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>1000</MinScaleDenominator>
      <MaxScaleDenominator>1800</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">45</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 

    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>1800</MinScaleDenominator>
      <MaxScaleDenominator>2500</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">26</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 

    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>2500</MinScaleDenominator>
      <MaxScaleDenominator>5000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">18</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 

    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>5000</MinScaleDenominator>
      <MaxScaleDenominator>10000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">12</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>10000</MinScaleDenominator>
      <MaxScaleDenominator>20000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">7</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 

    <!-- bg for just freeways and majr arts -->
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>20000</MinScaleDenominator>
      <MaxScaleDenominator>150000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">4.0</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule>

    <!-- bg high out zooms (lighter color gray) -->
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>20000</MinScaleDenominator>
      <MaxScaleDenominator>200000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#dfdfdf</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">2</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>200000</MinScaleDenominator>
      <MaxScaleDenominator>604724</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#dfdfdf</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">1</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>604724</MinScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#dfdfdf</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">1</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
  </FeatureTypeStyle>

  <!-- STREETS OVER LAYER HIGHLIGHT -->
  <FeatureTypeStyle>
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MaxScaleDenominator>1000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#FFFFFF</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">92</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 

    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>1000</MinScaleDenominator>
      <MaxScaleDenominator>1800</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#FFFFFF</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">41</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 

    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>1800</MinScaleDenominator>
      <MaxScaleDenominator>2500</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#FFFFFF</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">23</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 

    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>2500</MinScaleDenominator>
      <MaxScaleDenominator>5000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#FFFFFF</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">15</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 

    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>5000</MinScaleDenominator>
      <MaxScaleDenominator>10000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#FFFFFF</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">10</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>10000</MinScaleDenominator>
      <MaxScaleDenominator>20000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#FFFFFF</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">5</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 

    <!-- lower zoom, just highlight the major arterials -->
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>20000</MinScaleDenominator>
      <MaxScaleDenominator>150000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#FFFFFF</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">2.0</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
    <Rule>
      <ogc:Filter>
      <ogc:Or>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>151</ogc:Literal></ogc:PropertyIsEqualTo>
      </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>150000</MinScaleDenominator>
      <MaxScaleDenominator>200000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#FFFFFF</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">0.75</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 
  </FeatureTypeStyle>

  <!-- ******** TRAILS AND PATHS AND RAILROADS ********  -->
  <FeatureTypeStyle>

    <!-- stairs -->
    <Rule>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>display_type</ogc:PropertyName>
          <ogc:Literal>22</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <MaxScaleDenominator>5000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-opacity">1</CssParameter>
          <CssParameter name="stroke-dasharray">1 2</CssParameter>
          <CssParameter name="stroke-width">6</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 

    <!-- trails and paths -->
    <Rule>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>display_type</ogc:PropertyName>
          <ogc:Literal>2</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <MaxScaleDenominator>2500</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-dasharray">2 2</CssParameter>
          <CssParameter name="stroke-opacity">1</CssParameter>
          <CssParameter name="stroke-width">2</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 

    <Rule>
      <ogc:Filter>
        <ogc:Or>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>display_type</ogc:PropertyName>
          <ogc:Literal>22</ogc:Literal>
        </ogc:PropertyIsEqualTo>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>display_type</ogc:PropertyName>
          <ogc:Literal>2</ogc:Literal>
        </ogc:PropertyIsEqualTo>
        </ogc:Or>
      </ogc:Filter>
      <MinScaleDenominator>2500</MinScaleDenominator>
      <MaxScaleDenominator>20000</MaxScaleDenominator>
      <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#adadad</CssParameter>
          <CssParameter name="stroke-dasharray">1 1</CssParameter>
          <CssParameter name="stroke-opacity">1</CssParameter>
          <CssParameter name="stroke-width">1</CssParameter>
        </Stroke>
      </LineSymbolizer>
    </Rule> 

    <!-- rail roads -->
    <Rule>
        <ogc:Filter>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>display_type</ogc:PropertyName>
            <ogc:Literal>4</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:Filter>
        <MaxScaleDenominator>75591</MaxScaleDenominator>
        <LineSymbolizer>
           <Stroke>
              <GraphicStroke>
                 <Graphic>
                    <Mark>
                       <WellKnownName>shape://vertline</WellKnownName>
                       <Stroke>
                          <CssParameter name="stroke">#dfdfdf</CssParameter>
                          <CssParameter name="stroke-opacity">1</CssParameter>
                          <CssParameter name="stroke-width">0.75</CssParameter>
                       </Stroke>
                    </Mark>
                    <Size>12</Size>
                 </Graphic>
               </GraphicStroke>
           </Stroke>
        </LineSymbolizer>
    </Rule>
    <Rule>
        <ogc:Filter>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>display_type</ogc:PropertyName>
            <ogc:Literal>4</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:Filter>
        <MaxScaleDenominator>75591</MaxScaleDenominator>
        <LineSymbolizer>
        <Stroke>
          <CssParameter name="stroke">#dfdfdf</CssParameter>
          <CssParameter name="stroke-linejoin">round</CssParameter>
          <CssParameter name="stroke-linecap">round</CssParameter>
          <CssParameter name="stroke-width">0.75</CssParameter>
        </Stroke>
        </LineSymbolizer>
    </Rule> 
  </FeatureTypeStyle>

  <!-- ******** LABELS and ARROWS ******** -->
  <!-- labels (street names) -->
  <FeatureTypeStyle>

    <!-- all names @ higher zooms (12 pt font) -->
    <Rule>
      <ogc:Filter>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>label</ogc:PropertyName>
          <ogc:Literal>true</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <MaxScaleDenominator>4000</MaxScaleDenominator>
      <TextSymbolizer>
        <Label>
          <ogc:PropertyName>label_text</ogc:PropertyName>
        </Label>
        <Font>
            <CssParameter name="font-family">Lucida Sans</CssParameter>
            <CssParameter name="font-style">Normal</CssParameter>
            <CssParameter name="font-size">11</CssParameter>
            <CssParameter name="font-weight">regular</CssParameter>
        </Font>
        <LabelPlacement>
            <LinePlacement>
                 <PerpendicularOffset>0</PerpendicularOffset>
             </LinePlacement>
        </LabelPlacement>
        <Halo>
            <Radius>  
              <ogc:Literal>2</ogc:Literal>
            </Radius>
            <Fill>
              <CssParameter name="fill">#ffffff</CssParameter>
              <CssParameter name="fill-opacity">0.8</CssParameter>
            </Fill>
        </Halo>
        <Fill>
            <CssParameter name="fill">#000000</CssParameter>
            <CssParameter name="fill-opacity">1.0</CssParameter>
        </Fill>
        <VendorOption name="group">true</VendorOption>
        <VendorOption name="followLine">true</VendorOption>
        <VendorOption name="maxAngleDelta">20</VendorOption>
        <VendorOption name="labelAllGroup">true</VendorOption>
        <VendorOption name="minGroupDistance">350</VendorOption>
        <VendorOption name="repeat">300</VendorOption>
        <VendorOption name="maxDisplacement">200</VendorOption>
        <VendorOption name="spaceAround">4</VendorOption>
      </TextSymbolizer>
    </Rule>

    <!-- street and arterial names @ mid-higher zooms (10 pt font) -->
    <Rule>
      <ogc:Filter>
      <ogc:And>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>label</ogc:PropertyName>
          <ogc:Literal>true</ogc:Literal>
        </ogc:PropertyIsEqualTo>
	<ogc:Or>
	  <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo>
	  <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
	  <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
	</ogc:Or>
      </ogc:And>
      </ogc:Filter>
      <MinScaleDenominator>4000</MinScaleDenominator>
      <MaxScaleDenominator>13000</MaxScaleDenominator>
      <TextSymbolizer>
        <Label>
          <ogc:PropertyName>label_text</ogc:PropertyName>
        </Label>
        <Font>
            <CssParameter name="font-family">Lucida Sans</CssParameter>
            <CssParameter name="font-style">Normal</CssParameter>
            <CssParameter name="font-size">10</CssParameter>
            <CssParameter name="font-weight">regular</CssParameter>
        </Font>
        <LabelPlacement>
            <LinePlacement>
                 <PerpendicularOffset>0</PerpendicularOffset>
             </LinePlacement>
        </LabelPlacement>
        <Halo>
            <Radius>  
              <ogc:Literal>2</ogc:Literal>
            </Radius>
            <Fill>
              <CssParameter name="fill">#ffffff</CssParameter>
              <CssParameter name="fill-opacity">0.8</CssParameter>
            </Fill>
        </Halo>
        <Fill>
            <CssParameter name="fill">#000000</CssParameter>
            <CssParameter name="fill-opacity">1.0</CssParameter>
        </Fill>
        <VendorOption name="group">true</VendorOption>
        <VendorOption name="followLine">true</VendorOption>
        <VendorOption name="maxAngleDelta">20</VendorOption>
        <VendorOption name="labelAllGroup">true</VendorOption>
        <VendorOption name="minGroupDistance">350</VendorOption>
        <VendorOption name="repeat">300</VendorOption>
        <VendorOption name="maxDisplacement">200</VendorOption>
        <VendorOption name="spaceAround">4</VendorOption>
      </TextSymbolizer>
    </Rule>

    <!-- major arterial and arterial names @ mid zooms -->
    <Rule>
      <ogc:Filter>
      <ogc:And>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>label</ogc:PropertyName>
          <ogc:Literal>true</ogc:Literal>
        </ogc:PropertyIsEqualTo>
	<ogc:Or>
	  <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
	  <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>131</ogc:Literal></ogc:PropertyIsEqualTo>
	</ogc:Or>
      </ogc:And>
      </ogc:Filter>
      <MinScaleDenominator>13000</MinScaleDenominator>
      <MaxScaleDenominator>30000</MaxScaleDenominator>
      <TextSymbolizer>
        <Label>
          <ogc:PropertyName>label_text</ogc:PropertyName>
        </Label>
        <Font>
            <CssParameter name="font-family">Lucida Sans</CssParameter>
            <CssParameter name="font-style">Normal</CssParameter>
            <CssParameter name="font-size">10</CssParameter>
            <CssParameter name="font-weight">regular</CssParameter>
        </Font>
        <LabelPlacement>
            <LinePlacement>
                 <PerpendicularOffset>0</PerpendicularOffset>
             </LinePlacement>
        </LabelPlacement>
        <Halo>
            <Radius>  
              <ogc:Literal>2</ogc:Literal>
            </Radius>
            <Fill>
              <CssParameter name="fill">#ffffff</CssParameter>
              <CssParameter name="fill-opacity">0.8</CssParameter>
            </Fill>
        </Halo>
        <Fill>
            <CssParameter name="fill">#000000</CssParameter>
            <CssParameter name="fill-opacity">1.0</CssParameter>
        </Fill>
        <VendorOption name="group">true</VendorOption>
        <VendorOption name="followLine">true</VendorOption>
        <VendorOption name="maxAngleDelta">20</VendorOption>
        <VendorOption name="labelAllGroup">true</VendorOption>
        <VendorOption name="minGroupDistance">350</VendorOption>
        <VendorOption name="repeat">300</VendorOption>
        <VendorOption name="maxDisplacement">200</VendorOption>
        <VendorOption name="spaceAround">4</VendorOption>
      </TextSymbolizer>
    </Rule>

    <!-- major arterial names @ higher zooms -->
    <Rule>
      <ogc:Filter>
      <ogc:And>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>label</ogc:PropertyName>
          <ogc:Literal>true</ogc:Literal>
        </ogc:PropertyIsEqualTo>
	<ogc:Or>
	  <ogc:PropertyIsEqualTo><ogc:PropertyName>display_type</ogc:PropertyName><ogc:Literal>111</ogc:Literal></ogc:PropertyIsEqualTo>
	</ogc:Or>
      </ogc:And>
      </ogc:Filter>
      <MinScaleDenominator>30000</MinScaleDenominator>
      <MaxScaleDenominator>180000</MaxScaleDenominator>
      <TextSymbolizer>
        <Label>
          <ogc:PropertyName>label_text</ogc:PropertyName>
        </Label>
        <Font>
            <CssParameter name="font-family">Lucida Sans</CssParameter>
            <CssParameter name="font-style">Normal</CssParameter>
            <CssParameter name="font-size">8</CssParameter>
            <CssParameter name="font-weight">regular</CssParameter>
        </Font>
        <LabelPlacement>
            <LinePlacement>
                 <PerpendicularOffset>0</PerpendicularOffset>
             </LinePlacement>
        </LabelPlacement>
        <Halo>
            <Radius>  
              <ogc:Literal>2</ogc:Literal>
            </Radius>
            <Fill>
              <CssParameter name="fill">#ffffff</CssParameter>
              <CssParameter name="fill-opacity">0.8</CssParameter>
            </Fill>
        </Halo>
        <Fill>
            <CssParameter name="fill">#000000</CssParameter>
            <CssParameter name="fill-opacity">1.0</CssParameter>
        </Fill>
        <VendorOption name="group">true</VendorOption>
        <VendorOption name="followLine">true</VendorOption>
        <VendorOption name="maxAngleDelta">20</VendorOption>
        <VendorOption name="labelAllGroup">true</VendorOption>
        <VendorOption name="minGroupDistance">350</VendorOption>
        <VendorOption name="repeat">500</VendorOption>
        <VendorOption name="maxDisplacement">200</VendorOption>
        <VendorOption name="spaceAround">4</VendorOption>
      </TextSymbolizer>
    </Rule>

    <!-- Oneway Street Arrows label (but not on service roads, ala type 191) -->
    <Rule>
      <ogc:Filter>
      <ogc:And>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>direction</ogc:PropertyName>
          <ogc:Literal>2</ogc:Literal>
        </ogc:PropertyIsEqualTo>
        <ogc:PropertyIsNotEqualTo>
          <ogc:PropertyName>display_type</ogc:PropertyName>
          <ogc:Literal>191</ogc:Literal>
        </ogc:PropertyIsNotEqualTo>
        <ogc:PropertyIsNotEqualTo>
          <ogc:PropertyName>display_type</ogc:PropertyName>
          <ogc:Literal>2</ogc:Literal>
        </ogc:PropertyIsNotEqualTo>
        <ogc:PropertyIsNotEqualTo>
          <ogc:PropertyName>display_type</ogc:PropertyName>
          <ogc:Literal>151</ogc:Literal>
        </ogc:PropertyIsNotEqualTo>
      </ogc:And>
      </ogc:Filter>
      <MaxScaleDenominator>15000</MaxScaleDenominator>
      <TextSymbolizer>
        <Label>
          <ogc:Literal>&#xF09E;</ogc:Literal>
        </Label>
        <Font>
          <CssParameter name="font-family">Wingdings 3</CssParameter>
          <CssParameter name="font-size">14</CssParameter>
        </Font>
        <LabelPlacement>
          <LinePlacement>
            <PerpendicularOffset>0</PerpendicularOffset>
          </LinePlacement>
        </LabelPlacement>
        <Fill>
          <CssParameter name="fill">#67929E</CssParameter>
        </Fill>
        <VendorOption name="repeat">200</VendorOption>
        <VendorOption name="maxDisplacement">300</VendorOption>
        <VendorOption name="spaceAround">50</VendorOption>
        <VendorOption name="forceLeftToRight">false</VendorOption>
        <VendorOption name="followLine">true</VendorOption>
      </TextSymbolizer>
    </Rule>
    <Rule>
      <ogc:Filter>
      <ogc:And>
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>direction</ogc:PropertyName>
          <ogc:Literal>3</ogc:Literal>
        </ogc:PropertyIsEqualTo>
        <ogc:PropertyIsNotEqualTo>
          <ogc:PropertyName>display_type</ogc:PropertyName>
          <ogc:Literal>191</ogc:Literal>
        </ogc:PropertyIsNotEqualTo>
      </ogc:And>
      </ogc:Filter>
      <MaxScaleDenominator>15000</MaxScaleDenominator>
      <TextSymbolizer>
        <Label>
          <ogc:Literal>&#xF09E;</ogc:Literal>
        </Label>
        <Font>
          <CssParameter name="font-family">Wingdings 3</CssParameter>
          <CssParameter name="font-size">14</CssParameter>
        </Font>
        <LabelPlacement>
          <LinePlacement>
            <PerpendicularOffset>0</PerpendicularOffset>
          </LinePlacement>
        </LabelPlacement>
        <Fill>
          <CssParameter name="fill">#67929E</CssParameter>
        </Fill>

        <VendorOption name="repeat">290</VendorOption>
        <VendorOption name="maxDisplacement">300</VendorOption>
        <VendorOption name="spaceAround">50</VendorOption>
        <VendorOption name="forceLeftToRight">false</VendorOption>
        <VendorOption name="followLine">true</VendorOption>
      </TextSymbolizer>
    </Rule>
  </FeatureTypeStyle>

  </UserStyle>
</NamedLayer>
</StyledLayerDescriptor>