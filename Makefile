PROG=note
TARGET="$(shell pwd)/${PROG}"
LINK="/usr/local/bin/${PROG}"

install:
	@ln -sf ${TARGET} ${LINK}
directory:
	@mkdir "${HOME}/.notes"
all: install directory

.PHONY: install directory
