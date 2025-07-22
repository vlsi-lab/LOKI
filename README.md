# LOKI 
## Low-latency Open-source Kyber-accelerator IPs

CRYSTALS-Kyber is a lattice-based key encapsulation mechanism (KEM) recognized as one of the finalist algorithms in NIST's post-quantum cryptography (PQC) standardization process. Polynomial multiplications and hash functions, as essential operations in lattice-based PQC schemes, pose a significant time consumption challenge with respect to nowadays cryptographic protocols. This work addresses these computational efforts by incorporating LOKI, an accelerator, into a RISC-V microcontroller.
By leveraging the accelerator, the performance can be enhanced, contributing to the overall efficiency of Kyber in the fundamental tasks of key generation, encryption, and decryption operations. Through empirical evaluations and benchmarking, the effectiveness and practicality of the proposed hardware architectures are demonstrated, highlighting their potential to advance the field of post-quantum cryptography. 

# Introduction

In the **LOKI** repository you can find an example of a post-quantum cryptographic (PQC) hardware accelerator for PULPissimo. 
If you are using this accelerator, please refer to:

> Dolmeta, A., Mirigaldi, M., Martina, M., Masera, G. (2024). LOKI Low-Latency Open-Source Kyber-Accelerator IPs. In: Bellotti, F., et al. Applications in Electronics Pervading Industry, Environment and Society. ApplePies 2023. Lecture Notes in Electrical Engineering, vol 1110. Springer, Cham. https://doi.org/10.1007/978-3-031-48121-5_4

Which still needs to be published, but has been accepted to ApplePies2023 (International Conference on Applications in Electronics Pervading Industry, Environment and Society).

# Getting started
The RISC-V PULPissimo microcontroller from the open-source [PULP platform](https://github.com/pulp-platform) project is used and configured to work with the 4-stage pipeline core RI5CY. Then, Keccak algorithm is compiled using [PULP toolchain](https://github.com/pulp-platform/pulp-riscv-gnu-toolchain), setting the optimization flag '-O3' and increasing the
stack’s memory size (not for Keccak itself, but in the case of bigger applications, like PQC algorithms).

The `randombytes` file is modified, generating a pseudo-random sequence of bytes, while `fips202`’s standard library functions are substituted
by the one provided by PULP-team. The accelerator is driven in a memory-mapped fashion style and attached to the SoC through an AXI plug, as shown in Figure. Its dependency on PULPissimo is managed by [Bender](https://github.com/pulp-platform/bender), while the Keccak register interface is
generated using [reggen tool](https://docs.opentitan.org/util/reggen/doc/).
The high-speed Keccak core developed by Keccak teams is optimized according to our application (Figure - III ). It implements transformation
rounds discussed in section 2. The size of the round constant generator is reduced from 64-bit to one-byte size, simplifying the computation in ι. The accelerator is simulated and tested using ModelSim, exploiting a dedicated driver

![Image](https://github.com/vlsi-lab/LOKI/blob/main/loki.svg)

## Folder organization
- **pulpissimo**: forked repository of the original pulpissimo folder. Please refer to [pulpissimo GitHub Pages](https://github.com/pulp-platform/pulpissimo) for further information. 
- **pulp_soc**: forked repository of the pulp_soc sub-ip repository. This is the main repository that contains most of the SoCs RTL logic. This allows us to add new IPs to PULPissimo. The new source code has been registered in the Bender.yml manifest file, in order to add this new repository as a dependency to pulp_soc's Bender.yml. As explained in `pulpissimo` repository, this is the most used strategy throughout the PULPissimo project, which is a collection of many different IP repositories.
- **pulp-runtime**: forked repository of the original pulp-runtime folder. Please refer to [pulp-runtime GitHub Pages](https://github.com/pulp-platform/pulp-runtime.git) for further information.  
- **test**: contains the files required for Kyber tests.


# Simple runtime
## Prerequisities
Prerequisites are explained in detail in the [main repository](https://github.com/pulp-platform/pulpissimo). We report for the reader's convenience the main steps.

First, install the system dependencies indicated [here](https://github.com/pulp-platform/pulp-runtime/blob/master/README.md).

Then, make sure you have  [riscv-gnu-toolchain](https://github.com/pulp-platform/pulp-riscv-gnu-toolchain) installed, and get the repository.

Different bash files are present, to properly set the overall environment. In order to run #.sh files, point:
```
source YOUR_QUESTA_SIM_PATH
export PULP_RISCV_GCC_TOOLCHAIN=YOUR_PULP_TOOLCHAIN_PATH
export PATH=$PULP_RISCV_GCC_TOOLCHAIN/bin:$PATH
```
The simple runtime that is cloned supports many different hardware configurations. We want PULPissimo, therefore:
```
source pulp-runtime/configs/pulpissimo.sh
```
Now we are ready to set up the simulation environment. All these commands are added in each .sh file.

## RTL-simulation
Now you need Questasim to do an RTL simulation of PULPissimo. To understand how the rtl-simulation-platform is build and the meaning of all the commands present in .sh files, link [here](https://github.com/pulp-platform/pulpissimo/blob/master/README.md#building-the-rtl-simulation-platform).

## Downloading and running tests
Finally, you can download and run tests. Now you can change the directory to your desired test e.g.: for testing, run
```
cd ../test/kyber512/keygen 
make clean all
make dis > kyber512.s
make -f Makefile run gui=1
```
`make dis` will provide you with the disassembly of your application, while `make run gui=1` will start Modelsim GUI. In case you are not interested in the GUI, simply run  `make run`.

## Set up files
Once you have performed a first simulation step-by-step, and you are sure everything is working fine, you can use the different bash files.
Each of them refers to a particular level of security in Kyber. Run:
```
source setup_kyberXXX.sh
```
And then select `keygen`, `enc` or `dec`, depending on which part of the algorithm you want to run. 
Kyber512 is the default test. In the case you want to run Kyber768 or Kyber1024, you need to modify the following files:
- `pulp-runtime/include/pulp.h`: selecting the proper header files;
- `pulp-runtime/rules/pulpos/default_rules.mk`: modify kyberXXX properly;
- `pulp-runtime/rules/pulpos/targets/pulpissimo.mk`: modify kyberXXX properly.


<!-- LICENSE -->
## License
Distributed under the MIT License.
See `LICENSE.txt` for more information.

<!-- CONTACT -->
## Contact
Alessandra Dolmeta - [linkedin](https://www.linkedin.com/in/alessandra-dolmeta-4884301a3/) - alessandra.dolmeta@polito.it
  
