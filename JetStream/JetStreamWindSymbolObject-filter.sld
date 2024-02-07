<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:ogc="http://www.opengis.net/ogc"
    xsi:schemaLocation="http://www.opengis.net/sld https://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" version="1.0.0">
    
    <NamedLayer>
        <!-- reference to a named layer in the server catalogue -->
        <Name>jetstreamwindsymbol</Name>
        <UserStyle>
            <Name>Dark arrows</Name>
            <FeatureTypeStyle>
                <Name>Dark line</Name>
                <Rule>
                    <!-- rewrite conditions based on the value using filter: https://docs.geoserver.geo-solutions.it/draft/edu/en/pretty_maps/style_points.html -->
                    <!-- ABBBB -->
                    <Name>ABBBB</Name>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>speed_encoded</ogc:PropertyName>
                            <ogc:Literal>ABBBB</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <MaxScaleDenominator>200000000</MaxScaleDenominator><!-- max denominator in which the symbol is visualised -->
                    <PointSymbolizer>
                        <Graphic>
                            <ExternalGraphic>
                                <OnlineResource xlink:type="simple" xlink:href="file://ABBB.png"/>
                                <Format>image/png</Format>
                            </ExternalGraphic>
                            <Size>15</Size>
                            <Rotation>
                                <ogc:Div>
                                    <ogc:PropertyName>rotation</ogc:PropertyName>
                                    <ogc:Literal>0.017453293</ogc:Literal>
                                </ogc:Div>
                            </Rotation>
                        </Graphic>
                        <!--<VendorOption name="labelObstacle">true</VendorOption>--><!-- no label is over the symbol -->
                    </PointSymbolizer>
                    <TextSymbolizer><!-- text symblizers must be offseted to be visible -->
                        <Label>
                            <ogc:Literal>FL</ogc:Literal>
                            <ogc:Function name="numberFormat"><!-- formats number -->
                                <ogc:Literal>###</ogc:Literal>
                                <ogc:Div>
                                    <ogc:PropertyName>elevation</ogc:PropertyName>
                                    <ogc:Literal>100</ogc:Literal>
                                </ogc:Div>
                            </ogc:Function>
                        </Label>
                        <Font>
                            <CssParameter name="font-family">Arial</CssParameter>
                            <CssParameter name="font-size">12</CssParameter>
                            <CssParameter name="font-style">normal</CssParameter>
                            <CssParameter name="font-weight">bold</CssParameter>
                        </Font>
                        <LabelPlacement>
                            <PointPlacement>
                                <AnchorPoint>
                                    <AnchorPointX>0.5</AnchorPointX>
                                    <AnchorPointY>0</AnchorPointY>
                                </AnchorPoint>
                                <Displacement>
                                    <DisplacementX>0</DisplacementX>
                                    <DisplacementY>-25</DisplacementY>
                                </Displacement>
                                <Rotation>
                                    <ogc:Div>
                                        <ogc:PropertyName>rotation</ogc:PropertyName>
                                        <ogc:Literal>0.017453293</ogc:Literal>
                                    </ogc:Div>
                                </Rotation>
                            </PointPlacement>
                        </LabelPlacement>
                    </TextSymbolizer>                    
                </Rule>
            </FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>    
</StyledLayerDescriptor>
