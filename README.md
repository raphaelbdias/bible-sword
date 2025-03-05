# bible-sword

# bible-sword

## Overview
bible-sword is a project that provides tools and utilities for working with Bible texts. It includes various modules and utilities for processing, converting, and managing Bible data.

## Project Structure
The project has the following structure:

build/ install_module.sh README.md sword-1.9.0 .deps/ .libs/ aclocal.m4 arminst.sh AUTHORS autogen.sh bindings/ build/ buildtest.cpp buildtest.o ChangeLog cmake/ CMakeLists.txt CODINGSTYLE compile config.guess config.h.in config.log config.status config.sub configure configure.ac COPYING depcomp distignore doc/ done/ examples/ icu/ icu4c-73_1-src.tgz include/ INSTALL install-sh lib/ libtool LICENSE locales.d/ ltmain.sh m4/ Makefile ... sword-1.9.0.tar.gz

## TO INSTALL A MODULE
./install_module.sh sword-1.9.0/modules/<module.zip> 

## Building the Project
To build the project, follow these steps:

1. Navigate to the `sword-1.9.0` directory:
    ```sh
    cd sword-1.9.0
    ```

2. Run the `configure` script to configure the build:
    ```sh
    ./configure
    ```

3. Build the project using `make`:
    ```sh
    make
    ```

4. Optionally, you can install the built project:
    ```sh
    sudo make install
    ```

## Utilities
The project includes several utilities located in the [utilities](http://_vscodecontentref_/5) directory. Some of these utilities are:

- `vs2osisref`
- `vpl2mod`
- `tei2mod`
- `mod2imp`
- `addvs`
- `imp2gbs`
- `imp2vs`
- `lexdump`
- `osis2mod`
- `addgb`
- `step2vpl`
- `stepdump`
- `treeidxutil`
- `list_install_components`

## Documentation
Documentation for the project can be found in the `doc/` directory. Additionally, the `README` files in various subdirectories provide more specific information about those components.

## License
This project is licensed under the terms of the LICENSE file.

## Contributing
Contributions are welcome! Please follow the guidelines in the CODINGSTYLE file and submit pull requests for review.

## Contact
For any questions or issues, please contact the project maintainers or open an issue on the project's repository.