REL = "release-1.0"

all: logo-ix logo-ev
	touch ./${REL}/readme.md
	
logo-ix: release-dir
	inkscape --export-id-only logo-iperkeno.svg --export-type="png" --export-id="logo_bb" -o ${REL}/ix-capsule.png


logo-ev: release-dir
	inkscape --export-id-only logo-elettronike.svg --export-type="png" --export-id="logo-ev" -o ${REL}/ev-diomond.png
	inkscape --export-id-only logo-elettronike.svg --export-type="png" --export-id="logo-ev-bb" -o ${REL}/ev-diomond-bb.png
	inkscape --export-id-only logo-elettronike.svg --export-type="png" --export-id="logo-ev-text" -o ${REL}/ev-diomond-text.png
	inkscape --export-id-only logo-elettronike.svg --export-type="png" --export-id="logo-ev-text-bb" -o ${REL}/ev-diomond-text-bb.png
	
release-dir:
	mkdir -p ${REL}
		
clean:
	rm -r ${REL}
