default: edit

edit:
	code .
e: edit

bookerly.css: ../gurdiga.com/assets/bookerly/*
	@{ \
		echo '@media only screen and (max-width: 600px) {'; \
		for spec in "normal normal Regular" "bold normal Bold" "normal italic RegularItalic" "bold italic BoldItalic"; do \
			weight=$$(echo $$spec | cut -d' ' -f1); \
			style=$$(echo $$spec | cut -d' ' -f2); \
			variant=$$(echo $$spec | cut -d' ' -f3); \
			echo '  @font-face {'; \
			echo '    font-family: "Bookerly";'; \
			echo "    font-weight: $$weight;"; \
			echo "    font-style: $$style;"; \
			printf '    src: url("data:font/truetype;base64,'; \
			base64 -i ../gurdiga.com/assets/bookerly/Bookerly-$$variant.ttf | tr -d '\n'; \
			printf '");\n'; \
			echo '  }'; \
			[ "$$variant" = "BoldItalic" ] || echo; \
		done; \
		echo '}'; \
	} > $@

