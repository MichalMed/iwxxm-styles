<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ogc="http://www.opengis.net/ogc"
    xsi:schemaLocation="http://www.opengis.net/sld https://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
    version="1.0.0">
    
    <NamedLayer>
        <!-- reference to a named layer in the server catalogue -->
        <Name>turbulence</Name>
        <UserStyle>
            <Name>Turbulence</Name>
            <FeatureTypeStyle>
                <Name>turbulence</Name>
                
               
                <Rule>
                    <Name>Visual style</Name>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#1d1414</CssParameter><!-- color -->
                            <CssParameter name="stroke-width">3</CssParameter>
                            <CssParameter name="stroke-dasharray">20 7</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <TextSymbolizer>
                        <Geometry>
                            <ogc:Function name="boundary">
                                <ogc:PropertyName>geom_area</ogc:PropertyName>
                            </ogc:Function>
                        </Geometry>
                        <Label>
                            <ogc:Function name="Concatenate">
                                <ogc:Literal>T</ogc:Literal>
                                <ogc:PropertyName>report</ogc:PropertyName>
                            </ogc:Function>
                        </Label>
                        <Font>
                            <CssParameter name="font-family">Arial</CssParameter>
                            <CssParameter name="font-size">12</CssParameter>
                            <CssParameter name="font-style">normal</CssParameter>
                            <CssParameter name="font-weight">bold</CssParameter>
                        </Font>
                        <Graphic>
                            <Mark>
                                <WellKnownName>Square</WellKnownName>
                                <Fill>
                                    <CssParameter name="fill">#ffffff</CssParameter>
                                    <CssParameter name="fill-opacity">1</CssParameter>
                                </Fill>
                                <Stroke>
                                    <CssParameter name="stroke">#000000</CssParameter>
                                    <CssParameter name="stroke-width">1</CssParameter>
                                </Stroke>  
                            </Mark>
                        </Graphic>
                        <VendorOption name="graphic-resize">stretch</VendorOption>
                        <VendorOption name="graphic-margin">2</VendorOption>
                        <VendorOption name="repeat">500</VendorOption>
                        <VendorOption name="maxDisplacement">20</VendorOption>
                        <VendorOption name="conflictResolution">false</VendorOption>
                        
                    </TextSymbolizer>
                </Rule>
            </FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>
</StyledLayerDescriptor>
