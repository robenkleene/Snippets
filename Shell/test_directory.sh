eval DIRECTORY_EXPANDED=${DIRECTORY}
if [ ! -d "$DIRECTORY_EXPANDED" ]; then
	echo "Error: $DIRECTORY_EXPANDED is not a directory"
	exit 1
fi