# Signal and Handler Compiler Modifications
This repository provides a parser as well as a slightly modified compiler to help compile smart contracts utilizing signals and handlers. Example contracts can be found in `.signalhandler/examples/`. The parser implementation can be found in `./signalhandler/parser/`. 

To build and install the compiler from source, enter the root directory and do the following.
```
sudo sh ./scripts/install_deps.sh 
mkdir -p build
cd build
cmake ..
make
```
Visit [solidity](https://solidity.readthedocs.io/en/latest/installing-solidity) for more information. Once compiled, the solc executable can be found in the `./build/solc/` directory. 

To parse and compile a contract, use the build.sh script found in `./signalhandler/build.sh`. For more information on how to use this script, run:
```
./build.sh --help
```
# Signal and Handler Syntax

# Compiler Modifications
Not much was changed to the compiler. New opcodes are added to `./libevasm/instruction.h` and `./libevasm/instruction.cpp` so that a modified version of a EVM (Ethereum Virtual Machine) which can execute the new bytecodes. An implementation of a blockchain which supports signal and handler opcodes can be found [here](https://github.com/R-Song/conflux-rust). In this blockchain there is an implementation of an EVM capable of executing the new signal and handler opcodes.

# More Information
This project was forked off of the main solidity repository (obviously). Check out the original github repository [here](https://github.com/ethereum/solidity).