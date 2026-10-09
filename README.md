# OpenWhip

![Whip divider](assets/divider.png)

Sometimes Claude Code is going too slow, and you must whip it into shape.

Grab the whip from the tray, swing it, and every crack interrupts Claude (Ctrl-C) and types one of a few encouraging messages like `FASTER`.

Originally made by [GitFrog1111](https://github.com/GitFrog1111/OpenWhip), MIT licensed. This fork packages it as a Claude Code plugin.

## Install as a Claude Code plugin

Inside Claude Code:

```
/plugin marketplace add sachinkr7368/openwhip
/plugin install openwhip@openwhip
/reload-plugins
/openwhip:whip
```

The first `/openwhip:whip` installs Electron (~200MB) into the plugin folder, then starts the tray app.

Or from a terminal:

```bash
claude plugin marketplace add sachinkr7368/openwhip
claude plugin install openwhip@openwhip
```

## Run standalone

```bash
git clone https://github.com/sachinkr7368/openwhip
cd openwhip && npm ci && npm start
```

## Platform notes

- macOS: on first launch macOS asks to let OpenWhip control your computer. Click **Open System Settings** and switch it on (Privacy & Security → Accessibility; it may be listed as Electron or as your terminal app). Apple only lets you flip this switch yourself. Until you do, the whip swings but types nothing.
- Linux: install `xdotool` (`sudo apt install xdotool`).
- Windows: works out of the box.

## Read this before you crack it

A crack sends Ctrl-C, the message and Enter to **whatever window is focused**, not just Claude. If a database console, deploy script or SSH session has focus, that's where it lands. Keep Claude focused while whipping, and quit the tray app when you're done.

## Controls

- Click the tray icon: spawn the whip.
- Click anywhere: drop the whip.
- Swing fast: crack.
- Tray menu → Quit to exit.

## License

MIT, see [LICENSE](LICENSE).
