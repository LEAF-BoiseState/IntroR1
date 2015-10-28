# IntroR1
Sample materials for R1

Table of contents:
* .bash_profile - sample .bash_profile for R1 (a bash start up file)
* .bashrc - sample .bashrc file for R1 (a bash resource file, sourced in .bash_profile, so also read at start up)
* helloworld.py - a 'hello, world' program using the Python MPI binding provided by mpi4py
* submit_hello_cores_n16 - a submit script for helloworld.py (multi-core MPI job).  In this script two node chunks with 16 cores each are requested.  This is also intended to be used as an template for MPI jobs requesting cores in multiples of 16.
* sleep_demo.sh - a simple script intended to demonstrate how to: look at output as it is being generated, check on job status, kill the job if need be.
* submit_sleep_core_1 - a submit script for sleep_demo.sh (single core job).  In this script 1 node chunk with 1 core is requested.  This is also intended to be a template for any job requesting less than 16 cores.
