<!--
Thank you for your interest in contributing to the VoronUsers repository, it is
highly appreciated!
-->

<!--
Describe the submission further using the template provided below. The more
details the better! Please don't forget to thoroughly read the mod requirements and rules below
and make sure your mod submission adheres to these rules.
Doing so speeds up the review process and will increase your chances at acceptance.
-->

### Which mods/configurations/profiles are added by this PR?

### How was it tested?

### Any background context you want to provide?

### Screenshots (if appropriate)

### ⚠️⚠️**PLEASE CAREFULLY READ AND APPLY THE RULES BELOW**⚠️⚠️

  * [ ] The mod, firmware configuration or slicer profile is in the correct category
    folder. Printable mods go to `printer_mods/`, firmware configurations
    go to `firmware_configurations/`, slicer profiles go to `slicer_profiles/`.
    Create a subfolder with your name, and place the mods in a subfolder with
    a descriptive name within that folder, e.g.: `/printer_mods/FHeilmann/flux_capacitor`.
  * [ ] Folder and file naming:
    * Folders and filenames MUST NOT contain spaces. Only letters `a-zA-Z`, numbers `0-9`, underscores `_`, hyphens `-` and periods `.`
    * You may use the following filenames to indicate the color and quantity of your prints:
      * Primary color: `part_xyz.stl`
      * Accent color: `[a]_part_xyz.stl`
      * Opaque color (Blocks light): `[o]_part_xyz.stl`
      * Clear/transparent color (Allows light): `[c]_part_xyz.stl`
      * Quantity, if more than one is needed: `part_xyz_x4.stl`
  * [ ] Each mod folder must contain a `.metadata.yml` file with information about the mod.
    Refer to the following template for the required and optional contents:
    ```yaml
    ---
    title: Mod Title # required
    description: "This mod does awesome things with awesome printers!" # required
    mod_version: 1 # required
    printer_compatibility:  # required, one or more of the options listed below
      - V0
      - V1
      - V2
      - VSW
      - Trident
      - Legacy
    cad: # required: At least 1 CAD file for your mod, path relative to your mod folder
      - CAD/my_step_file_1.step
      - CAD/my_f360_file_1.f360
    images: # optional, image files provided with your mod, path relative to your mod folder
      - images/mods_site_card_image.png
      - images/side_view.png
      - images/install_guide.png
    discord_username: discord_person # optional, your discord username
    ```
  * [ ] For each mod, add a small `README.md` file to its folder with a short description
    of what the mod accomplishes. This readme can be used to add pictures, give assembly
    instructions or specify a bill of materials if the mod requires additional hardware.
  * [ ] The mod/configuration/profile has been **TESTED** by the person submitting the mod
    and/or other Voron users. Make sure to add information about how the mod was tested below.
  * [ ] The mod is **NOT** merely a slight modification of an official Voron part, configuration
    or profile (i.e. an official Voron part with a few mm added or removed or a slicer profile
    which only modifies a few values). *(When in doubt, contact one of the admins in the
    Voron discord before submitting the PR)*
  * [ ] Submitted STLs are **printable without support and oriented properly**. If supports can't be avoided,
    the model must include break-away supports.
  * [ ] Submitted STL files are **not corrupt**. *(This can be tested by opening the STL in PrusaSlicer
    and checking if mesh errors are reported.)*
  * [ ] Submissions **must** include a CAD file in the form of a `.STEP`, `.F360` or `.SCAD` file
  * [ ] Submitted firmware configs or slicer profiles **contain no sensitive data** (e.g. API keys).