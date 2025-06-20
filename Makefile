include variables.mk

build-sdk:
	mkdir -p $(SDK_BUILD_DIR)
	devbox run oapi-codegen -generate client -package sdk -o $(SDK_BUILD_DIR)/$(OAPI_SDK_NAME) $(OAPI_SPEC_NAME)

build-server:
	mkdir -p $(API_BUILD_DIR)
	devbox run oapi-codegen -generate chi-server -package api -o $(API_BUILD_DIR)/$(OAPI_API_NAME) $(OAPI_SPEC_NAME)

build: build-sdk build-server