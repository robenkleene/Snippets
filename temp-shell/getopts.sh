usage () {
  echo "Usage: command [-a] [-b argument]"
}

OPTIND=1 # Multiple `getopts` calls fail otherwise
while getopts ab:h option; do
  case "$option" in
    a) echo "-a found"
      ;;
    b) echo "-b found with $OPTARG"
      ;;
    h) usage
      exit 0 
      ;;
    \?) echo "Invalid option or missing argument"
      usage
      exit 1
      ;;
  esac
done
