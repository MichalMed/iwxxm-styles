<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc"
    xsi:schemaLocation="http://www.opengis.net/sld https://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
    version="1.0.0">

    <NamedLayer>
        <!-- reference to a named layer in the server catalogue -->
        <Name>tropopauseLevel</Name>
        <UserStyle>
            <Name>Tropopause Level</Name>
            <FeatureTypeStyle>
                <Name>Contour</Name>
                <Rule>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">#1d1414</CssParameter>
                            <CssParameter name="stroke-width">2</CssParameter>
                            <CssParameter name="stroke-dasharray">10 3</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <TextSymbolizer>
                        <Label>
<!--                            <ogc:Literal>FL</ogc:Literal>--> <!--Not sure if w or w/o FL-->
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
                            <LinePlacement>
                                <PerpendicularOffset>0</PerpendicularOffset>
                            </LinePlacement>
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
                        <VendorOption name="graphic-margin">2</VendorOption>
                        <VendorOption name="repeat">350</VendorOption>
                    </TextSymbolizer>
                </Rule>
            </FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>
</StyledLayerDescriptor>
