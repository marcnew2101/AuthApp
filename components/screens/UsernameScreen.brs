function init()
    m.top.setFocus(true)
    m.usernameKeyboard = m.top.findNode("UsernameKeyboard")
    m.usernameKeyboard.title = "Enter Email Address"
    m.usernameKeyboard.buttons = ["Next", "Back"]
    'm.usernameKeyboard.keyboard.setFocus(true)
end function

function onKeyEvent(key as String, press as Boolean) as Boolean
    handled = false
    if press then
        if key = "down" and not m.usernameKeyboard.isInFocusChain() then
            m.usernameKeyboard.keyboard.setFocus(true)
            handled = true
        else
            m.usernameKeyboard.buttonGroup.setFocus(true)
            handled = true
        end if

        if key = "up" and not m.usernameKeyboard.buttonGroup.hasFocus() then
            m.usernameKeyboard.buttonGroup.setFocus(true)
            handled = true
        else
            m.usernameKeyboard.keyboard.setFocus(true)
            handled = true
        end if
    end if
    return handled
end function