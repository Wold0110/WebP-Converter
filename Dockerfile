FROM mcr.microsoft.com/powershell

COPY libwebp/ /webp
COPY converter.ps1 /webp/converter.ps1
RUN mkdir /img
WORKDIR /webp
CMD ["pwsh", "/webp/converter.ps1"]