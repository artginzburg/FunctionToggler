<h1 align="center">
   Function Toggler <img align="center" height="90" src="icon/icon.png">
</h1>

<p align="center">
   Quickly<sup>*</sup> toggle the <strong>"Use all F1, F2, etc. keys as standard function keys"</strong> option in macOS System Preferences
</p>

> <sup>\*</sup> Through the shortcut

![keyboard settings](screenshots/kb-sets.png)

## Install

### Via [Homebrew Cask](//brew.sh) (Recommended)

```ps1
brew cask install artginzburg/tap/functiontoggler
```

### Direct Download

**[Latest Release ![GitHub release](https://img.shields.io/github/release/artginzburg/functiontoggler?label=%20)](//github.com/artginzburg/FunctionToggler/releases/latest/download/FunctionToggler.zip)**

### Using Source Code

1. Install [`platypus`](https://github.com/sveinbjornt/Platypus) CLI.

> I use it instead of `osacompile -o MyScript.app MyScript.scpt` because it offers better interface and for some reason compiles to less size.

```ps1
brew install platypus
```

2. Clone, set current directory and run the build command.

> also allows to `make uninstall`

```ps1
git clone https://github.com/artginzburg/FunctionToggler
cd FunctionToggler
make
```

---

<details>
   <summary>Function Toggler needs Accessibility Control</summary>

1.  Open the app once (for it to appear in Accessibility tab)
2.  Go to `System Preferences` > `Security & Privacy` > `Privacy` > `Accessibility`
3.  `Click the lock to make changes` and tick `Function Toggler` under `Allow the apps below to control your computer`.

![preferences](screenshots/privacy-sets.png)

</details>

## Usage

Simply run the app.
I like to do it from Spotlight:

1. Press <kbd>⌘</kbd> + <kbd>space</kbd> (or similar) to open Spotlight.
2. Start typing `fun` or `ft`, continue until `Function Toggler` appear in the Top Hit section.
3. Hit <kbd>Enter</kbd>.

## Enable the Keyboard shortcut

Go to `System Preferences` > `Keyboard` > `Shortcuts` > `Services` > `General` (at the end of the list) and assign a new shortcut to `Function Toggler` service

![keybard-shortcut](screenshots/kb-short.png)
