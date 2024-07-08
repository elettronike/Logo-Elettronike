all:
	mkdir -p release
	inkscape --export-id-only ./ix-capsule/logo-iperkeno-capsule.svg --export-type="png" --export-id="logo_bb" -o release/ix-capsule.png

clean:
	rm -r release
