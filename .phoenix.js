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

  one: function () {
    const window = Window.focused()
    const screen = window.screen().flippedVisibleFrame()

    window.setFrame({
      x: screen.x,
      y: screen.y,
      width: screen.width / 3,
      height: screen.height
    })
  },

  two: function () {
    const window = Window.focused()
    const screen = window.screen().flippedVisibleFrame()

    window.setFrame({
      x: screen.width / 2,
      y: screen.y,
      width: screen.width / 2,
      height: screen.height
    })
  },

  three: function () {
    const window = Window.focused()
    const screen = window.screen().flippedVisibleFrame()

    window.setFrame({
      x: (screen.width / 3) * 2,
      y: screen.y,
      width: screen.width / 3,
      height: screen.height
    })
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
      // x: screen.x + (screen.width / 3),
      // y: screen.y + (screen.height / 2),
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
Key.on("1", ["shift", "alt"], ML.one)
Key.on("2", ["shift", "alt"], ML.two)
Key.on("3", ["shift", "alt"], ML.three)
Key.on("h", ["shift", "alt"], ML.left)
Key.on("l", ["shift", "alt"], ML.right)
Key.on("l", ["shift", "ctrl", "alt"], ML.rightTopHalf)
Key.on("k", ["shift", "ctrl", "alt"], ML.rightBottomHalf)
Key.on("t", ["shift", "alt"], ML.show("Terminal"))
Key.on("w", ["shift", "alt"], ML.show("Google Chrome"))