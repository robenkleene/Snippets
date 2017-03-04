eval directory_expanded=${directory}
if [ ! -d "$directory_expanded" ]; then
  echo "Error: $directory_expanded is not a directory"
  exit 1
fi
