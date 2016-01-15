#!/bin/bash

#
# DESCRIPTION: Collection of bash shell functions and aliases.  Can
#              be source'd and used in scripts.  Recommended for
#              start up files (.bashrc).  Tab-complete to know
#              they're loaded.
#            
# NOTES:       * R1 is example, can be used for Yellowstone, TACC,
#                INL, globus.boisestate.edu, ...
#              * Modify any CM_VAR_NAME (CM = CHANGE_ME)
#

# ------------------------------------------------------------------
#                           ALIASES
# ------------------------------------------------------------------

# SSH
# ===
# ssh to R1 with X11 forwarding
alias ssh2r1='ssh -c arcfour -Y CM_USER_NAME@r1.boisestate.edu'


# ------------------------------------------------------------------
#                           FUNCTIONS
# ------------------------------------------------------------------

# SCP
# ===
# scp2r1 = scp to r1 transfer directory
function scp2r1 {
  #
  # USAGE:   scp2r1 <filename>
  #
  # PURPOSE: Transfers a file, <filename>,  in current working directory 
  #          on local machine to a pre-determined sub-dir of home-dir on 
  #          R1 via scp. 
  #
  
  # input
  if [ ! $# -eq 1 ]; then
    echo -e "\nUsage: scp2r1 <filename>\n"
    return
  fi
  local filename="$1"
  
  # local vars
  local landing_dir=transfer       # any sub-dir of home dir, I use 'transfer'
  local r1_home=/cm/home/CM_USER_NAME
  local dir_path=$r1_home/$landing_dir

  # the call
  scp ./$filename CM_USER_NAME@r1.boisestate.edu:$dir_path

  return
}


# scpfr1 = scp from r1 transfer directory
function scpfr1 {
  #
  # USAGE:   scpfr1 <filename>
  #
  # PURPOSE: Transfers a file, <filename>,  from a pre-determined sub-dir 
  #          of home-dir on R1 to the current working directory on local
  #          machine via scp. 
  #          
  #

  # input
  if [ ! $# -eq 1 ]; then
    echo -e "\nUsage: scpfr1 <filename>\n"
    return
  fi
  local filename="$1"

  # local vars
  local landing_dir=transfer      # any sub-dir of home dir, I use 'transfer'
  local r1_home=/cm/home/CM_USER_NAME
  local dir_path=$r1_home/$landing_dir

  # the call
  scp CM_USER_NAME@r1.boisestate.edu:$dir_path/$filename .

  return
}

