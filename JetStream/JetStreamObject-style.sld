<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:ogc="http://www.opengis.net/ogc"
    xsi:schemaLocation="http://www.opengis.net/sld https://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" version="1.0.0">
    
    <NamedLayer>
        <!-- reference to a named layer in the server catalogue -->
        <Name>JetStreamObject</Name>
        <UserStyle>
            <Name>Jetstream Line</Name>
            <FeatureTypeStyle>
                <Rule>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#1d1414</CssParameter>
                            <CssParameter name="stroke-width">2</CssParameter>
                        </Stroke>    
                    </LineSymbolizer>
                    <PointSymbolizer>
                        <Geometry>
                            <ogc:Function name="endPoint">
                                <ogc:PropertyName>geom</ogc:PropertyName><!-- name of the geometry column in geoserver -->
                            </ogc:Function>
                        </Geometry>
                        <Graphic>
                            <Mark>
                                <WellKnownName>shape://carrow</WellKnownName><!-- oarrow = open arrow, carrow = closed arrow -->
                                <Fill>
                                    <CssParameter name="fill">#1d1414</CssParameter>
                                    <CssParameter name="fill-opacity">1</CssParameter>
                                </Fill>
                                <Stroke>
                                    <CssParameter name="stroke">#1d1414</CssParameter>
                                    <CssParameter name="stroke-width">2</CssParameter>
                                </Stroke>
                            </Mark>
                            <Size>20</Size>
                            <Rotation>
                                <ogc:Function name="endAngle">
                                    <ogc:PropertyName>geom</ogc:PropertyName>
                                </ogc:Function>
                            </Rotation>
                        </Graphic>
                    </PointSymbolizer>
                </Rule>
            </FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>    
</StyledLayerDescriptor>
