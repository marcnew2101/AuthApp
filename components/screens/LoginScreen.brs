function init()
    m.loginButtons = m.top.findNode("LoginButtonGroup")
    m.loginButtons.buttons = ["Login with HardcoreGo Account", "Get Pairing Code", "Exit"]
    m.loginButtons.iconUri = ""
    m.loginButtons.focusedIconUri = ""
    m.loginButtons.translation = "[70, 450]"
    m.loginButtons.itemSpacings = "[20, 0]"
    m.loginButtons.minWidth = "328"
    m.loginButtons.textFont = "font:LargeSystemFont"
    m.loginButtons.focusedTextFont = "font:LargeBoldSystemFont"
    m.loginButtons.setFocus(true)
end function