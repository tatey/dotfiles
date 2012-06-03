# ~/.*

These are my dotfiles. There are many like them, but these ones are mine.

## Usage

**CAUTION** Conflicting files and directories will be overwritten.

Link files in the repository as dot files in your home directory.

    rake link

Link files in the repository as dot files in `DEST`

    rake link DEST=/path/to/dest

Link files in `SRC` as dot files in `DEST`

    rake link SRC=/path/to/src DEST=/path/to/dest

Unlink files in your home directory.

    rake unlink

The same environment variables may be set for `unlink`.

## License

Copyright © 2012 Tate Johnson. Released under the MIT license. See LICENSE.
