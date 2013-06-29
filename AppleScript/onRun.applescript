on run {input}
	tell application "Web Console"
		return load HTML input
	end tell
end run