# The effect of the canal parade on the Airbnb market in Amsterdam

# Introduction
Welcome to the 'Canal parade vs Airbnb markter' repository! In this repository you can read about our research regarding the effect of the canal parade on the Airbnb market, which includes prices and availability. 

## Table of contents

[1. Research](https://github.com/course-dprep/team-assignment-team-17#research)

[1.1 Research question](https://github.com/course-dprep/team-assignment-team-17#research-question)

[1.2 Research motivation](https://github.com/course-dprep/team-assignment-team-17#research-motivation)

[1.3 Research method](https://github.com/course-dprep/team-assignment-team-17#research-method)

# 1. Research
## 1.1 Research question
To what extent has the Canal Pride in the Netherlands changed the price per night of the Airbnb accomodations in Amsterdam, and to what extent does the location of the accomodation influence this effect?

## 1.2 Research motivation
The Canal Parade in Amsterdam is a parade of about 80 boats through the canals of Amsterdam, representing a variety of representatives and organizations related to the LGBTQI+ society. The Canal Parade is the highlight of the yearly Pride Week and attracts many spectators. The parade is followed by various parties in the city center of Amsterdam. Several hundred thousand visitors attend the events which makes the Canal Parade one of the biggest publicly open events in the Netherlands. The parade is also well known outside of the Netherlands. 

Since the event is enormous in size, globally well-known and socially relevant we believe investigating the effect on prices and availability of Airbnb accommodations during this event is very interesting.

## 1.3 Research method
The research method that is used in this project is a regression analysis. This method is used to examine the influence of the Canel Pride in Amsterdam on the price of the Airbnb listing in Amsterdam.  In the model, the moderator ‘location of the accommodation’ is analysed. According to this regression analysis, we can conclude if these variables have a significant effect on the Airbnb listing prices in Amsterdam. The research question can be answered by means of the output. 


__________________________________________________________________________________________

# Example of reproducible research workflow 

This is a basic example repository using Gnu make for a reproducible research workflow, as described in detail here: [tilburgsciencehub.com](http://tilburgsciencehub.com/). 

The main aim of this to have a basic structure, which can be easily adjusted to use in an actual project.  In this example project, the following is done: 
1. Download and prepare data
2. Run some analysis
3. Present results in a final pdf generated using LaTeX

## Dependencies
- R 
- R packages: `install.packages("stargazer")`
- [Gnu Make](https://tilburgsciencehub.com/get/make) 
- [TeX distribution](https://tilburgsciencehub.com/get/latex/?utm_campaign=referral-short)
- For the `makefile` to work, R, Gnu make and the TeX distribution (specifically `pdflatex`) need to be made available in the system path 
- Detailed installation instructions can be found here: [tilburgsciencehub.com](http://tilburgsciencehub.com/)


## Notes
- `make clean` removes all unncessary temporary files. 
- Tested under Linux Mint (should work in any linux distro, as well as on Windows and Mac) 
- IMPORTANT: In `makefile`, when using `\` to split code into multiple lines, no space should follow `\`. Otherwise Gnu make aborts with error 193. 
- Many possible improvements remain. Comments and contributions are welcome!
