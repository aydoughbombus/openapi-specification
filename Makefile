include variables.mk

build-sdk:
	mkdir -p $(SDK_GENERATED_DIR)
	devbox run oapi-codegen -generate client -package sdk -o $(SDK_GENERATED_DIR)/$(OAPI_SDK_NAME) $(OAPI_SPEC_NAME)

build-api:
	mkdir -p $(API_GENERATED_DIR)
	devbox run oapi-codegen -generate chi-server -package api -o $(API_GENERATED_DIR)/$(OAPI_API_NAME) $(OAPI_SPEC_NAME)

build: build-sdk build-api