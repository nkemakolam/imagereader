az storage account show-connection-string \
  --resource-group rs-uni-webs-aks-pd-iogt \
  --name satstdemo \
  --output tsv



az storage share create \
  --name sharetstdemo \
  --connection-string 'DefaultEndpointsProtocol=https;EndpointSuffix=core.windows.net;AccountName=satstdemo;AccountKey=/p4N4WpuEfj7zM4zTLPQZbuNGrA8Qdvw6UXkh0sUse23WWdSp8AvLfzNz0Up4KiUtfcyZB1Y0ydGsXpXMaoNMg==' \
  --account-name satstdemo 

dotnet new webapi -o imagereader
cd imagereader
dotnet add package Microsoft.EntityFrameworkCore.InMemory
code -r ../imagereader