# EPL File Printing

**WARNING** Our software is provided "as is," and you use the software at your own risk. We make no warranties as to performance, merchantability, fitness for a particular purpose, or any other warranties whether expressed or implied. Downloading and/or directly executing a malicious .EPL file(s) may cause serious damage to your computer, loss of data, etc.

---

A solution for printing EPL files. EPL files contain RAW data for printers, in this case labels supplied by DPD and other couriers that can be tricky to print.

## The Problem

DPD do not provide PDF labels for printing, insted they provide EPL (`text/vnd.eltron-epl`), CPL (`text/vnd.citizen-clp`) or HTML, however the HTML version is unusable (scaling causes major issues).

## The Solution

There doesn't seem to be a good (free) solution to convert EPL or CPL into something more usable like PDF but you can send the raw file directly to the attached printer, however this needs to be done via command line.

Once configured to use this solution you'll need to download the `.EPL` file and run it, and as if by magic the printer will print your label (or whatever is contained in the EPL file).

## Installation

- [Windows](README.windows.md)
- MacOS
- Ubuntu

## Printers tested on Winodws 11

- Zebra GK420D (EPL)
- TSC DA210
