# Pharo Object Centric Breakpoint Tutorial
This installation procedure concerns you if you are using a standard Pharo 9 image.
If you are using the object-centric experimental image, then you can directly start the Tutorial.

## Installation

First, download a fresh Pharo 9 image and load new tools:
```Smalltalk
Metacello new
    baseline: 'NewTools';
    repository: 'github://pharo-spec/NewTools';
    load.
```
As a second step, load the package `OCD-Tasks-Tutorial` from the current repository.
