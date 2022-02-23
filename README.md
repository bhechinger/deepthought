# deepthought

This is a bit of ansible to setup my linux desktop. This has come in very useful every time I needed to rebuild my machine (which for reasons I have had to several times over the last couple years).

This is mostly meant to be guidance for your own setup. A lot of this is very specific to what I need/do.

`setup.sh` can be used to bootstrap a freshly installed machine.
`doit` is what's used for just running ansible for changes.

## Native Instruments
Wine version: 6.0

NOTE: While these do work you can't install the Bome Virtual MIDI package (it installs drivers which you can't do in Wine) which is a requirement for all of their hardware devices so controllers don't (and probably won't ever) work.

```
export WINEPREFIX=~/Documents/NativeInstruments
wine Native\ Access\ 1.13.3\ Setup\ PC.exe
wine64 regsvr32 wineasio.dll
regsvr32 wineasio.dll
```

`sudo mount -t udf /home/yourname/.wine/drive_c/users/yourname/Downloads/Reaktor_Spark_R2.iso -o unhide /mnt/spark`

Installs:
* Reaktor
* Raum
* Controller Editor
* Kontakt 6 Player

Needs Help:
* Reaktor 
* Reaktor Blocks
* Reaktor Factory Library
* Reaktor Factory Selection R2
* Analog Dreams
* Blocks Base
* Blocks Prime
* Choral
* Chromatic Fire
* Expansions Selection
* Maschine 2 Factory Selection
* Kinetic Treats
* TRK-01
* TRK-01 Bass
* TRK-01 Kick
* Kontakt Factory Selection
* Mikro Prism
* Monark
* Play Series Selection
* Yangqin

Not working:
* Maschine (installs but hangs at start)
* Flair
* Komplete Kontrol
* Phasis
* Replika
* Guitar Rig 5 Factory Selection (requires at least windows 7)
* Reaktor Blocks Wired (requires at least windows 7)
* Solid Bus Comp F (requires at least windows 7)X
* Supercharger (requires at least windows 7)
