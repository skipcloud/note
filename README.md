# note

Who needs a dedicated note taking application when you probably have already
have a text editor on your computer that you like to use? All you need is a
small command to help you create or edit notes.

This is a small script that works in conjunction with your editor to do just
that. It will keep all your notes in a directory of your choosing and has some
options for simple searching, the notes will be created with the markdown
extension unless told otherwise, check out the [customise](#customise) section
for more details.

- [Installation](#installation)
- [Usage](#usage)
- [Customise](#customise)
- [Command completion](#command-completion)

## Installation

* Download the repo.
* Run `make all` if you are happy with the default place for the script
  (`/usr/local/bin`) and the default directory to store the notes
  (`$HOME/.notes`). Otherwise read on.
* Ensure the script is in your `$PATH`. You can run `make install` to symlink
  the script to `/usr/local/bin`.
* By default notes are kept in `$HOME/.notes`, run `make directory` to create it. Alternatively if you know where you want your notes to live then export an environment variable called `NOTES_DIR` with the path to your chosen directory.
* Take some notes.

## Usage

```
note [--help|-h]
     [--list|-l]
     [--search|-s <name>]
     [--text-search|-t <text...>]
     [--delete|-d <name>]
     [--no-extension|-n <name-with-ext>]
     [--] [<name>]
```

`note` on its own will open the directory. Behaviour is dependent on your
editor.

`note [--] <name>` will look in your notes directory for a note with that name, if it
doesn't find one it will create a new one. If there are multiple notes with that
name you are presented with a choice. The `--` will enable you to have dashes at
the start of your note name.

`note --list` will display all the notes in your notes directory.

`note --search <name>` will search your notes directory for notes with that
name.

`note --text-search <text...>` will search your notes for that text using grep.

`note --delete <name>` will attempt to delete that note.

`note --no-extension <extension> <name>` will create a new note without adding
an extension, this is useful if you want to provide one, i.e. `note -n file.c`

`note --help` will display command usage.

## Customise

Set the `EDITOR` environment variable to your favourite editor, vim is the
default.

Set `NOTES_DIR` to specify where you want to keep your notes, the default is
`$HOME/.notes`

Set `NOTE_EXT` to specify which extension you would like new notes to have, the
default is `md`.

## Command completion

Currently there is only support for `zsh` command completion. It will present
options available to you and the complete the names of notes you have in your
notes directory.

- Generate the completion file by running `make generate/zsh-completion`.
- Run `make install/zsh-completion` to symlink to the newly created completion
  file from `/usr/local/share/zsh/site-functions`. It uses sudo to create the
  symlink, so you will be asked for your password.
- Reload your shell.
