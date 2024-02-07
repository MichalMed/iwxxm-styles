<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:ogc="http://www.opengis.net/ogc"
    xsi:schemaLocation="http://www.opengis.net/sld https://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" version="1.0.0">
    
    <NamedLayer>
        <Name>jetstream_symbol_table</Name>
        <UserStyle>
            <FeatureTypeStyle>
                <Name>Jet Stream Wind Symbol</Name>
                <Rule>
                    <Name>Wind Symbol West to East</Name>
                    <ogc:Filter>
                        <ogc:Or>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>rotation</ogc:PropertyName>
                                <ogc:Literal>1.570796327</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>rotation</ogc:PropertyName>
                                <ogc:Literal>4.71238898</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                        </ogc:Or>
                    </ogc:Filter>
                    <PointSymbolizer>
                        <Graphic>
                            <ExternalGraphic>
                                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="symbols/${speed_encoded}.png"/>
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
                        <VendorOption name="labelObstacle">true</VendorOption><!-- no label is over the symbol -->
                    </PointSymbolizer>
                    <TextSymbolizer>
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
                                    <DisplacementY>-22</DisplacementY>
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
                <Rule>
                    <Name>Wind Symbol East to West</Name>
                    <ogc:Filter>
                        <ogc:PropertyIsBetween>
                            <ogc:PropertyName>rotation</ogc:PropertyName>
                            <ogc:LowerBoundary>
                                <ogc:Literal>1.570796327</ogc:Literal>
                            </ogc:LowerBoundary>
                            <ogc:UpperBoundary>
                                <ogc:Literal>4.71238898</ogc:Literal>
                            </ogc:UpperBoundary>
                        </ogc:PropertyIsBetween>
                    </ogc:Filter>
                    <PointSymbolizer>
                        <Graphic>
                            <ExternalGraphic>
                                <OnlineResource xmlns:xlink="http://www.w3.org/1999/xlink" xlink:type="simple" xlink:href="symbols/${speed_encoded}.png"/>
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
                        <VendorOption name="labelObstacle">true</VendorOption><!-- no label is over the symbol -->
                    </PointSymbolizer>
                    <TextSymbolizer>
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
                                    <DisplacementY>-22</DisplacementY>
                                </Displacement>
                                <Rotation>
                                    <ogc:Add>
                                        <ogc:Function name="PI"/>
                                        <ogc:Div>
                                            <ogc:PropertyName>rotation</ogc:PropertyName>
                                            <ogc:Literal>0.017453293</ogc:Literal>
                                        </ogc:Div>
                                    </ogc:Add>
                                </Rotation>
                            </PointPlacement>
                        </LabelPlacement> 
                    </TextSymbolizer>                    
                </Rule>
            </FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>    
</StyledLayerDescriptor>
