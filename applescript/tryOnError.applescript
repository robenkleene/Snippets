try
	-- Success
on error errMsg number errNum
	if errNum is equal to -128 then
		-- User cancelled
	else
		display dialog "AppleScript encountered an error." & Â
			" Error Message: " & errMsg & " Number " & errNum
	end if
end try