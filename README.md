# LBGTKW — Lets Blur GTK Windows!

![LBGTKW](https://img.shields.io/badge/KDE-GTK%20Blur-blue)

LBGTKW is a simple, user-friendly script to **automatically enable blur on GTK3 and GTK4 windows** in KDE Plasma.  
It works by appending transparent CSS to GTK themes and running a small daemon to apply blur to all GTK windows.

---

## Features

- Automatically backs up your GTK3 & GTK4 CSS before making changes.
- Adds blur-friendly transparency to both GTK3 and GTK4 windows.
- Runs a daemon to apply blur to all GTK windows automatically.
- Easy uninstall restores your original themes and removes all scripts/services.
- Works with **KDE Plasma** (X11) sessions.

---

## Installation

Clone the repository and run the CLI:

```bash
git clone https://github.com/darkyboys/lbgtkw.git
cd lbgtkw
chmod +x scripts/lbgtkw-cli.sh
sudo ./scripts/lbgtkw-cli.sh <R> <G> <B> <A>
```

* `<R> <G> <B>` → RGB color for the blur background.
* `<A>` → Alpha (opacity) between 0 (transparent) and 1 (opaque).

---

## Uninstallation

```bash
sudo /usr/local/bin/lbgtkw-uninstall.sh
```

or

```bash
sudo lbgtkw-uninstall.sh
```

* Restores backups of your GTK3 & GTK4 CSS.
* Stops and disables the systemd blur daemon.
* Removes all installed scripts and services.

---

## Notes

* Tested on **KDE Plasma** with X11 (Arch Linux).
* Works for most GTK3 and GTK4 applications except for those who overwrites their own css (eg. GIMP).
* Blur effect depends on your **KDE compositor settings**.

---

## Bug Report

* Open an `issue`

---

## License

This project is licensed under the **MIT License** — see [LICENSE](LICENSE) for details.

---

### 3️⃣ LICENSE file (MIT)

```text
MIT License

Copyright (c) 2025 ghgltggamer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
````
