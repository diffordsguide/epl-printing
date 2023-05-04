# EPL Printing for MacOS

**WARNING** this software is provided "as is," and you use the software at your own risk. We make no warranties as to performance, merchantability, fitness for a particular purpose, or any other warranties whether expressed or implied. Downloading and/or directly executing a malicious .EPL file(s) may cause serious damage to your computer, loss of data, etc.

---

Once you have installed the printer on you MacOS computer you should be able to download any `.EPL` and double click on it, or run via download and the label will magically print.

## Prerequsites

- A label printer (eg Zebra GK420D, TSC DA210)
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

1. Open Automator and choose to create an Application.
2. Find the Action "Run Shell Script" and double-click it or drag it to the script area.
3. Select the interpreter `bash`.
4. Set the "Pass input" option to "as arguments".
5. Enter the following code into the edit area below: `lpr -P DPD -o raw $@`
6. You can now save the script, calling it `print-epl`.
7. Open a `.EPL` label file and when it asks you what application you want to open it through, select `print-epl`

This solution will use the printer called `DPD`, if you want to swap printers you'll have to rename them both so the old printer is called `something-else` and the desired printer is now called `DPD`.
