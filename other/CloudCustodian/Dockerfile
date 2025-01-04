FROM mcr.microsoft.com/azure-cli:latest

RUN adduser -D custodian

RUN python3 -m venv custodian \
    && source custodian/bin/activate \
    && pip install c7n c7n_azure c7n-org click

COPY azuresubs.py custodian/

RUN chown custodian:custodian custodian/

USER custodian