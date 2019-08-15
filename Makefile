build: ./swagger-crowd-client.yaml
	openapi-generator generate \
		-i ./swagger-crowd-client.yaml \
		-g php \
		-o ./ \
		--additional-properties invokerPackage=CrowdClient \
		--additional-properties packageName=php-crowd-client \
		--git-user-id=adesso-mobile \
		--git-repo-id=php-crowd-client
