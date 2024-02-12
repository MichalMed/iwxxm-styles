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
                
                <!-- trick rule to add stuff to legend -->
                <!--                <Rule>
                    <Name>LegendRule</Name>
                    <Title>moderate turbulence</Title>
                    <!-\- some filter expression that is never true -\->
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>geom_area</ogc:PropertyName>
                            <ogc:Literal>123</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <PointSymbolizer>
                        <Graphic>
                            <ExternalGraphic>
                                <OnlineResource xlink:type="simple" xlink:href="moderate_turbulence.jpg"/>
                                <Format>image/jpeg</Format>
                            </ExternalGraphic>
                            <Size>13</Size>
                        </Graphic>
                    </PointSymbolizer>
                </Rule>-->
                
                <!--                <Rule>
                    <Name>generative rule</Name>
                    <Title>
                        <Localized>
                            <ogc:Function name="Concatenate">                            
                             <ogc:Literal>T</ogc:Literal>
                             <ogc:PropertyName>report</ogc:PropertyName>
                            </ogc:Function>
                        </Localized>
                    </Title>
                    <LegendGraphic>
                        <Graphic></Graphic>
                    </LegendGraphic>
                </Rule>-->
                
                <Rule>
                    <Name>Visual style</Name>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#1d1414</CssParameter><!-- color -->
                            <CssParameter name="stroke-width">4</CssParameter>
                            <CssParameter name="stroke-dasharray">30 10</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <!--<PointSymbolizer>
                        <!-/- if http://codes.wmo.int/bufr4/codeflag/0-11-030/6 then moderate -/->
                        <!-/- if http://codes.wmo.int/bufr4/codeflag/0-11-030/7 then severe -/->
                        <!-/- centroid does not always lie inside the geometry -/->
                        <Geometry>
                            <ogc:Function name="centroid">
                                <ogc:PropertyName>geom_area</ogc:PropertyName>
                            </ogc:Function>
                        </Geometry>
                        <Graphic>
                            <ExternalGraphic>
                                <OnlineResource xlink:type="simple" xlink:href="file://moderate_turbulence.jpg"/>
                                <Format>image/jpeg</Format>
                            </ExternalGraphic>
                            <Size>13</Size>
                        </Graphic>
                    </PointSymbolizer>-->
                    <TextSymbolizer>
                        <Geometry>
                            <ogc:Function name="boundary">
                                <ogc:PropertyName>geom_area</ogc:PropertyName>
                            </ogc:Function>
                        </Geometry>
                        <!-- I'm not really sure which attribute to use as a reference, either degree or report, most likely the last number of report, it shall be extracted beforehand -->
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
                        <!--                        <LabelPlacement>
                            <PointPlacement>
                                <AnchorPoint>
                                    <AnchorPointX>1.5</AnchorPointX>
                                    <AnchorPointY>0.5</AnchorPointY>
                                </AnchorPoint>
                                <Displacement>
                                    <DisplacementX>-10</DisplacementX>
                                    <DisplacementY>0</DisplacementY>
                                </Displacement>
                            </PointPlacement>
                        </LabelPlacement>
-->                        <Graphic>
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
                    </TextSymbolizer>
                    
                    <!--<TextSymbolizer>
                        <Geometry>
                            <ogc:Function name="centroid">
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
                        <LabelPlacement>
                            <PointPlacement>
                                <AnchorPoint>
                                    <AnchorPointX>1.5</AnchorPointX>
                                    <AnchorPointY>0.5</AnchorPointY>
                                </AnchorPoint>
                                <Displacement>
                                    <DisplacementX>-10</DisplacementX>
                                    <DisplacementY>0</DisplacementY>
                                </Displacement>
                            </PointPlacement>
                        </LabelPlacement>
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
                    </TextSymbolizer>-->
                    <!--<TextSymbolizer>
                        <Geometry>
                            <ogc:Function name="centroid">
                                <ogc:PropertyName>geom_area</ogc:PropertyName>
                            </ogc:Function>
                        </Geometry>
                        <Label>
                            <ogc:Function name="numberFormat">
                                <ogc:Literal>###</ogc:Literal>
                                <ogc:Div>
                                    <ogc:PropertyName>elevation_upper</ogc:PropertyName>
                                    <ogc:Literal>100</ogc:Literal>
                                </ogc:Div>
                            </ogc:Function><![CDATA[
]]>
                            <ogc:Function name="if_then_else">
                                <ogc:Function name="isNull">
                                    <ogc:PropertyName>elevation_lower</ogc:PropertyName>
                                </ogc:Function>
                                <ogc:Literal>XXX</ogc:Literal>
                                <ogc:Function name="numberFormat"><
                                    <ogc:Literal>###</ogc:Literal>
                                    <ogc:Div>
                                        <ogc:PropertyName>elevation_lower</ogc:PropertyName>
                                        <ogc:Literal>100</ogc:Literal>
                                    </ogc:Div>
                                </ogc:Function>
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
                                    <AnchorPointX>0</AnchorPointX>
                                    <AnchorPointY>0.5</AnchorPointY>
                                </AnchorPoint>
                                <Displacement>
                                    <DisplacementX>10</DisplacementX>
                                    <DisplacementY>0</DisplacementY>
                                </Displacement>
                            </PointPlacement>
                        </LabelPlacement>
                        <Graphic>
                            <Mark>
                                <WellKnownName>Square</WellKnownName>
                                <Fill>
                                    <CssParameter name="fill">#ffffff</CssParameter>
                                    <CssParameter name="fill-opacity">1</CssParameter>
                                </Fill>
                            </Mark>
                        </Graphic>
                        <VendorOption name="graphic-resize">stretch</VendorOption>
                        <VendorOption name="graphic-margin">2 2 2 2</VendorOption>
                        <VendorOption name="maxDisplacement">20</VendorOption>
                    </TextSymbolizer>-->
                </Rule>
            </FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>
</StyledLayerDescriptor>
