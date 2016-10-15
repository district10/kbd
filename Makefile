index.html: README.md
	pandoc --ascii $< -o $@
