sudo gcloud init
#sudo gcloud auth login
sudo gcloud auth configure-docker
# Navigate to the relevant directory
cd pipeline/1_dataextraction
ls
#PROJECT_ID=$(gcloud config get-value core/project)
PROJECT_ID=crisp-gpu-training
CONTAINER_REG_IMAGE_NAME=breast_cancer/1_loadingdata
IMAGE_VERSION=v1
IMAGE_NAME=gcr.io/$PROJECT_ID/$CONTAINER_REG_IMAGE_NAME

# Build the image
sudo docker build -t $IMAGE_NAME:$IMAGE_VERSION .
echo '[INFO] listing the container images'
echo '======================================================'
sudo docker images

# Push the docker image to the container registry 
sudo docker push $IMAGE_NAME:$IMAGE_VERSION
