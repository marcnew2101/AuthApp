function init()
	? "[MainScene] init"
	m.loginScreen = m.top.findNode("LoginScreen")
	m.pairingScreen = m.top.findNode("PairingScreen")
	m.usernameScreen = m.top.findNode("UsernameScreen")
	m.passwordScreen = m.top.findNode("PasswordScreen")

	m.loginButtons = m.top.findNode("LoginButtonGroup")
	m.loginButtons.observeField("buttonSelected", "onLoginButtonSelected")

	m.usernameScreen.observeField("usernameButtonSelected", "onUsernameButtonSelected")
	m.passwordScreen.observeField("passwordButtonSelected", "onPasswordButtonSelected")

	m.usernameScreen.observeField("usernameKeyboardText", "onUsernameKeyboardText")
	m.passwordScreen.observeField("passwordKeyboardText", "onPasswordKeyboardText")

	m.pairingScreen.observeField("pairingCode", "onPairingCode")
	m.pairingScreen.observeField("pairingButtonSelected", "onPairingButtonSelected")
end function

sub onLoginButtonSelected()
	if m.loginButtons.buttonSelected = 0 then
		m.loginScreen.visible = false
		m.usernameScreen.visible = true
		m.usernameScreen.setFocus(true)
	else if m.loginButtons.buttonSelected = 2 then
		m.loginScreen.visible = false
		m.pairingScreen.visible = true
		m.pairingScreen.setFocus(true)
	else if m.loginButtons.buttonSelected = 2 then
		print "Exit button selected"
	end if
end sub

sub onUsernameButtonSelected()
	if m.usernameScreen.usernameButtonSelected = 0 then
		m.usernameScreen.visible = false
		m.passwordScreen.visible = true
		m.passwordScreen.setFocus(true)
	else if m.usernameScreen.usernameButtonSelected = 1 then
		m.usernameScreen.visible = false
		m.loginScreen.visible = true
		m.loginButtons.setFocus(true)
	end if
end sub

sub onPasswordButtonSelected()
	if m.passwordScreen.passwordButtonSelected = 0 then
		m.passwordScreen.visible = false
		print "Finish button selected"
	else if m.passwordScreen.passwordButtonSelected = 1 then
		m.passwordScreen.visible = false
		m.usernameScreen.visible = true
		m.usernameScreen.setFocus(true)
	end if
end sub

sub onUsernameKeyboardText()
	print m.usernameScreen.usernameKeyboardText
end sub

sub onPasswordKeyboardText()
	print m.passwordScreen.passwordKeyboardText
end sub

' Main Remote keypress handler
' function onKeyEvent(key, press) as Boolean
' 	? "[MainScene] onKeyEvent", key, press
'   return false
' end function