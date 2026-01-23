# debug80-tec1g

Machine setups for the Debug80 TEC-1G platform.

## Layout

- `tec1g-mon1/`: MON-1B compatibility setup (user program starts at `0x0800`).
- `tec1g-mon3/`: MON-3 configuration (user program starts at `0x4000`).
- `roms/tec1/`: Classic TEC-1 ROM images used for compatibility testing.
- `roms/tec1g/`: TEC-1G ROM images used by the setups.

Each machine folder contains a `.vscode/debug80.json` with one or more targets.
Select a target to assemble, load, and debug a specific program on that machine.

## ROMs

- `roms/tec1/mon-1b/mon-1b.hex` (MON-1B, classic TEC-1 ROM).
- `roms/tec1g/mon-3/mon-3.bin` (MON-3 BC24-15, from TEC-1G ROM bundle).

## Programs

Both setups ship with a minimal `main.asm` placeholder.
Replace it with your own programs as you begin exploring the TEC-1G platform.
