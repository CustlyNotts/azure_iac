FROM mcr.microsoft.com/dotnet/samples:aspnetapp

RUN mkdir -p /etc/ssl/private/
COPY ./Cargoes2023.pfx /etc/ssl/private/

# ENV ASPNETCORE_URLS=http://+:80;https://+:443
# ENV ASPNETCORE_HTTPS_PORT=8001
# ENV ASPNETCORE_ENVIRONMENT=QA3

# ENV Kestrel:Certificates:Default:Path=/etc/ssl/private/Cargoes2023.pfx
# ENV Kestrel:Certificates:Default:Password=xxx
# ENV Kestrel:Certificates:Default:AllowInvalid=true
# ENV Kestrel:EndPointDefaults:Protocols=Http1AndHttp2

# docker build -t acrdpwinfra.azurecr.io/http2-demo . --platform linux/amd64
# docker push acrdpwinfra.azurecr.io/http2-demo