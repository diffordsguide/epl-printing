# EPL Printing for Windows

**WARNING** this software is provided "as is," and you use the software at your own risk. We make no warranties as to performance, merchantability, fitness for a particular purpose, or any other warranties whether expressed or implied. Downloading and/or directly executing a malicious .EPL file(s) may cause serious damage to your computer, loss of data, etc.

---

Once you have setup your Windows computer you should be able to download any `.EPL` and double click on it, or run via download and the label will magically print.

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

![image](https://user-images.githubusercontent.com/5738396/236050504-0c16b03d-a776-475d-8abf-4d2770024599.png)

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
