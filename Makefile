# academic
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################


Sources = Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk
-include $(ms)/repos.def
# include $(ms)/perl.def

##################################################################

## Content

## Private repo for lab (to replace private lab wiki)
tdirs += lab

## Lab meeting repo (publicly viewable)
tdirs += Lab_meeting

dirs += $(tdirs)
theobio_group += $(tdirs)

Sources += $(dirs)

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/modules.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
