---
description: Launch OpenWhip (tray icon). Click it, then whip Claude into going faster.
allowed-tools: Bash(bash:*)
---

!`bash "${CLAUDE_PLUGIN_ROOT}/scripts/launch.sh" 2>&1`

Tell the user in one line that OpenWhip is running in the menu bar / system tray. On macOS, mention it needs Accessibility permission for the terminal/Electron to send keystrokes.
