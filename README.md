# note

Who needs a dedicated note taking application when you probably have already
have a text editor on your computer that you like to use? All you need is a
small command to help you create, edit, search for/through, or list the ones you
have.

## Installation

* Download the repo.
* Run `make` to symlink the script to `/usr/local/bin`, you might need to use
`sudo` to make create the link.
* Take some notes.

## Usage

`note [--list|-l] [--search|-s <name>] [--text-search|-t <text...>] [<name>]`

`note <name>` will look in your notes directory for a note with that name, if it
doesn't find one it will create a new one. If there are multiple notes with that
name you are presented with a choice.

`note --list` will display all the notes in your notes directory.

`note --search <name>` will search your notes directory for notes with that
name.

`note --text-search <text...>` will search your notes for that text using grep.

`note` on its own will open the directory. Behaviour is dependent on your
editor.

## Customise

Set the `EDITOR` environment variable to your favourite editor, vim is the
default.

Set `NOTES_DIR` to specify where you want to keep your notes, the default is
`$HOME/.notes`
