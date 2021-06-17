
# Osci130

A meta-repo collection of all the stuff in the Skywater 130nm edition of the OsciBear SoC.  

Consists of three main components: 

* [chipyard](./chipyard) contains the Chisel source and VLSI back-end configuration for the digital half of the SoC. (And is also a fork of https://github.com/ucb-bar/chipyard.) 
* [bag-workspace](./bag-workspace) contains the BAG generator code for the Python-generated analog portions of the SoC, plus the OpenAccess views of all other custom-designed portions, including the top integration levels. This is a fork of the starter [Berkeley Wireless Research Center Sky130 BAG Workspace](https://bwrcrepo.eecs.berkeley.edu/swtech130/bag3_skywater130_workspace), which includes both Sky130-tech-specific and BWRC-site-specific setup. 
* [caravel_user_project_analog](./caravel_user_project_analog) is a fork of eFabless's [Caravel (Analog) User-Project Starter](https://github.com/efabless/caravel_user_project_analog). It serves as a delivery area, meeting eFabless's expectations for directory and file layout. Note many of its sub-directories targeted for specific tools (magic, xschem, etc) are left empty or unmodified from the template version. 

A handful of related other files are tracked in this repository's [other](./other) directory. 
    
