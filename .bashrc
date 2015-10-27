# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
       .  /etc/bashrc
fi


# --------------------------------------------------------------
#                   ENVIRONMENT VARIABLES
# --------------------------------------------------------------

# Remember last 100 commands
export history=100

# Set main prompt. h=host, W=Working directory
export PS1="[\h: \W]\\$ "      


# --------------------------------------------------------------
#                    LOAD MODULES
# --------------------------------------------------------------

# load other modules?
module load shared pbspro 
module list


# -------------------------------------------------------
#                    ALIASES
# -------------------------------------------------------

# prompt on remove
alias rm='rm -i'

# ls with file type distinction
alias ls='ls -F' 

# list currently loaded modules
alias ml='module list'

# list currently available modules
alias ma='module avail'

