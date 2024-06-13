# Motivation
In the MSYS2 environment, users often copy and rename `mingw32-make.exe` to `make.exe` to maintain a Linux-like `make` command behavior on Windows. However, this approach has several drawbacks:

1. The renamed `make.exe` cannot be managed by `pacman`, the package manager for MSYS2.
2. Setting aliases or creating alias scripts like `make.cmd` works in shells but is not recognized by tools such as VS Code's Make extension, which requires an actual `make.exe`.

# Solution
To address these issues and maintain the familiar Linux workflow, the best solution is to compile a new `make.exe` that simply forwards all command-line arguments to `mingw32-make.exe` and executes it.

## Comparison with (msys)make.exe

- `(msys)make.exe` outputs Unix-like directory structures, while `mingw32-make.exe` (and the new `make.exe`) outputs Windows local directory structures.
- `(msys)make.exe` can execute Unix-style shell scripts directly, whereas `mingw32-make.exe` might require Windows batch scripts or MinGW-specific tools.

# Installation

See [MSYS2 new package guide](https://www.msys2.org/dev/new-package/), build the package and run:

    pacman -U *.pkg.tar.zst

# Contributing
Contributions are welcome! Please submit pull requests or open issues for any improvements or bug fixes.

# License
This project is licensed under the MIT License - see the LICENSE file for details.
