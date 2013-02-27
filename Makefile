SUBDIRS = web socket.io nodejs

.PHONY: all
all:
	for dir in $(SUBDIRS); do \
    	$(MAKE) -C $$dir;     \
	done

.PHONEY: clean
clean:
	for dir in $(SUBDIRS); do \
		$(MAKE) clean -C $$dir; \
	done 