# Grab a random challenge.
EXERCISE="$(shuf -n 1 exercises.txt)"

# Check if WEBHOOK_URL is present.
if [ -z "${WEBHOOK_URL}"]
then
	# If no environment varibale, send error to stderr.
	echo "No WEBHOOK_URL detected, did not perform POST." >> /dev/stderr
else
	# Otherwise, do POST.
	curl -X POST -H 'Content-type: application/json' --data "{\"text\": \"${EXERCISE}\"}" $WEBHOOK_URL
fi

# Output to exercise to stdout.
echo "${EXERCISE}"
