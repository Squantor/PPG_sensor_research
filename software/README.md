# PPG sensor software
This is the software root, building is done from here.
## Projects
See per project for more details:
* [PPG sensor V000](https://github.com/Squantor/PPG_sensor_research/tree/master/software/PPG_sensor_V000) test software
## Checking out
use ```git clone --recurse-submodules https://github.com/Squantor/$(PROJECT).git``` to clone the repository and its submodules.
## Compiling
There are multiple projects present in this directory. Invoking compilation of any project is done with the ```PROJECT``` variable that needs to be passed on, see the following example:
```
make PROJECT=LPC812_uart_example
```
Building can be done with various configurations that set up flags and other settings, this configuration is set with the ```CONFIG``` variable. Most projects have the ```release``` and ```debug``` where the ```debug``` configuration is default.
The ```release``` configuration has optimizations enabled (usually for size) and minimal included debugging information. The ```debug``` configuration has NO optimization and full debugging information. There might be specific configurations available per project.  When no ```CONFIG``` is defined the default is the ```debug``` configuration.
### Embedded targets
For debugging on embedded targets, the [Black Magic Probe](https://github.com/blacksphere/blackmagic/wiki) is used, scripts to use this debugger are present in the ```gdb_scripts``` directory. make can be used to invoke debugging:
```
make PROJECT=LPC812_uart_example gdbusbdebug
make PROJECT=LPC812_uart_example gdbusbrelease
```
This will build, if needed, the debug or release build respectivly and load it into the target.
```
make PROJECT=LPC812_uart_example tpwrdisable
make PROJECT=LPC812_uart_example tpwrenable
```
The black magic probe is capable of powering the target, these commands enable/disable this function.
### Depedencies
The projects have a few dependencies:
* [LibMcuLl](https://github.com/Squantor/libMcuLL) for the chip specific routines
* [squantorLibC](https://github.com/Squantor/squantorLibC) contains a minimal LibC implementation
* [squantorLibEmbeddedC](https://github.com/Squantor/squantorLibEmbeddedC) contains various routines useful in embedded systems
* squantorLibEmbeddedCpp

Do not forget to clone with ```--recurse-submodules```.
## Usage
You will need the following hardware to try out these projects:
* [Black magic probe](https://github.com/blacksphere/blackmagic) or any other SWD capable programmer
* [Homebrew development boards](https://github.com/Squantor/squantorDevelBoards)
* [LPC breakout boards](https://github.com/Squantor/LPC-breakout-boards)

