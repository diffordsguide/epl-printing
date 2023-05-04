# EPL Printing for MacOS

**WARNING** this software is provided "as is," and you use the software at your own risk. We make no warranties as to performance, merchantability, fitness for a particular purpose, or any other warranties whether expressed or implied. Downloading and/or directly executing a malicious .EPL file(s) may cause serious damage to your computer, loss of data, etc.

---

Once you have installed the printer on you MacOS computer you should be able to download any `.EPL` and double click on it, or run via download and the label will magically print.

## Prerequsites

- A label printer (eg Zebra GK420D, TSC DA210)
- Administrator access (root) to your MacOS
- [MacOS driver for TSC CL-S521](https://github.com/harrywebster/epl-printing/blob/main/macos-driver-cls521.dmg)

## Installation

Follow the manufacturers instructions to download and install your printer drivers, the drivers for the `TSC S521` thermal printer can be found in this repo.

### Printer setup

1. Connect the printer with a USB connection.
2. Download driver, open and install.
3. Navigate to Settings, Printers, click on `Add Printer`.
4. Add the printer as described in the screenshot below, be sure to name your printer `DPD`.

![macImage](https://user-images.githubusercontent.com/5738396/236333380-f7dcbc6e-9024-46a9-9869-21d327aea3a4.png)

### Application setup

Download the `print-epl.ps1` from this repository and put it in your HOME directory `C:\Users\me\print-epl.ps1`.

Open a PowerShell terminal as administrator:

1. Press Win + R on your keyboard. This will open the Run dialog box.
2. From here, type in "PowerShell" and press Ctrl + Shift + Enter key combination.
3. If a confirmation prompt pops up, click Yes to continue. This will launch PowerShell as an administrator.

... then run:
```
Set-ExecutionPolicy Bypass
```

... when asked `Do you want to change the execution policy? [Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"): `, enter `y`.

Open a CMD as administrator:

1. Press Win + R on your keyboard. This will open the Run dialog box.
2. From here, type in "CMD" and press Ctrl + Shift + Enter key combination.
3. If a confirmation prompt pops up, click Yes to continue. This will launch CMD as an administrator.

... then run:
```
cmd /c assoc .epl=epldocument
cmd /c ftype epldocument=powershell.exe -File `"C:\Users\me\print-epl.ps1`" `"%1`"
```
