const MENU_BAR_HEIGHT = 22

const ML = {
  switchMonitors: function () {
    Window.focused().setFrame(Window.focused().screen().previous().flippedVisibleFrame())
  },

  show: function (appName) {
    return function () {
      (App.get(appName) || App.launch(appName)).focus()
    }
  },

  left: function () {
    const window = Window.focused()
    const screen = window.screen().flippedVisibleFrame()

    window.setFrame({
      x: screen.x,
      y: screen.y,
      width: screen.width / 2,
      height: screen.height
    })
  },

  right: function () {
    const window = Window.focused()
    const screen = window.screen().flippedVisibleFrame()

    window.setFrame({
      x: screen.width / 2,
      y: screen.y,
      width: screen.width / 2,
      height: screen.height
    })
  },

  rightTopHalf: function () {
    const window = Window.focused()
    const screen = window.screen().flippedVisibleFrame()

    window.setFrame({
      x: screen.width / 2,
      y: screen.y,
      width: screen.width / 2,
      height: screen.height / 2
    })
  },

  rightBottomHalf: function () {
    const window = Window.focused()
    const screen = window.screen().flippedVisibleFrame()

    window.setFrame({
      x: screen.width / 2,
      y: (screen.height / 2) + MENU_BAR_HEIGHT,
      width: screen.width / 2,
      height: screen.height / 2
    })
  },

  full: function () {
    Window.focused().maximise()
  }
}

Key.on("space", ["shift", "alt"], ML.full)
Key.on("f", ["shift", "alt"], ML.switchMonitors)
Key.on("h", ["shift", "alt"], ML.left)
Key.on("l", ["shift", "alt"], ML.right)
Key.on("l", ["shift", "ctrl", "alt"], ML.rightTopHalf)
Key.on("k", ["shift", "ctrl", "alt"], ML.rightBottomHalf)
Key.on("t", ["shift", "alt"], ML.show("Terminal"))
Key.on("w", ["shift", "alt"], ML.show("Google Chrome"))