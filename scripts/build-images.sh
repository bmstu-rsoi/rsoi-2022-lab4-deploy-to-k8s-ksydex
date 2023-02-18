version=1.0

# shellcheck disable=SC2164
cd ./src

docker buildx build --push -t ksydex/gateway-service:$version --platform=linux/amd64 -f ./Gateway/Dockerfile .
docker buildx build --push -t ksydex/loyalty-service:$version --platform=linux/amd64 -f ./LoyaltyService/Dockerfile .
docker buildx build --push -t ksydex/payment-service:$version --platform=linux/amd64 -f ./PaymentService/Dockerfile .
docker buildx build --push -t ksydex/reservation-service:$version  --platform=linux/amd64 -f ./ReservationService/Dockerfile .
