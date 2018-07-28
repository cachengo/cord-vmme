export IMAGE_TAG=$(cat VERSION)

docker manifest create --amend cachengo/vmme-synchronizer:$IMAGE_TAG cachengo/vmme-synchronizer-x86_64:$IMAGE_TAG cachengo/vmme-synchronizer-aarch64:$IMAGE_TAG
docker manifest push cachengo/vmme-synchronizer:$IMAGE_TAG
