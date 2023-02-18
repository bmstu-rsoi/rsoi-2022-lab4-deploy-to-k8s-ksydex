version=1.0

# shellcheck disable=SC2164

docker buildx build --push -t ksydex/gateway-service:$version --platform=linux/amd64 -f ./src/Gateway/Dockerfile .
docker buildx build --push -t ksydex/loyalty-service:$version --platform=linux/amd64 -f ./src/LoyaltyService/Dockerfile .
docker buildx build --push -t ksydex/payment-service:$version --platform=linux/amd64 -f ./src/PaymentService/Dockerfile .
docker buildx build --push -t ksydex/reservation-service:$version  --platform=linux/amd64 -f ./src/ReservationService/Dockerfile .
