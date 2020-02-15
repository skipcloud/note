PROG=note
TARGET="$(shell pwd)/${PROG}"
LINK="/usr/local/bin/${PROG}"

install:
	@ln -sf ${TARGET} ${LINK}
directory:
	@mkdir "${HOME}/.notes"
generate/zsh-completion:
	@sh .make/generate-completion.sh
install/zsh-completion:
	@sh .make/generate-completion.sh
	@sh .make/setup-zsh-completion.sh

all: install directory generate/zsh-completion install/zsh-completion

.PHONY: install directory
