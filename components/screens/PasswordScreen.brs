function init()
    m.passwordKeyboard = m.top.findNode("PasswordKeyboard")
    m.passwordKeyboard.title = "Enter Password"
    m.passwordKeyboard.buttons = ["Finish", "Back"]
    m.passwordKeyboard.setFocus(true)
end function

function onKeyEvent(key as String, press as Boolean) as Boolean
    handled = false
    if press then
        if key = "down" and not m.passwordKeyboard.isInFocusChain() then
            m.passwordKeyboard.keyboard.setFocus(true)
            handled = true
        else
            m.passwordKeyboard.buttonGroup.setFocus(true)
            handled = true
        end if

        if key = "up" and not m.passwordKeyboard.buttonGroup.hasFocus() then
            m.passwordKeyboard.buttonGroup.setFocus(true)
            handled = true
        else
            m.passwordKeyboard.keyboard.setFocus(true)
            handled = true
        end if
    end if
    return handled
end function