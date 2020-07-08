# $(PROJECT) program
This software project contains the code to do something.
## Checking out
use ```git clone --recurse-submodules https://github.com/Squantor/$(PROJECT).git``` to clone the repository and its submodules.
## Compiling
This project uses gnu make as its build system on a Linux platform. There are two build targets: release and debug. Release builds with optimizations and minimal debugging information. Debug builds with no optimization and full debug information.
```
$ make debug
$ make release
```
### Embedded targets
For debugging on embedded targets, the [Black Magic Probe](https://github.com/blacksphere/blackmagic/wiki) is used, scripts to use this debugger are present in the ```gdb_scripts``` directory. make can be used to invoke debugging:
```
make gdbusbdebug
make gdbusbrelease
```
This will build, if needed, the debug or release build respectivly and load it into the target.
```
make tpwrdisable
make tpwrenable
```
The black magic probe is capable of powering the target, these commands enable/disable this function.
### Depedencies
This program depends on my slightly modified version of $(PROJECT DEP HERE). This is automatically checked out when using ```git clone --recurse-submodules```.
## Usage
To use the software you need the following hardware:
* [Black magic probe](https://github.com/blacksphere/blackmagic)
* $(HARDWARE)
# Additional information
If the project needs further explanation like commands, theory of operation or something else, Describe it here.
# TODO
The following tasks are still open:
* completing this readme
* etc
# Pictures
Some pictures of a hardware project