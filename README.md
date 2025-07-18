# Linker_Script

# Instructions

Create a GitHub Codespace from this repository and once the environment is ready use the following to run the experiments :
1. Execute `make` to generate the `.o`, `.elf`, `.map` and `.txt` files.
    1. `.map` file has the placement related information.
    1. `.txt` saves the output of the `readelf` reading the generated `.elf`.
1. `make clean` deletes the files generated during compilation.