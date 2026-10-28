# Usage : make render stm        (ou make render alto Alto pour imposer le sigle)
.PHONY: render
render:
	@scripts/render.sh $(filter-out render,$(MAKECMDGOALS))

# Les arguments après « render » ne sont pas des cibles.
%:
	@:
