# quAPL


Santiago Núñez-Corrales, PhD (nunezco2@illinois.edu)

Marcos Frenkel (marcosf2@illinois.edu)

Bruno de Abreu (babreu@illinois.edu)

National Center for Supercomputing Applications

## Installation and First Steps

For installation details and a guide on how to start using quAPL, please see the our [wiki page](https://github.com/nunezco2/quAPL/wiki).


## Description

**quAPL** is an APL implementation of a collection of primitives that can be used to simulate a quantum computer. The code is inteded to be experimental, and will continue to be expanded upwards to contain composable primitives leading to the vision of an Instruction Set Architecture, as well as downwards to replace core entities with calls to existing quantum implementations, ideally using OpenQASM.

## Why APL

* APL naturally captures the effect of operators over vectors in normed, finite-dimensional Hilbert spaces representing quantum states
* APL's array-based syntax allows quantum programmers to focus on the semantics of qubit operators while removing concerns about implementation details unrelated to quantum computing
* APL's ability to optimize operations across multiple data types
* APL's native handling of complex numbers

## Current status

The code is in early development.


## Milestones

* Reach a complete simulator with known gates
* Extend the simulator to contain composable primitives based on higher algebra constructs
* Add calls to various back-ends (e.g. Amazon Braket, IBM Qiskit) to run on real devices

## Acknowledgments

This work is supported in part by the 
Illinois Quantum Information Science and Technology Center through the Illinois Quantum Applications Grant Program, including Amazon Braket credits.
### Organizations
* [National Center for Supercomputing Applications](https://www.ncsa.illinois.edu), University of Illinois Urbana-Champaign
* [Illinois Quantum Information Science and Technology Center (IQUIST)](https://iquist.illinois.edu), University of Illinois Urbana-Champaign

### Individuals

This work also benefits from advice and contributions of talented individuals listed below:

* Richard Park, Dyalog APL
* Aaron Hsu, Dyalog APL

