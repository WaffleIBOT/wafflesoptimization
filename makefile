update-packwiz:
	go install github.com/packwiz/packwiz@latest
	go install github.com/Merith-TK/packwiz-wrapper/cmd/pw@main
	clear
	@echo "Packwiz has been Updated"
export-fabric:
	cd versions/fabric && pw batch mr export
	-mv versions/fabric/*/*.mrpack .done/fabric
export-quilt:
	cd versions/quilt && pw batch mr export
	-mv versions/quilt/*/*.mrpack .done/quilt
export-neoforge:
	cd versions/neoforge && pw batch mr export
	-mv versions/neoforge/*/*.mrpack .done/neoforge
update-fabric:
	cd versions/fabric && pw batch update --all
update-quilt:
	cd versions/quilt && pw batch update --all
update-neoforge:
	cd versions/neoforge && pw batch update --all
refresh-fabric:
	cd versions/fabric && pw batch refresh
refresh-quilt:
	cd versions/quilt && pw batch refresh
refresh-neoforge:
	cd versions/neoforge && pw batch refresh
refresh:
	make refresh-fabric
	make refresh-quilt
	make refresh-neoforge
update:
	make update-fabric
	make update-quilt
	make update-neoforge
export:
	make export-fabric
	make export-quilt
	make export-neoforge