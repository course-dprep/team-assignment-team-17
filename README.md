# The effect of the canal parade on the Airbnb market in Amsterdam

# Introduction
Welcome to the 'Canal parade vs Airbnb markter' repository! In this repository you can read about our research regarding the effect of the canal parade on the Airbnb market, which includes prices and availability. 

## Table of contents

[1. Research](https://github.com/course-dprep/team-assignment-team-17#research)

[1.1 Research question](https://github.com/course-dprep/team-assignment-team-17#research-question)

[1.2 Research motivation](https://github.com/course-dprep/team-assignment-team-17#research-motivation)

[1.3 Research method](https://github.com/course-dprep/team-assignment-team-17#research-method)

[1.4 Conceptual model](https://github.com/course-dprep/team-assignment-team-17#conceptual-model)

[2. Repository overview](https://github.com/course-dprep/team-assignment-team-17#repository-overview)

[3. Dependencies](https://github.com/course-dprep/team-assignment-team-17#dependencies)


# 1. Research
## 1.1 Research question
To what extent has the Canal Pride in the Netherlands changed the price per night of the Airbnb accomodations in Amsterdam, and to what extent does the location of the accomodation influence this effect?

## 1.2 Research motivation
The Canal Parade in Amsterdam is a parade of about 80 boats through the canals of Amsterdam, representing a variety of representatives and organizations related to the LGBTQI+ society. The Canal Parade is the highlight of the yearly Pride Week and attracts many spectators. The parade is followed by various parties in the city center of Amsterdam. Several hundred thousand visitors attend the events which makes the Canal Parade one of the biggest publicly open events in the Netherlands. The parade is also well known outside of the Netherlands. 

Since the event is enormous in size, globally well-known and socially relevant we believe investigating the effect on prices and availability of Airbnb accommodations during this event is very interesting.

## 1.3 Research method
The research method that is used in this project is a regression analysis. This method is used to examine the influence of the Canel Pride in Amsterdam on the price of the Airbnb listing in Amsterdam.  In the model, the moderator ‘location of the accommodation’ is analysed. According to this regression analysis, we can conclude if these variables have a significant effect on the Airbnb listing prices in Amsterdam. The research question can be answered by means of the output. See [here](https://github.com/course-dprep/team-assignment-team-17/blob/master/src/README.md) for the specific variables used.  

## 1.4 Conceptual model

![conceptual model](https://user-images.githubusercontent.com/112410933/194032510-b492862b-b152-476d-a71b-7ef28c7c783e.jpg)
__________________________________________________________________________________________
# 2. Repository overview
```
- data
- gen
  - analysis
  - data-preparation
  - paper
- src
  - analysis
  - data-preparation
  - paper
- .gitignore
- README.md
- Makefile
```

# 3. Dependencies
- R. [Installation guide](https://tilburgsciencehub.com/building-blocks/configure-your-computer/statistics-and-computation/r/).
- R packages: `install.packages("stargazer")`
- Make. [Installation guide](https://tilburgsciencehub.com/building-blocks/configure-your-computer/automation-and-workflows/make/).
- For the `makefile` to work, R, Gnu make and the TeX distribution (specifically `pdflatex`) need to be made available in the system path 

## About 

This research project is part of the [Data Preparation and Workflow Management (dPrep)](https://dprep.hannesdatta.com/) course at Tilburg University. The project is conducted by Team 17: [Isa Nummerdor](https://github.com/isanummerdor), [Janne Donkers](https://github.com/JanneDonkers) and [Nore Messing](https://github.com/Noremessing).

