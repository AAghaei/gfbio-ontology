# gfbio-ontology

This is the repository of the gfbio-ontology. It is an application ontology
which is describing the essence of biological search objects. As a basis it
uses the [EASE](https://github.com/cpfaff/ease) annotation schema. The schema
andd the ontology can be used for the annotation of biological data and for
significantly improving the discovery for biodiversity research related data.

## What does it cover

At the core the ontology covers the description of biological search objects.
If allows for a clear and precise annotation along essential topics in biology.
The vocabulary revolves around several topics or categories: A diagram  shows
the core concepts and relations.


```

                                          isCharacterizedBy
                                                          .----------.
                                           .------------> |   Time   |
                                           |              '----------'
 .-----------.                             |              .----------.
 |           |                             .------------> |   Space  |
 | Reference |                             |              '----------'
 |           |                             |              .----------.
 '-----------'                             .------------> |  Sphere  |
       ^                                   |              '----------'
       |                                   |              .----------.
       |  isCharacterizedBy                .------------> |   Biome  |
       |        (1:n)                      |              '----------'
       |                                   |
 .-----------.                       .-----------.
 |           |   isCharacterizedBy   |           |
 |  Object   |---------------------->|  Context  |
 |           |         (1:n)         |           |
 '-----------'                       '-----------'
       ^                                   |
       |                                   |              .----------.
       |  isA                              '------------> | Organism |
       | (1:1)                             |              '----------'
       |                                   |              .----------.
 .-----------.                             '------------> | Process  |
 |           |                             |              '----------'
 | Resource  |                             |              .----------.
 |           |                             '------------> | Chemical |
 '-----------'                             |              '----------'
                                           |              .----------.
                                           '------------> |  Method  |
                                                          '----------'

```

Details about the categories:

* Time

The time part captures temporal aspects relevant for biology data. That
includes the start and the end of a data acquisition, geological timeframes as
well as the temporal resolution and extent of the study. The dates and times in
EASE are jkQconform to ISO8601 and names of time zones follow the IANA time
zone database (http://www.iana.org/time-zones). The geological time frames
refer to those given in the International Chronostratigraphic Chart (ICC) which
defines and names time ranges in order to express the time scale of earth
history (http://www.stratigraphy.org/index.php/ics-chart-timescale).

* Space

The space part deals with information related to locations. It captures the
names of locations, the type of locations as the hierarchical relations of a
location to the corresponding countries and continents. For the location type
as well as for the countries and the continents EASE provides predefined lists.
They are containing concepts e.g. “City”, “Stream”, and “Lake” (c.f. vocabulary
https://git.io/v1sA1) for location types or names of countries and continents
like “Andorra”, “Afghanistan”, “Africa”, “Asia” and “Europe” (c.f. vocabulary
https://git.io/v1sAS) which has been incorporated from the GeoNames ontology
(http://www.geonames.org/). In addition to such explicit definitions of
locations, the EASE framework allows to specify a bounding box as well as the
exact study site coordinates. The bounding box provides a coarse localization
using decimal degree values. The coordinates are captured using the Universal
Transverse Mercator (UTM) and the World Geodetic System 1984 (WGS84) datum.
Similar as in the time facet in EASE the space facet provides a resolution and
an extent. To this end the vocabulary provides predefined categorical values
being “Point” (<1 m2), “Plot” (1 m2 – 0.01 km2), “Region” (0.01 km2 – 10000
km2), “Continent” (10000 km2 – 100000000 km2) and “Global” (larger) (c.f.
vocabulary https://git.io/v1Vtj). This in the end allows to filter for data
which comes with the desired spatial resolution. For example data that has been
gathered at the landscape scale (exceeding 10 km²) but within which several
localized study plots were established within which the measurements have been
taken.

* Sphere
* Biome
* Organism
* Chemical
* Method
* Process
* Topics (e.g. Biology, Medicine)


## Roles and workflows

* The workflow
  - ...

* The roles
  - Domain experts: Knowledgeable in the domain captured by the ontology
  - Knowledge engineers: Elicit insights from experts to create a conceptual model
  - Ontology engineers: Represent the conceptual model in a suitable knowledge representation language

* The responsibles
  - Claas-Thido Pfaff
  - ...

## How to contribute

You can contribute to the development of the gfbio-ontology by creating
yourself a GitHub account. If you have comments, recommendation, critique
please feel free to add an
[issue](https://github.com/gfbio/gfbio-ontology/issues/new).
