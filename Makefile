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

clonedirs += competence_overleaf
competence_overleaf:
	git clone https://git.overleaf.com/15384993fdvkjzsjkfdj $@

clonedirs += Erlang_link
Erlang_link:
	git clone https://github.com/davidchampredon/link-re-erlang.git $@

clonedirs += rabies_db_pipeline
rabies_db_pipeline:
	git clone https://github.com/wzmli/$@

clonedirs += rabies_R0
rabies_R0:
	git clone https://github.com/wzmli/$@

clonedirs += plague
plague:
	git clone https://github.com/davidearn/$@

clonedirs += BickoExercise
BickoExercise:
	git clone https://github.com/CYGUBICKO/Phd_Exercises.git $@

clonedirs += Alberta_age
Alberta_age:
	git clone https://git.overleaf.com/8974471gkzqmdgbwvtj $@

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
