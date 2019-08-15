build: ./swagger-crowd-client.yaml
	openapi-generator generate \
		-i ./swagger-crowd-client.yaml \
		-g php \
		-o ./ \
		--additional-properties invokerPackage=CrowdClient
	sed -i 's#GIT_USER_ID/GIT_REPO_ID#adesso-mobile/php-crowd-client#' ./composer.json
