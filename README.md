# 🔗 Linker Script Project
## Understanding Linker Script, Memory Layout & Build Process in C

This repository focuses on understanding the **linker stage**, **linker scripts (`.ld`)**, and **memory layout control** in C programs.  
It demonstrates how source files, object files, a Makefile, and a custom linker script work together to generate the final executable.

This project is especially useful for **embedded systems**, **firmware development**, and **low-level system programming**.

---

## 📂 Repository Contents

- `.devcontainer/` – GitHub Codespaces configuration  
- `.gitignore` – Git ignore rules  
- `Makefile` – Build automation  
- `main.c` – Main application source file  
- `global.c` – Global variables and data section demonstration  
- `main.ld` – Custom linker script  
- `README.md` – Project documentation  

---

## ⚙️ Build, Clean & Run

### Clean Build Files

make clean
Build the Project
bash
Copy code
make
Run the Executable
bash
Copy code
./output
Note: Executable name depends on the Makefile configuration.

🔧 Linker Script Overview (main.ld)
The linker script is used to:

Define memory regions

Control placement of program sections:

.text – program code

.data – initialized global/static data

.bss – uninitialized global/static data

Decide where variables and functions are located in memory

Generate a final executable with a custom memory map

This is a core concept in embedded systems and firmware development.

🧠 Concepts Covered
C Build & Compilation Process
Preprocessing

Compilation

Assembly

Linking

Linking & Binary Concepts
Object files (.o)

Executable generation

Linker role and responsibilities

Linker scripts (.ld)

Memory Layout
.text section

.data section

.bss section

Global vs local variables

Build System
Makefile usage

Build automation

🛠 Tools & Technologies
Language: C

Compiler: GCC

Linker: GNU LD

Build System: Make

Platform: Linux / GitHub Codespaces

Version Control: Git & GitHub

📌 Notes
This repository is created for learning and experimentation

Code is intentionally kept simple and readable

Not intended as production-ready firmware

Useful for:

Embedded systems beginners

Firmware engineers

Students learning build systems

Understanding low-level memory concepts

🚀 Future Improvements
Memory map output analysis

ELF file inspection using readelf and objdump

Multiple linker script examples

Embedded target-specific memory layouts

Detailed comments inside linker scripts

👨‍💻 Author
AxayRam
Electronics & Communication Engineering
Embedded Systems & Firmware Development Enthusiast

GitHub: https://github.com/AxayRam



