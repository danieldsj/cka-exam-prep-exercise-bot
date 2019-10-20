# Ensure we specify a webhook url.
[[ -z "${WEBHOOK_URL}" ]] && { echo "Environment variable WEBHOOK_URL not set"; exit 1; }

# Grab a random challenge.
EXERCISE="$(shuf -n 1 exercises.txt)"

# Do the post.
curl -X POST -H 'Content-type: application/json' --data "{\"text\": \"${EXERCISE}\"}" $WEBHOOK_URL
