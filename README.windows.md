# EPL Printing for Windows

## Prerequsites

- A label printer (eg Zebra GK420D, TSC DA210)
- Permit use of `.ps1` scripts

## Installation

Follow the manufacturers instructions to download and install your printer drivers, and share your printer on the network.

### Printer setup

1. Connect the printer with a USB connection.
2. Navigate to Control Panel > Devices and Printer.
3. Select the required Printer and right-click to select Printer Properties.

![rtaImage](https://user-images.githubusercontent.com/5738396/236037133-76cd68e8-77c5-484a-9c44-08b791f24059.jpeg)

4. From the Sharing tab, flag the Share this printer checkbox.

![236037383-b34489be-2a5e-4e79-8ece-fb7695d6e441](https://user-images.githubusercontent.com/5738396/236040273-ef2a23bf-55e2-4470-ac40-1b624d4d9181.png)

5. Call your printer `DPD`.

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

Now in the same window (as Administrator) run:
```
cmd /c assoc .epl=epldocument
cmd /c ftype epldocument=powershell.exe -File `"C:\Users\me\print-epl.ps1`" `"%1`"
```
