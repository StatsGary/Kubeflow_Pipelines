gcloud init
# Navigate to the relevant directory
cd pipeline/1_dataextraction
ls
PROJECT_ID=$(gcloud config get-value core/project)
CONTAINER_REG_IMAGE_NAME=breast_cancer/1_loadingdata
IMAGE_VERSION=v1
IMAGE_NAME=gcr.io/$PROJECT_ID/$CONTAINER_REG_IMAGE_NAME

# Build the image
sudo docker build -t $IMAGE_NAME:$IMAGE_VERSION .
sudo docker images