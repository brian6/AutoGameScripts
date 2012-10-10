;------------------------------------------------------------------------------------------------------
; Lucky Gem Coin Collector v1.01  (10/06/2011)
; - Brian Niggeman
;------------------------------------------------------------------------------------------------------

runnum := 0
numloops := 1000

loop, { 

	SetTitleMatchMode, 2


	; ------------- settings ----------------------------------------------------------------------
	
	; X and Y offset to line up mouse clicks
	y_offset := 0
	x_offset := 0

	; coins collected
	money := 4000
	
	; time between money collected (seconds)
	count := 7200

	; time delay for first run (seconds)
	firstrun := 3270

	; ---------------------------------------------------------------------------------------------


	runnum++
	moneycount++
	orig_count := count

	if (runnum = 1) {
		count := firstrun
	}

	if (orig_count <> count) {
		moneycount := 0	
	} else {
		Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" http://apps.facebook.com/luckygemcasino/?fb_source=bookmark_apps&ref=bookmarks&count=0&fb_bmpos=4_0
		Sleep, 14000

		WinActivate, Lucky Gem Casino on Facebook - Google Chrome
		Sleep, 100
		
		MouseClick, left,  627 + x_offset,  465 + y_offset
		Sleep, 6000

		MouseClick, left,  627 + x_offset,  465 + y_offset
		Sleep, 6000

		MouseClick, left,  229 + x_offset,  323 + y_offset
		Sleep, 3000

		MouseClick, left,  610 + x_offset,  487 + y_offset
		Sleep, 3000

		WinClose, Lucky Gem Casino on Facebook - Google Chrome
		Sleep, 1000
	}

	startcount := count
	

	totalearned := moneycount * money

	loop, %count% {

		tooltip, %count% (run: %moneycount%) -- $%totalearned%
		Sleep, 1000
		count--

		if (count = 15999) {
			SoundPlay, C:\Users\brian\Desktop\shortring.wav
			MsgBox, 0, "Lucky Gem", "Luck Gem Cash Will Begin in 4 Hours.", 5
		}
		if (count = 7199) {
			SoundPlay, C:\Users\brian\Desktop\shortring.wav
			MsgBox, 0, "Lucky Gem", "Luck Gem Cash Will Begin in 2 Hours.", 5
		}

		if (count = 3600) {
			SoundPlay, C:\Users\brian\Desktop\shortring.wav
			MsgBox, 0, "Lucky Gem", "Luck Gem Cash Will Begin in 60 Minutes.", 5
		}

		if (count = 1800) {
			SoundPlay, C:\Users\brian\Desktop\shortring.wav
			MsgBox, 0, "Lucky Gem", "Luck Gem Cash Will Begin in 30 Minutes.", 5
		}

		if (count = 900) {
			SoundPlay, C:\Users\brian\Desktop\shortring.wav
			MsgBox, 0, "Lucky Gem", "Luck Gem Cash Will Begin in 15 Minutes.", 5
		}

		if (count = 10) {
			SoundPlay, C:\Users\brian\Desktop\ring.wav
			MsgBox, 0, "Lucky Gem", "Luck Gem Cash Will Begin in 10 Seconds.  Keep Hands Off Mouse!!!", 5
		}
	}
}

~+Esc::ExitApp 