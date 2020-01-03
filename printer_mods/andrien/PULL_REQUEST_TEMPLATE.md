<!--
Thank you for your interest in contributing to the VoronUsers repository, it is
highly appreciated!

**Please make sure the submission conforms to the rules outlined below. PRs which fail
to conform to the rules below are likely to be rejected.**
-->

  * [X] The mod, firmware configuration or slicer profile is in the correct category
    folder. Printable mods go to `printer_mods/`, firmware configurations
    go to `firmware_configurations/`, slicer profiles go to `slicer_profiles/`.
    Create a subfolder with your name, and place the mods in a subfolder with
    a descriptive name within that folder, e.g.: `/printer_mods/FHeilmann/flux_capacitor`
  * [X] Folders names MUST NOT contain spaces. If possible, make sure file names also 
    do not contain any spaces.
  * [X] For each mod, add a small `README.md` file to its folder with a short description
    of what the mod accomplishes. This readme can be used to add pictures, give assembly
    instructions or specify a bill of materials if the mod requires additional hardware.
  * [X] The PR modifies the top-level `README.md` of the category folder adding the 
    contribution to the table. Read the top part of the file for instructions on how
    to do this. Please preserve the alphabetical ordering while adding new rows. Make sure
    to fill out the compatibility matrix to indicate which versions of the Voron printer
    the submission is compatible with.
  * [X] The mod/configuration/profile has been tested by the person submitting the mod 
    and/or other Voron users. Make sure to add information about how the mod was tested below. 
  * [X] The mod is not merely a slight modification of an official Voron part, configuration 
    or profile (i.e. an official Voron part with a few mm added or removed or a slicer profile 
    which only modifies a few values). *(When in doubt, contact one of the admins in the 
    Voron discord before submitting the PR)*
  * [ ] Submitted STLs are printable without support. *(If the mod does not meet this criterion
    join the Voron discord and ask the other users for advice on how to modify the mod such 
    that it does not require supports)*
  * [ ] Submitted STL files are not corrupt. *(This can be tested by opening the STL in PrusaSlicer
    and checking if mesh errors are reported.)*
  * [ ] Submitted STL files are oriented and scaled properly for printing.
  * [ ] Submitted firmware configs or slicer profiles contain no sensitive data (e.g. API keys).

<!--
Describe the submission further using the template provided below. The more 
details the better!
-->

#### Which mods/configurations/profiles are added by this PR?
Adding a case for my Voron 1.5x/ 1.6

#### How was it tested?
Printed, assembled, and in use with my Voron 1.5x printer  

#### Any background context you want to provide?
As per "Readme.md"

#### Screenshots (if appropriate)
Casecover.jpeg, Intelinet.jpg, Sidepanel.jpg

#### Further notes
I did not provided the .stl files as some are exceeding the 250mm build area, meaning manual cuts are needed for smaller size bed.
.f3z added so that everyone can cut as per available build size. Just import the file to Fusion 360 and export needed .stl's.
