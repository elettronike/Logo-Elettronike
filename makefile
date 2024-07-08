REL = "release-1.0"

all: logo-ix
	touch ./${REL}/readme.md
	
logo-ix: release_dir
	inkscape --export-id-only ./ix-capsule/logo-iperkeno-capsule.svg --export-type="png" --export-id="logo_bb" -o ${REL}/ix-capsule.png
	
release_dir:
	mkdir -p ${REL}
		
clean:
	rm -r ${REL}
