# JeanMichelCV Template

## Dependencies

- LuaTex or XeTex (for custom font, installable via `texlive-luatex` or `texlive-xetex` packages)
- Packages:
    - `inputenc`
    - `xcolor`
    - `geometry`
    - `titlesec`
    - `tabularx`
    - `array`
    - `fancyhdr`
    - `fontspec`
    - `ifthen`
    - `fontawesome` (available in `texlive-fonts-extra`)
    - `lastpage`
    - `indentfirst`

## Document class

Provides a `jeanmicheldoc` documentclass

### Options

- `blue`: Define blue as global color
- `green`: Define green as global color
- `orange`: Define orange as global color
- `black`: Define black as global color

### Default Options

If no options are passed, `blue` is used as default color.

### Usage

Use as default `article` class.
