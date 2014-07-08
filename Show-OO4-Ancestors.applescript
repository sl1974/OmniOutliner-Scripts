-- Show-OO4-Ancestors.scpt
--
-- 2014-07-07 first draft
--
-- Sven Luetkemeier, sven@luetkemeier.net

tell application id "com.omnigroup.omnioutliner4"
	tell front document
		set selected_row to (get item 1 of selected rows)
		set ancestors_list to ancestors of selected_row
		set ancestors_text to ""
		repeat with i in ancestors_list
			set ancestors_text to name of i & " Ð " & ancestors_text
		end repeat
		display alert "You are here:
" & ancestors_text & name of selected_row
	end tell
end tell