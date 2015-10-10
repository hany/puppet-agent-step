# makefile
pluginname=puppet-agent-step
pluginfile=$(pluginname).zip
FILES=$(shell find $(pluginname))

.PHONY: clean check-env

$(pluginfile): $(FILES)
	zip -r $(pluginfile) $(pluginname)

clean:
	@-rm -rf $(pluginfile)

check-env:
	ifndef RDECK_BASE
		$(error RDECK_BASE is undefined)
	endif
	
install: $(pluginfile)
	cp $(pluginfile) $(RDECK_BASE)/libext
