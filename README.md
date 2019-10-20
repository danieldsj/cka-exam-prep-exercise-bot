# CKA Exam Preparation Exercise Bot
## Overview
Grabs a random exercise from a list of CKA exam preperation exercises.
* Github: https://github.com/danieldsj/cka-exam-prep-exercise-bot
* Dockerhub: https://hub.docker.com/r/danieldsj/cka-exam-prep-exercise-bot

## Instructions
1. Ensure you have docker installed.
2. Run build.sh
3. Ensure you are authenticate against your desired docker registry.
4. Run publish.sh
5. Edit configmap.yaml to include the desired Slack webhook value.
6. Ensure you are using your desired kubectl context.
7. Run deploy.sh


## Special Thanks
Special thanks to Dimitris-Ilias Gkanatsios for https://github.com/dgkanatsios/CKAD-exercises
