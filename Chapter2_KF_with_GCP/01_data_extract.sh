gcloud init
# Navigate to the relevant directory
cd pipeline/1_dataextraction
ls
PROJECT_ID=$(gcloud config get-value core/project)
CONTAINER_REG_IMAGE_NAME=