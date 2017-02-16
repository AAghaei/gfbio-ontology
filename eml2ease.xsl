<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <!-- <?xml version="1.0"?> -->
      <Ease>
         <Object>
            <Contexts>
               <!--1 or more repetitions:-->
               <Context>
                  <!--Optional:-->
                  <TimeContext>
                     <!--Optional:-->
                     <TimeRanges>
                        <TimeRange>
                           <RangeStart>
                              <DateTime>
                                 <date><xsl:value-of select="//beginDate/calendarDate"/></date>
                                 <time>rare</time>
                                 <timezone>rare</timezone>
                              </DateTime>
                           </RangeStart>
                           <RangeEnd>
                              <DateTime>
                                 <date><xsl:value-of select="//endDate/calendarDate"/></date>
                                 <time>rare</time>
                                 <timezone>rare</timezone>
                              </DateTime>
                           </RangeEnd>
                        </TimeRange>
                     </TimeRanges>
                     <!--Optional:-->
                     <TimePeriods>
                        <TimePeriod>
                           <!--1 or more repetitions:-->
                           <GeologicalTimePeriod>
                              <geologicalEon>rare</geologicalEon>
                              <!--Optional:-->
                              <geologicalEra>rare</geologicalEra>
                              <!--Optional:-->
                              <geologicalPeriod>rare</geologicalPeriod>
                              <!--Optional:-->
                              <geologicalEpoch>rare</geologicalEpoch>
                              <!--Optional:-->
                              <geologicalAge>rare</geologicalAge>
                           </GeologicalTimePeriod>
                        </TimePeriod>
                     </TimePeriods>
                     <!--Optional:-->
                     <TemporalResolutions>
                        <!--1 or more repetitions:-->
                        <TemporalResolution>
                           <temporalExtentType>string</temporalExtentType>
                           <temporalResolutionType>string</temporalResolutionType>
                        </TemporalResolution>
                     </TemporalResolutions>
                  </TimeContext>
                  <!--Optional:-->
                  <SpaceContext>
                     <BoundingBoxes>
                        <BoundingBox>
                           <northBoundingCoordinate><xsl:value-of select="//northBoundingCoordinate"/></northBoundingCoordinate>
                           <southBoundingCoordinate><xsl:value-of select="//southBoundingCoordinate"/></southBoundingCoordinate>
                           <eastBoundingCoordinate><xsl:value-of select="//eastBoundingCoordinate"/></eastBoundingCoordinate>
                           <westBoundingCoordinate><xsl:value-of select="//westBoundingCoordinate"/></westBoundingCoordinate>
                        </BoundingBox>
                     </BoundingBoxes>
                     <!--Optional:-->
                     <Elevations>
                        <Elevation>
                           <maximumElevation>251</maximumElevation>
                           <maximumElevationUnit>Metre</maximumElevationUnit>
                           <minimumElevation>903</minimumElevation>
                           <minimumElevationUnit>Metre</minimumElevationUnit>
                           <elevationDatum>Above Mean Sea Level</elevationDatum>
                        </Elevation>
                     </Elevations>
                     <!--Optional:-->
                     <Coordinates>
                        <!--1 or more repetitions:-->
                        <Coordinate>
                           <UtmCoordinate>
                              <utmCoordinateZone>rare</utmCoordinateZone>
                              <utmCoordinateSubZone>rare</utmCoordinateSubZone>
                              <utmCoordinateHemisphere>rare</utmCoordinateHemisphere>
                              <utmCoordinateEasting>rare</utmCoordinateEasting>
                              <utmCoordinateEastingUnit>rare</utmCoordinateEastingUnit>
                              <utmCoordinateNorthing>rare</utmCoordinateNorthing>
                              <utmCoordinateNorthingUnit>rare</utmCoordinateNorthingUnit>
                              <utmCoordinateGeodeticDatum>rare</utmCoordinateGeodeticDatum>
                           </UtmCoordinate>
                        </Coordinate>
                     </Coordinates>
                     <!--Optional:-->
                     <Locations>
                        <!--1 or more repetitions:-->
                        <Location>
                           <locationName>Jiangxi</locationName>
                           <locationType>Administrative Division</locationType>
                           <countryName>China</countryName>
                           <continentName>Asia</continentName>
                        </Location>
                        <Location>
                           <locationName>Zhejiang</locationName>
                           <locationType>Administrative Division</locationType>
                           <countryName>China</countryName>
                           <continentName>Asia</continentName>
                        </Location>
                     </Locations>
                     <!--Optional:-->
                     <SpatialResolutions>
                        <!--1 or more repetitions:-->
                        <SpatialResolution>
                           <spatialExtentType>Region</spatialExtentType>
                           <spatialResolutionType>Plot</spatialResolutionType>
                        </SpatialResolution>
                     </SpatialResolutions>
                  </SpaceContext>
                  <!--Optional:-->
                  <SphereContext>
                     <Spheres>
                        <!--1 or more repetitions:-->
                        <Sphere>
                           <!--Optional:-->
                           <Atmosphere>
                              <!--Optional:-->
                              <NamedAtmosphereLayers>
                                 <!--1 or more repetitions:-->
                                 <NamedAtmosphereLayer>
                                    <atmosphereLayerName>rare</atmosphereLayerName>
                                 </NamedAtmosphereLayer>
                              </NamedAtmosphereLayers>
                              <!--Optional:-->
                              <NumericAtmosphereLayers>
                                 <!--1 or more repetitions:-->
                                 <NumericAtmosphereLayer>
                                    <minimumAtmosphereHeight>rare</minimumAtmosphereHeight>
                                    <minimumAtmosphereHeightUnit>rare</minimumAtmosphereHeightUnit>
                                    <maximumAtmosphereHeight>rare</maximumAtmosphereHeight>
                                    <maximumAtmosphereHeightUnit>rare</maximumAtmosphereHeightUnit>
                                 </NumericAtmosphereLayer>
                              </NumericAtmosphereLayers>
                           </Atmosphere>
                           <!--Optional:-->
                           <Hydrosphere>
                              <HydrosphereCompartments>
                                 <!--1 or more repetitions:-->
                                 <HydrosphereCompartment>
                                    <!--Optional:-->
                                    <River>
                                       <NamedRiverZones>
                                          <!--1 or more repetitions:-->
                                          <NamedRiverZone>
                                             <!--Optional:-->
                                             <longitudinalRiverZone>rare</longitudinalRiverZone>
                                             <!--Optional:-->
                                             <verticalRiverZone>rare</verticalRiverZone>
                                          </NamedRiverZone>
                                       </NamedRiverZones>
                                    </River>
                                    <!--Optional:-->
                                    <Lake>
                                       <NamedLakeZones>
                                          <!--1 or more repetitions:-->
                                          <NamedLakeZone>
                                             <!--Optional:-->
                                             <benthicLakeZone>rare</benthicLakeZone>
                                             <!--Optional:-->
                                             <pelagicLakeZone>rare</pelagicLakeZone>
                                          </NamedLakeZone>
                                       </NamedLakeZones>
                                    </Lake>
                                    <!--Optional:-->
                                    <Sea>
                                       <NamedSeaZones>
                                          <!--1 or more repetitions:-->
                                          <NamedSeaZone>
                                             <!--Optional:-->
                                             <benthicSeaZone>rare</benthicSeaZone>
                                             <!--Optional:-->
                                             <pelagicSeaZone>rare</pelagicSeaZone>
                                          </NamedSeaZone>
                                       </NamedSeaZones>
                                    </Sea>
                                 </HydrosphereCompartment>
                              </HydrosphereCompartments>
                           </Hydrosphere>
                           <!--Optional:-->
                           <Pedosphere>
                              <PedosphereCompartments>
                                 <!--1 or more repetitions:-->
                                 <PedosphereCompartment>
                                    <Soil>
                                       <!--Optional:-->
                                       <NamedSoilLayers>
                                          <!--1 or more repetitions:-->
                                          <NamedSoilLayer>
                                             <soilHorizon>rare</soilHorizon>
                                          </NamedSoilLayer>
                                       </NamedSoilLayers>
                                       <!--Optional:-->
                                       <NumericSoilLayers>
                                          <!--1 or more repetitions:-->
                                          <NumericSoilLayer>
                                             <minimumSoilDepth>rare</minimumSoilDepth>
                                             <minimumSoilDepthUnit>rare</minimumSoilDepthUnit>
                                             <maximumSoilDepth>rare</maximumSoilDepth>
                                             <maximumSoilDepthUnit>rare</maximumSoilDepthUnit>
                                          </NumericSoilLayer>
                                       </NumericSoilLayers>
                                       <!--Optional:-->
                                       <SoilTextures>
                                          <!--1 or more repetitions:-->
                                          <SoilTexture>
                                             <sandPercent>rare</sandPercent>
                                             <siltPercent>rare</siltPercent>
                                             <loamPercent>rare</loamPercent>
                                          </SoilTexture>
                                       </SoilTextures>
                                       <!--Optional:-->
                                       <SoilMorphologies>
                                          <!--1 or more repetitions:-->
                                          <SoilMorphology>
                                             <soilMorphologyType>rare</soilMorphologyType>
                                          </SoilMorphology>
                                       </SoilMorphologies>
                                       <!--Optional:-->
                                       <SoilAcidities>
                                          <!--1 or more repetitions:-->
                                          <SoilAcidity>
                                             <soilAcidityType>rare</soilAcidityType>
                                          </SoilAcidity>
                                       </SoilAcidities>
                                    </Soil>
                                 </PedosphereCompartment>
                              </PedosphereCompartments>
                           </Pedosphere>
                           <!--Optional:-->
                           <Ecosphere>
                              <!--Optional:-->
                              <NamedEcosphereLayers>
                                 <!--1 or more repetitions:-->
                                 <NamedEcosphereLayer>
                                    <ecosphereLayerName>rare</ecosphereLayerName>
                                 </NamedEcosphereLayer>
                              </NamedEcosphereLayers>
                              <!--Optional:-->
                              <NumericEcosphereLayers>
                                 <!--1 or more repetitions:-->
                                 <NumericEcosphereLayer>
                                    <minimumVegetationHeight>rare</minimumVegetationHeight>
                                    <minimumVegetationHeightUnit>rare</minimumVegetationHeightUnit>
                                    <maximumVegetationHeight>rare</maximumVegetationHeight>
                                    <maximumVegetationHeightUnit>rare</maximumVegetationHeightUnit>
                                 </NumericEcosphereLayer>
                              </NumericEcosphereLayers>
                              <!--Optional:-->
                              <OrganizationalHierarchies>
                                 <!--1 or more repetitions:-->
                                 <OrganizationalHierarchy>
                                    <organizationHierarchyName>string</organizationHierarchyName>
                                 </OrganizationalHierarchy>
                              </OrganizationalHierarchies>
                           </Ecosphere>
                        </Sphere>
                     </Spheres>
                  </SphereContext>
                  <!--Optional:-->
                  <BiomeContext>
                     <!--Optional:-->
                     <ZonoBiomes>
                        <!--1 or more repetitions:-->
                        <ZonoBiome>
                           <biomeType>Terrestrial</biomeType>
                           <biomeZone>Subtropics</biomeZone>
                           <biomeHumidityType>Humid</biomeHumidityType>
                           <biomeContinentalityType>Continental</biomeContinentalityType>
                           <biomeHemisphere>North</biomeHemisphere>
                        </ZonoBiome>
                     </ZonoBiomes>
                     <!--Optional:-->
                     <OroBiomes>
                        <!--1 or more repetitions:-->
                        <OroBiome>
                           <oroBiomeType>Montane</oroBiomeType>
                        </OroBiome>
                     </OroBiomes>
                     <!--Optional:-->
                     <PedoBiomes>
                        <!--1 or more repetitions:-->
                        <PedoBiome>
                           <pedoBiomeType>rare</pedoBiomeType>
                        </PedoBiome>
                     </PedoBiomes>
                     <!--Optional:-->
                     <Physiognomies>
                        <!--1 or more repetitions:-->
                        <Physiognomy>
                           <PhysiognomyTypes>
                              <!--1 or more repetitions:-->
                              <PhysiognomyType>
                                 <!--Optional:-->
                                 <TerrestrialPhysiognomies>
                                    <!--1 or more repetitions:-->
                                    <TerrestrialPhysiognomy>
                                       <terrestrialPhysiognomyType>Forest</terrestrialPhysiognomyType>
                                    </TerrestrialPhysiognomy>
                                    <TerrestrialPhysiognomy>
                                       <terrestrialPhysiognomyType>Mixed Forest</terrestrialPhysiognomyType>
                                    </TerrestrialPhysiognomy>
                                 </TerrestrialPhysiognomies>
                                 <!--Optional:-->
                                 <SemiAquaticPhysiognomies>
                                    <!--1 or more repetitions:-->
                                    <SemiAquaticPhysiognomy>
                                       <semiAquaticPhysiognomyType>rare</semiAquaticPhysiognomyType>
                                    </SemiAquaticPhysiognomy>
                                 </SemiAquaticPhysiognomies>
                                 <!--Optional:-->
                                 <AquaticPhysiognomies>
                                    <!--1 or more repetitions:-->
                                    <AquaticPhysiognomy>
                                       <!--Optional:-->
                                       <plantCharacterizedAquaticPhysiognomyType>rare</plantCharacterizedAquaticPhysiognomyType>
                                       <!--Optional:-->
                                       <habitatCharacterizedAquaticPhysiognomy>rare</habitatCharacterizedAquaticPhysiognomy>
                                    </AquaticPhysiognomy>
                                 </AquaticPhysiognomies>
                              </PhysiognomyType>
                           </PhysiognomyTypes>
                        </Physiognomy>
                     </Physiognomies>
                     <!--Optional:-->
                     <LandUses>
                        <!--1 or more repetitions:-->
                        <LandUse>
                           <!--Optional:-->
                           <landUseType>Natural</landUseType>
                           <!--Optional:-->
                           <landUseForm>rare</landUseForm>
                        </LandUse>
                     </LandUses>
                  </BiomeContext>
                  <!--Optional:-->
                  <OrganismContext>
                     <Organisms>
                        <!--1 or more repetitions:-->
                        <Organism>
                           <Taxonomy>
                              <!--Optional:-->
                              <domain>rare</domain>
                              <kingdom>string</kingdom>
                              <!--You have a CHOICE of the next 2 items at this level-->
                              <!--Optional:-->
                              <division>rare</division>
                              <!--Optional:-->
                              <class>rare</class>
                              <!--Optional:-->
                              <order>rare</order>
                              <!--Optional:-->
                              <family>rare</family>
                              <!--Optional:-->
                              <OrganismName>
                                 <!--Optional:-->
                                 <BacterialName>
                                    <!--Optional:-->
                                    <fullBacterialName>string</fullBacterialName>
                                    <!--Optional:-->
                                    <genusOrMonomial>rare</genusOrMonomial>
                                    <!--Optional:-->
                                    <subgenus>rare</subgenus>
                                    <!--Optional:-->
                                    <subgenusAuthorAndYear>rare</subgenusAuthorAndYear>
                                    <!--Optional:-->
                                    <speciesEpithet>rare</speciesEpithet>
                                    <!--Optional:-->
                                    <subspeciesEpithet>rare</subspeciesEpithet>
                                    <!--Optional:-->
                                    <parentheticalAuthorTeamAndYear>rare</parentheticalAuthorTeamAndYear>
                                    <!--Optional:-->
                                    <authorTeamAndYear>rare</authorTeamAndYear>
                                    <!--Optional:-->
                                    <nameApprobation>rare</nameApprobation>
                                 </BacterialName>
                                 <!--Optional:-->
                                 <FungalName>
                                    <!--Optional:-->
                                    <fullFungalName>string</fullFungalName>
                                 </FungalName>
                                 <!--Optional:-->
                                 <BotanicalName>
                                    <!--Optional:-->
                                    <fullBotanicalName>string</fullBotanicalName>
                                    <!--Optional:-->
                                    <genusOrMonomial>rare</genusOrMonomial>
                                    <!--Optional:-->
                                    <firstEpithet>rare</firstEpithet>
                                    <!--Optional:-->
                                    <infraspecificEpithet>rare</infraspecificEpithet>
                                    <!--Optional:-->
                                    <rank>rare</rank>
                                    <!--Optional:-->
                                    <hybridFlag insertionpoint="3">rare</hybridFlag>
                                    <!--Optional:-->
                                    <authorTeamParenthesis>rare</authorTeamParenthesis>
                                    <!--Optional:-->
                                    <authorTeam>rare</authorTeam>
                                    <!--Optional:-->
                                    <cultivarGroupName>rare</cultivarGroupName>
                                    <!--Optional:-->
                                    <cultivarName>rare</cultivarName>
                                    <!--Optional:-->
                                    <tradeDesignationNames>
                                       <!--Zero or more repetitions:-->
                                       <tradeDesignationName>rare</tradeDesignationName>
                                    </tradeDesignationNames>
                                 </BotanicalName>
                                 <!--Optional:-->
                                 <ZoologicalName>
                                    <!--Optional:-->
                                    <fullZoologicalName>string</fullZoologicalName>
                                    <!--Optional:-->
                                    <genusOrMonomial>rare</genusOrMonomial>
                                    <!--Optional:-->
                                    <subgenus>rare</subgenus>
                                    <!--Optional:-->
                                    <speciesEpithet>rare</speciesEpithet>
                                    <!--Optional:-->
                                    <subspeciesEpithet>rare</subspeciesEpithet>
                                    <!--Optional:-->
                                    <authorTeamOriginalAndYear>rare</authorTeamOriginalAndYear>
                                    <!--Optional:-->
                                    <authorTeamParenthesisAndYear>rare</authorTeamParenthesisAndYear>
                                    <!--Optional:-->
                                    <combinationAuthorTeamAndYear>rare</combinationAuthorTeamAndYear>
                                    <!--Optional:-->
                                    <breed>rare</breed>
                                    <!--Optional:-->
                                    <namedIndividual>rare</namedIndividual>
                                 </ZoologicalName>
                                 <!--Optional:-->
                                 <ViralName>
                                    <!--Optional:-->
                                    <fullViralName>string</fullViralName>
                                    <!--Optional:-->
                                    <genusOrMonomial>rare</genusOrMonomial>
                                    <!--Optional:-->
                                    <viralSpeciesDesignation>rare</viralSpeciesDesignation>
                                    <!--Optional:-->
                                    <acronym>rare</acronym>
                                 </ViralName>
                              </OrganismName>
                           </Taxonomy>
                        </Organism>
                     </Organisms>
                  </OrganismContext>
                  <!--Optional:-->
                  <ProcessContext>
                     <!--Optional:-->
                     <Processes>
                        <!--1 or more repetitions:-->
                        <Process>
                           <processName>string</processName>
                           <!--1 or more repetitions:-->
                           <processSubject>string</processSubject>
                           <!--1 or more repetitions:-->
                           <processType>rare</processType>
                        </Process>
                     </Processes>
                     <!--Optional:-->
                     <Interactions>
                        <!--1 or more repetitions:-->
                        <Interaction>
                           <interactionName>string</interactionName>
                           <interactionPartnerOne>string</interactionPartnerOne>
                           <!--Optional:-->
                           <interactionDirection>string</interactionDirection>
                           <!--Optional:-->
                           <interactionQuality>string</interactionQuality>
                           <interactionPartnerTwo>string</interactionPartnerTwo>
                        </Interaction>
                     </Interactions>
                  </ProcessContext>
                  <!--Optional:-->
                  <ChemicalContext>
                     <!--Optional:-->
                     <Elements>
                        <!--1 or more repetitions:-->
                        <Element>
                           <elementName>string</elementName>
                        </Element>
                     </Elements>
                     <!--Optional:-->
                     <Isotopes>
                        <!--1 or more repetitions:-->
                        <Isotope>
                           <isotopeName>rare</isotopeName>
                        </Isotope>
                     </Isotopes>
                     <!--Optional:-->
                     <Compounds>
                        <!--1 or more repetitions:-->
                        <Compound>
                           <compoundName>string</compoundName>
                           <!--1 or more repetitions:-->
                           <compoundClass>string</compoundClass>
                           <!--1 or more repetitions:-->
                           <compoundType>string</compoundType>
                        </Compound>
                     </Compounds>
                     <!--Optional:-->
                     <Functions>
                        <!--1 or more repetitions:-->
                        <Function>
                           <chemicalFunctionType>rare</chemicalFunctionType>
                        </Function>
                     </Functions>
                  </ChemicalContext>
                  <!--Optional:-->
                  <MethodContext>
                     <!--Optional:-->
                     <Approaches>
                        <!--1 or more repetitions:-->
                        <Approach>
                           <approachType>Manipulative</approachType>
                           <approachLocalization>Macrocosm</approachLocalization>
                        </Approach>
                     </Approaches>
                     <!--Optional:-->
                     <Factors>
                        <!--1 or more repetitions:-->
                        <Factor>
                           <factorName>string</factorName>
                           <factorType>string</factorType>
                        </Factor>
                     </Factors>
                     <DataFormats>
                        <!--1 or more repetitions:-->
                        <DataFormat>
                           <dataFormatType>Table</dataFormatType>
                        </DataFormat>
                     </DataFormats>
                     <DataSources>
                        <!--1 or more repetitions:-->
                        <DataSource>
                           <dataSourceType>rare</dataSourceType>
                        </DataSource>
                     </DataSources>
                  </MethodContext>
               </Context>
            </Contexts>
            <References>
               <!--Optional:-->
               <Hosters>
                  <!--1 or more repetitions:-->
                  <Hoster>
                     <hosterName>rare</hosterName>
                  </Hoster>
               </Hosters>
               <Persons>
                  <!--1 or more repetitions:-->
                  <xsl:for-each select="//creator">
                     <Person>
                        <!--1 or more repetitions:-->
                        <position>Contact</position>
                        <!--Zero or more repetitions:-->
                        <salutation>rare</salutation>
                        <!--1 or more repetitions:-->
                        <givenName><xsl:value-of select="individualName/givenName"/></givenName>
                        <!--1 or more repetitions:-->
                        <surName><xsl:value-of select="individualName/surName"/></surName>
                        <!--1 or more repetitions:-->
                        <emailAddress><xsl:value-of select="electronicMailAddress"/></emailAddress>
                        <!--1 or more repetitions:-->
                        <phoneNumber>rare</phoneNumber>
                     </Person>
                  </xsl:for-each>
               </Persons>
               <Descriptions>
                  <title><xsl:value-of select="//title"/></title>
                  <abstract><xsl:value-of select="//abstract"/></abstract>
               </Descriptions>
            </References>
            <Resources>
               <!--1 or more repetitions:-->
               <Resource>
                  <!--Optional:-->
                  <OfflineResources>
                     <!--1 or more repetitions:-->
                     <OfflineResource>
                        <!--Optional:-->
                        <fileID>the_id</fileID>
                        <!--Optional:-->
                        <fileName>the_file_name_csv</fileName>
                        <!--Optional:-->
                        <filePath>rare</filePath>
                        <!--Optional:-->
                        <mimeType>csv</mimeType>
                     </OfflineResource>
                  </OfflineResources>
               </Resource>
            </Resources>
         </Object>
      </Ease>
   </xsl:template>
</xsl:stylesheet>
