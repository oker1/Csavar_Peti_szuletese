epub: clean
	zip -X0 Csavar_Peti_Szuletese.epub mimetype
	zip -Xur9D Csavar_Peti_Szuletese.epub META-INF OEBPS

clean:
	rm -f Csavar_Peti_Szuletese.epub
