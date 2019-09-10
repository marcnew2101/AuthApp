function init()
	? "[MainScene] init"
	m.loginScreen = m.top.findNode("LoginScreen")
	'm.usernameScreen = m.top.findNode("UsernameScene")

	m.loginScreen.observeField("loginButtonSelected", "onLoginButtonSelected")
	m.loginScreen.setFocus(true)
end function

' Main Remote keypress handler
function onKeyEvent(key, press) as Boolean
	? "[MainScene] onKeyEvent", key, press
  return false
end function

sub onLoginButtonSelected()
	if m.loginScreen.loginButtonSelected = 0 then
		print "Login button selected"
	else if m.loginScreen.loginButtonSelected = 1 then
		print "Exit button selected"
	end if
end sub