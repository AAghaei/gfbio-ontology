# Intro

This is the repository which hosts the GFBio-ontology and some directly
associated standards and tools. The ontology is an application ontology which
supports the GFBio ecosytem of sotware components in the annotation and the
discovery of biological data. The ontology is influenced by prior work from the
Essential Annotation Schema for Ecology
([EASE](https://github.com/cpfaff/ease), which is also contained as copy in
this repository).

## Purpose of the ontology

* Annotation

When we talk about annotation we mean creating a set of metadata (data about
data) associated with the actual data which is described. The data described in
life science can vary largely being e.g. tabular data, image, audio video data
and much more.

* Discovery

The ontology aims to allow extending full text search queries for better search
results. But it also provides anchors which can servea as a basis for creating
a faceted navigation drill down.

## The core of the ontology

The ontology develops around a simple core which covers the description of
biological search objects. The object is characterized by references (general
metadata like author name, title, abstract) which you would typically find in a
metadata schema and the biological context: biome, chemicals, processes which
have been observed etc. While context part already covers a host concepts
relevant for biology it also allows for a structured and flexible growth with
future requirements (See also diagramm below).


```
                                             isPartOf
                                               (1:n)
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
      |        (1:1)                      |             '----------------'
      |                                   v
.-----------.                       .-----------.
|           |   isCharacterizedBy   |           |
|  Object   |---------------------->|  Context  |
|           |         (1:1)         |           |
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
---------------------------------------------------------------------------

                                          |             .-----------------.
                                          '------------ | New Context...  |
                                                        '-----------------'

```

### The Contexts

#### Time Context

The time context describes temporal aspects relevant for biological data.

* Metadata (EASE)

The schema includes a start and an end date of a data acquisition (conform to
ISO8601), geological time frames, as well as a temporal resolution and extent.

* Vocabulary (Ontology)

The vocabulary in the ontology covers names of time zones which follow the IANA
time zone database (see: http://www.iana.org/time-zones), geological time
frames based on the International Chronostratigraphic Chart (ICC) defining
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


#### Space Context

The space context deals with information related to locations.

* Metadata (EASE)

The schema covers names of locations, the type of locations and the
hierarchical relation of locations to corresponding countries and continents.
In addition the schema allows to specify a bounding box as well as the exact
study site coordinates. The bounding box provides a coarse localization using
decimal degree values. The coordinates are captured using the Universal
Transverse Mercator (UTM) and the World Geodetic System 1984 (WGS84) datum.
Similar as in the time part in the space part provides a resolution and an
extent.

* Vocabulary (Ontology)

The vocabulary provides countries and continents “Andorra”, “Afghanistan”,
“Africa”, “Asia” and “Europe” (c.f. Vocabulary https://git.io/v1sAS,
http://www.geonames.org/) as well as types of locations with e.g. “City”,
“Stream”, and “Lake” (c.f. Vocabulary https://git.io/v1sA1). The vocabulary
also provides predefined spatial categorical values being “Point” (<1 m2),
“Plot” (1 m2 – 0.01 km2), “Region” (0.01 km2 – 10000 km2), “Continent” (10000
km2 – 100000000 km2) and “Global” (larger) (c.f. vocabulary
https://git.io/v1Vtj).

#### Sphere Context

The sphere context comprises aspects related to earth spheres.

* Metadata (EASE)

The schema covers layers of the atmosphere, the pedosphere and hydrosphere
(rivers, lakes, sea) and aspects of the biosphere.

* Vocabulary (Ontology)

The vocabulary provides distinct layers of the atmosphere (e.g. Troposphere,
c.f. vocabulary https://git.io/v1OUU) or layers within water bodies (e.g.
Abyssopelagic, c.f. vocabulary https://git.io/v1OUI). The vocabulary provides
concepts ranging from the “Atom” over “Cell” and “Organ” up to the “Biosphere”
level (c.f. vocabulary https://git.io/v1Of7).

#### Biome Context

The biome context comprises aspects relevant for describing biomes.

* Metadata (EASE)

The schema covers aspects like the latitudinal gradient the continentality, oro
and pedobiomes as well as the physiognomy and the land use.

* Vocabulary (Ontology)

The vocabulary provides the latitudinal (e.g. Boreal, Temperate, Tropic, c.f.
vocabulary: https://git.io/v1OU4) and altitudinal  (e.g. Nivale, Montane, c.f.
vocabulary: https://git.io/v1OUE), the moisture regime (e.g. Humid, Arid, c.f.
vocabulary: https://git.io/v1OUi), the continentality (e.g. Continental,
Maritime, c.f. vocabulary: https://git.io/v1OUX) as well as the physiognomy of
the biome (e.g. Savannah, Shrubland, c.f. vocabulary: https://git.io/v1OUD)
(Woodward, Lomas, and Kelly 2004). The vocabulary also provides conceptual
keywords for pedobiomes like e.g. “Amphibiome”, “Halobiome” or “Helobiome“
(c.f. vocabulary: https://git.io/v1OfJ) for describing the land use “Natural”
or “Urban” and their dominant usage with e.g. “Agriculture”, “Forestry” or
“Fishery” (c.f. vocabulary: https://git.io/v1OvN).

#### Organism Context

The organism part of EASE deals with the scientific names and taxonomy of
organisms.

* Metadata (EASE)

The schema captures the taxonomy of organisms separately for botanical,
zoological, fungal organisms and for viruses (inspired by the ABCD standard
https://github.com/tdwg/abcd). For the taxonomy of organisms the schema is
containing elements named along the main ranks of the Linnean topology which
are “Domain”, “Kingdom” (e.g. Plantae, Animalia), “Division” (botany) or
“Phylum” (zoology), “Class”, “Order”, “Family” and “Genus”.

* Vocabulary (Ontology)

Vocabulary is only provided for kingdoms (Plantae, Animalia, ...).

#### Process Context

The process part deals with aspects relevant for biological processes.

* Metadata (EASE)

The schema captures the names of the processes and allows their classification.
Additionally, the process part deals with interactions the involved partners,
and the directzion and quality.

* Vocabulary (Ontology)

The vocabulary supports an annotation by providing list of importnat ecological
processes which comprises e.g. the “Adaption”, “Speciation” and “Migration”
(c.f. vocabulary: https://git.io/v1OfZ) and a coarse classification of the
processes with e.g. “Movement”, “Exchange”, “Increase” or “Decrease” (c.f.
vocabulary: https://git.io/v1Of4). The interaction partners are based on
kingdoms (e.g. “Plantae”, “Animalia”), the direction of the interaction
(“Mutual”, “Affects”, “Is Affected By”) and the quality of the interaction
(e.g. “Amensalism”, “Antagonism” c.f. vocabulary: https://git.io/v1OfE).

#### Chemical Context

The chemical part deals with all aspects of chemistry being part of biologcial
data.

* Metadata (EASE)

The schema captures chemical elements and compounds which have been measured in
a project as well their function in the biological context.

* Vocabulary (Ontology)

The vocabulary is providing a list of elements based on the periodic table as
well as a list of chemical compounds and classes of compounds e.g. “Lipids”,
“Carbohydrates”, “Amino Acids” (c.f. vocabulary: https://git.io/v1OfT) which
has been compiled from various sources Müller-Esterl 2004; Riedel and Janiak
2007; Vollhardt, Schore, and Peter 2005) Moreover, the biological functions of
chemicals which are relevant in biological studies are covered by concepts like
e.g. “Antibody”, “Attractant” or “Repellent” (c.f. vocabulary:
https://git.io/v1OfY) which has been inspired by the Chemical Entities of
Biological Interest ontology (CHEBI)
(http://www.ebi.ac.uk/ols/ontologies/chebi).

#### Method Context

The methodological part deals with the general approach and a form of abstract
localization of a study.

* Metadata (EASE)

The metadata captures the general approach of a study as well as variables
which have been manipulated and measured.

* Vocabulary (Ontology)

The vocabulary provides a list of generic study approach types being either
“Virtual” (e.g. simulation), “Manipulative” (i.e. with experimental factors
mostly controlled) or “Observational” (i.e. where plot selection creates factor
gradients) (https://git.io/v1OfK). The localization of the study is captured by
categories like “Microcosm” (e.g. lab experiment), “Mesocosm” (e.g. ecotron,
greenhouse experiment) to “Macrocosm” (e.g. field studies)
(https://git.io/v1Ofi). For the variables the vocabulary provides a list
containing conceptual keywords like e.g. the “Producer diversity”, the
“Consumer density” or the “Nutrient availability” (https://git.io/v1OfD).

### The resource

The resource part is dealing with aspects of the resource which is described.
This comprises the data format as well as with the acces to the data.

### The reference

The reference part is dealing with information as further reference to the data
which is described. That comprises for example a title, a user and their roles
(e.g. owner, curator) and the general topic of a study.

## Development

### General design

* The ontology is an application ontology. It will model relevant aspects to
  serve specific purposes adapted to the needs of the GFBio software
  components. Mainly it will support the submission of data, the annotation and
  semantic search.

* Deprecation of concepts is handeled by referencing concepts as deprecated.
  That means that concepts in the ontology stay forever even if they are
  abandoned.

* The ontology will be released in versions using the release feature of
  GibHub. The release should contain an abstract of information about what has
  changed.

* Releases will be named follow a semantic naming [schema](http://semver.org/).

  - Given a version number MAJOR.MINOR.PATCH, increment the: **MAJOR** version when
    you make incompatible API changes, **MINOR** version when you add functionality
    in a backwards-compatible manner, and **PATCH** version when you make
    backwards-compatible bug fixes.

* The ontology aims to maximise the reuse of concepts which exist in other
  ontologies. Own concepts will only be created if there is no other ontology
  already specifying it or if there is another good reason for duplication.

### Development workflow

The development is split into several phases and across different roles. The
roles are.

* Domain experts: Knowledgeable in the domain captured by the ontology

  - Christian
  - Ivo
  - Melanie
  - Anton

* Knowledge engineers: Elicit insights from experts to create a conceptual
  model

  - Claas

* Ontology engineers: Represent the conceptual model in a suitable knowledge
  representation language

    * Naouel
    * David

* Workflow: First Phase

```
                      .------------------------.
                      | Model Concepts         |
      .-------------->| (Knowledge Engineer)   |----------------------------------------------.
      |               '------------------------'                                              |
      |                                                                                       v
.------------------------.    .------------------------.    .------------------------.    .---------------------.
| Decide About Concepts  |    | Identify TS Input      |    | Prepare Recommendation |    | Carry Out Workshop  |
| (Knowledge Engineer)   |--->| (Ontology Engineer)    |--->| (Ontology Engineer)    |--->| (All together)      |
'------------------------'    '------------------------'    '------------------------'    '---------------------'
      |                                                                                       ^
      |                .------------------------.                                             |
      |                | Invite Domain Experts  |                                             |
      '--------------->| (Expert Coordinator)   |---------------------------------------------'
                       '------------------------'
```

* Workflow: Second Phase

```
.-------------------------.    .-----------------------------.    .---------------------------------.
| Present TS Integration  |    | Discuss Concepts/Atrributes |    | Decide about conncepts/         |
| (Knowledge and          |--->| and Relationships (Engineer |--->| Atrributes and Relationships    |
| Ontology Engineer)      |    | /Coordinator/Experts)       |    | (Engineer /Coordinator/Experts) |
'-------------------------'    '-----------------------------'    '---------------------------------'
```

* Workflow: Third Phase

```
                  .---------------------.
                  | Model Concepts      |
        .-------->| (Ontology Engineer) |
        |         '---------------------'
        |
 .------------.   .----------------------.
 | Workshop   |   | Document Decision    |
 |            |-->| (Knowledge Engineer) |
 |            |   '----------------------'
 '------------'               |
                              v
                  .----------------------.
                  | Goto First Step      |
                  |                      |
                  '----------------------'

```

### How to contribute

#### In general

You can contribute to the development of the GFBio-ontology by creating
yourself a GitHub account first. You can read into the
[issues](https://github.com/gfbio/gfbio-ontology/issues) to get started with
current topics. You can also create a [new
issue](https://github.com/gfbio/gfbio-ontology/issues/new) to discuss your
ideas or give feedback if something is missing or needs improvement. The issues
are then referenced in the commit messages to track changes according to the
discussions and the progress so you always stay up to date with the development
around the topics.

#### Technically

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

Copyright (c) [2017] [The GFBio project](http://www.gfbio.org/)
