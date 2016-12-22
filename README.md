# Intro

This is the repository of the gfbio-ontology. The ontology is an application
ontology which is describing the essences of a biological search objects. As
basis of the ontology an xml schema is used which documents typical metadata
(author, data type, title) as well as semantic annotations.

Next to the ontology the repostiroy also contains an xml schema based on the
[EASE](https://github.com/cpfaff/ease) schema. The schema and the ontology can
be used in concert for the annotation of biological data and for building
efficient tools supporting the disvoery of bioligical data.

# The core and coverage of the ontology

At the core the ontology covers the description of biological search objects.
If allows for a clear and precise annotation along essential topics in biology.
The overall vocabulary revolves around several topics or categories which are
detailed with their relations in the diagram below.

### Core concepts diagram


```

                                                isA
                                                        .----------------.
                                          .------------ | TimeContext    |
                                          |             '----------------'
.-----------.                             |             .----------------.
|           |                             .------------ | SpaceContext   |
| Reference |                             |             '----------------'
|           |                             |             .----------------.
'-----------'                             .------------ | SphereContext  |
      ^                                   |             '----------------'
      |                                   |             .----------------.
      |  isCharacterizedBy                .------------ | BiomeContext   |
      |        (1:n)                      |             '----------------'
      |                                   v
.-----------.                       .-----------.
|           |   isCharacterizedBy   |           |
|  Object   |---------------------->|  Context  |
|           |         (1:n)         |           |
'-----------'                       '-----------'
      ^                                   ^
      |                                   |             .-----------------.
      |  isA                              '------------ | OrganismContext |
      | (1:1)                             |             '-----------------'
      |                                   |             .-----------------.
.-----------.                             '------------ | ProcessContext  |
|           |                             |             '-----------------'
| Resource  |                             |             .-----------------.
|           |                             '------------ | ChemicalContext |
'-----------'                             |             '-----------------'
                                          |             .-----------------.
                                          '------------ | MethodContext   |
                                                        '-----------------'

```

### Contexts

* Time Context

The time context describes temporal aspects relevant for biological data. The
schema includes a start and an end date of a data acquisition (conform to
ISO8601), geological time frames, as well as a temporal resolution and extent.
The vocabulary covers names of time zones which follow the IANA time zone
database (see: http://www.iana.org/time-zones), geological time frames based on
the International Chronostratigraphic Chart (ICC) which defines and names time
geological time ranges in order to express the time scale of earth history
(http://www.stratigraphy.org/index.php/ics-chart-timescale).

```
                                            isA          .---------------.
                                  .----------------------| GeologicalEon |
                                  |                      '---------------'
           isPartOf               v
            (1:n)      .----------------------.   isA    .---------------.
        .--------------| GeologicalTimePeriod |<---------| GeologicalEra |
        |              '----------------------'          '---------------'
        v                         ^
 .-------------.                  |          isA         .---------------.
 |             |                  '----------------------| ooo           |
 | TimeContext |                                         '---------------'
 |             |
 '-------------'
        ^
        |              .----------------------.
        '--------------| TimeZone             |
                       '----------------------'
           isPartOf
            (1:n)

```


* Space Context

The space context deals with information related to locations. The schema
covers names of locations, the type of locations and the hierarchical relation
of locations to corresponding countries and continents. The vocabulary provides
countries and continents “Andorra”, “Afghanistan”, “Africa”, “Asia” and
“Europe” (c.f. Vocabulary https://git.io/v1sAS, http://www.geonames.org/) as
well as location types with e.g. “City”, “Stream”, and “Lake” (c.f. Vocabulary
https://git.io/v1sA1). In addition the schema allows to specify a bounding box
as well as the exact study site coordinates. The bounding box provides a coarse
localization using decimal degree values. The coordinates are captured using
the Universal Transverse Mercator (UTM) and the World Geodetic System 1984
(WGS84) datum. Similar as in the time facet in EASE the space facet provides a
resolution and an extent. To this end the vocabulary provides predefined
categorical values being “Point” (<1 m2), “Plot” (1 m2 – 0.01 km2), “Region”
(0.01 km2 – 10000 km2), “Continent” (10000 km2 – 100000000 km2) and “Global”
(larger) (c.f. vocabulary https://git.io/v1Vtj).

* Sphere

The sphere context comprises aspects of the pedosphere, the hydrosphere, the
atmosphere and the lithosphere and therefore complements the spatial context.
The vocabulary provides distinct layers of the atmosphere (e.g. Troposphere,
c.f. vocabulary https://git.io/v1OUU) or layers within water bodies (e.g.
Abyssopelagic, c.f. vocabulary https://git.io/v1OUI). Additionally the sphere
context also covers aspects of the biosphere mainly by the levels of biological
organization. The vocabulary provides concepts ranging from the “Atom” over
“Cell” and “Organ” up to the “Biosphere” level (c.f. vocabulary
https://git.io/v1Of7).

* Biome

The biome context comprises aspects relevant for describing biomes the
latitudinal (e.g. Boreal, Temperate, Tropic, c.f. vocabulary:
https://git.io/v1OU4) and altitudinal zonation (e.g. Nivale, Montane, c.f.
vocabulary: https://git.io/v1OUE), the moisture regime (e.g. Humid, Arid, c.f.
vocabulary: https://git.io/v1OUi), the continentality (e.g. Continental,
Maritime, c.f. vocabulary: https://git.io/v1OUX) as well as the physiognomy of
the biome (e.g. Savannah, Shrubland, c.f. vocabulary: https://git.io/v1OUD)
(Woodward, Lomas, and Kelly 2004). Below these higher levels of information the
EASE framework also extends into more specifics which are dealing with oro- and
pedobiomes. The vocabulary provides conceptual keywords for selection which are
containing e.g. “Amphibiome”, “Halobiome” or “Helobiome“ (c.f. vocabulary:
https://git.io/v1OfJ). The biome part also deals with the classification of
biomes comprising their general condition with “Natural” or “Urban” and their
dominant usage with e.g. “Agriculture”, “Forestry” or “Fishery” (c.f.
vocabulary: https://git.io/v1OvN).

* Organism

The organism part of EASE deals with the scientific names and taxonomy of
organisms. The schema captures scientific names separately for botanical,
zoological, fungal organisms and for viruses which has been inspired from the
ABCD standard (https://github.com/tdwg/abcd). For the taxonomy of organisms the
schema of EASE is containing elements named along the main ranks of the Linnean
topology which are “Domain”, “Kingdom” (e.g. Plantae, Animalia), “Division”
(botany) or “Phylum” (zoology), “Class”, “Order”, “Family” and “Genus”.

* Process

The process part deals with aspects that are describing processes. It captures
the names of the processes and allows a coarse classification. To this end the
vocabulary supports the annotation by providing a generic list of ecological
processes which comprises e.g. the “Adaption”, “Speciation” and “Migration”
(c.f. vocabulary: https://git.io/v1OfZ) and a coarse classification of the
processes with e.g. “Movement”, “Exchange”, “Increase” or “Decrease” (c.f.
vocabulary: https://git.io/v1Of4). Additionally, the process part deals with
interaction processes, where the user is presented with the option to specify
the interacting partners based on kingdoms (e.g. “Plantae”, “Animalia”), the
direction of the interaction (“Mutual”, “Affects”, “Is Affected By”) and the
quality of the interaction (e.g. “Amensalism”, “Antagonism” c.f. vocabulary:
https://git.io/v1OfE). Not only does this allow to select a particular process
in the end but also to carry out a search for interaction process related
datasets in a very generic way. For example, one can select all data that deals
with the interaction between fungi and plants where the direction from the
first to the second interaction partner is specified as “Affects” with the
quality being “Antagonistic”. That would select then data dealing with fungi as
plant parasites but not as symbionts.

* Chemical

The chemical part deals with all aspects of chemistry being part of biologcial
data. This comprises chemical elements and compounds which have been measured
as well their function in the biological context. The vocabulary here supports
the annotation by providing a list of elements based on the periodic table as
well as a list of chemical compounds and classes of compounds e.g. “Lipids”,
“Carbohydrates”, “Amino Acids” (c.f. vocabulary: https://git.io/v1OfT) which
has been compiled from various sources Müller-Esterl 2004; Riedel and Janiak
2007; Vollhardt, Schore, and Peter 2005) Moreover, the biological functions of
chemicals which are relevant in ecological studies are covered by conceptual
keywords like e.g. “Antibody”, “Attractant” or “Repellent” (c.f. vocabulary:
https://git.io/v1OfY) which has been inspired by the Chemical Entities of
Biological Interest ontology (CHEBI)
(http://www.ebi.ac.uk/ols/ontologies/chebi).

* Method

The methodological part deals with the general approach and a form of abstract
localization of a study. The vocabulary provides a list of generic approach
types being either “Virtual” (e.g. simulation), “Manipulative” (i.e. with
experimental factors mostly controlled) or “Observational” (i.e. where plot
selection creates factor gradients) (https://git.io/v1OfK). The localization of
the study is captured by categories like “Microcosm” (e.g. lab experiment),
“Mesocosm” (e.g. ecotron, greenhouse experiment) to “Macrocosm” (e.g. field
studies) (https://git.io/v1Ofi). On top of that the method part of EASE
captures the variables that either have been measured or manipulated in a
study. The vocabulary provides a list of aspects which are measured and
manipulated frequently containing conceptual keywords like e.g. the “Producer
diversity”, the “Consumer density” or the “Nutrient availability”
(https://git.io/v1OfD).

* Topics (e.g. Biology, Medicine)

...

### The resource

The resource part is dealing with aspects of the resource which is described.
This comprises the data format as well as with the acces to the data.

### The reference

The reference part is dealing with information as further reference to the data
which is described. That comprises for example a title, a user and their roles
(e.g. owner, curator).

## Roles and workflows

* Ontology creation workflow
  - ...

*  Ontology creation roles
  - Domain experts: Knowledgeable in the domain captured by the ontology
  - Knowledge engineers: Elicit insights from experts to create a conceptual model
  - Ontology engineers: Represent the conceptual model in a suitable knowledge representation language

```
.-----------.
|           |
| Edit me!  |
|           |
'-----------'
```

* The responsibles and roles
  - Claas-Thido Pfaff
  - ...

## How to contribute

### In general

You can contribute to the development of the gfbio-ontology by creating
yourself a GitHub account. You can read into the current
[issues](https://github.com/gfbio/gfbio-ontology/issues) to get you started
with existing topics. However you can also create a [new
issue](https://github.com/gfbio/gfbio-ontology/issues/new) to discuss your
ideas or just to give us feedback if something is missing or needs improvement.
The issues are then referenced in the commit messages to track the changes and
the progress so always stay up to date with the development around certain
discussions.

### Based on role

* Roles
  - moderator
  - reviewer
  - user

### Technically

Committing to the repository works as follows.

1. Fork the repository
2. Pull the forked repository to your computer
3. Make your changes to the files
4. Commit your changes
5. Push your changes
4. Send a pull request

NOTE:

Be as precise as possible in your commit messages. Please always use present
tense. Give the commit a meaningful title (max 50 chars long). After the title
leave an empty line and then describe your changes. Be as verbose as you want
in your descriptions. Bullet points can be helpful to document your changes
(use asterisk as bullet points '*' in the commit message). Provide references
to existing issues the commit is addressing. This is done using the hastag and
the ID of the commit (#id_of_the_issue).

### License

Copyright (c) [2016] [The GFBio project](http://www.gfbio.org/)
