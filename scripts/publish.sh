dotnet restore HotelsBooking.sln

dotnet publish src/Gateway/Gateway.csproj -c Release -o publish/Gateway --no-restore
dotnet publish src/LoyaltyService/LoyaltyService.csproj -c Release -o publish/LoyaltyService --no-restore
dotnet publish src/PaymentService/PaymentService.csproj -c Release -o publish/PaymentService --no-restore
dotnet publish src/ReservationService/ReservationService.csproj -c Release -o publish/ReservationService --no-restore
