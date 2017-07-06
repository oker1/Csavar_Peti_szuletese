NAME=Csavar_Peti_Szuletese
OBJECTS=$(NAME).epub $(NAME).mobi

all: $(OBJECTS)

$(NAME).epub:
	zip -X0 $(NAME).epub mimetype
	zip -Xur9D $(NAME).epub META-INF OEBPS

$(NAME).mobi: $(NAME).epub
	ebook-convert $(NAME).epub $(NAME).mobi

.PHONY: clean
clean:
	rm -f $(NAME).epub $(NAME).mobi
