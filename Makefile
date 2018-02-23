# academic
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources = Makefile .ignore README.md upstuff.mk LICENSE.md
-include upstuff.mk

######################################################################

## Content

clonedirs += Datsid
Datsid:
	git clone https://github.com/Outbreak-analysis/$@

clonedirs += smb-mathepi
smb-mathepi:
	git clone https://github.com/mac-theobio/$@

clonedirs += notebook
notebook:
	git clone -b gh-pages https://github.com/dushoff/$@

Ignore += $(clonedirs)

##################################################################

## Previous Content

## Private repo for lab (to replace private lab wiki)
## tdirs += lab

## Lab meeting repo (publicly viewable)
## Already in repos.def
## tdirs += Lab_meeting

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/hybrid.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/texdeps.mk
