# php-crowd-client

This is the crowd usermanagement rest resources endpoint documentation

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 3.5.0
- Build package: org.openapitools.codegen.languages.PhpClientCodegen

## Requirements

PHP 5.5 and later

## Installation & Usage

### Composer

To install the bindings via [Composer](http://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/adesso-mobile/php-crowd-client.git"
    }
  ],
  "require": {
    "adesso-mobile/php-crowd-client": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
    require_once('/path/to/php-crowd-client/vendor/autoload.php');
```

## Tests

To run the unit tests:

```bash
composer install
./vendor/bin/phpunit
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure HTTP basic authorization: crowdAuth
$config = CrowdClient\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new CrowdClient\Api\CrowdApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$groupname = 'groupname_example'; // string | The groupname of the group you want to add the user to
$user = new \CrowdClient\Model\CwdUser(); // \CrowdClient\Model\CwdUser | A User object of the user you want to add. Only 'name' must be set.

try {
    $apiInstance->addUserAsDirectGroupMember($groupname, $user);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->addUserAsDirectGroupMember: ', $e->getMessage(), PHP_EOL;
}

?>
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost/crowd/rest/usermanagement/1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CrowdApi* | [**addUserAsDirectGroupMember**](docs/Api/CrowdApi.md#adduserasdirectgroupmember) | **POST** /group/user/direct | Adds user as direct member of group
*CrowdApi* | [**authentication**](docs/Api/CrowdApi.md#authentication) | **POST** /authentication | Authenticates a user. Does not generate an SSO token. For SSO please take a look at the SSO token resource.
*CrowdApi* | [**createGroup**](docs/Api/CrowdApi.md#creategroup) | **POST** /group | Adds a new group.
*CrowdApi* | [**createUser**](docs/Api/CrowdApi.md#createuser) | **POST** /user | Creates a new user
*CrowdApi* | [**deleteGroup**](docs/Api/CrowdApi.md#deletegroup) | **DELETE** /group | Deletes a group
*CrowdApi* | [**deleteUser**](docs/Api/CrowdApi.md#deleteuser) | **DELETE** /user | Removes a user.
*CrowdApi* | [**getGroup**](docs/Api/CrowdApi.md#getgroup) | **GET** /group | Retrieves a group
*CrowdApi* | [**getNestedGroupsOfUser**](docs/Api/CrowdApi.md#getnestedgroupsofuser) | **GET** /user/group/nested | Retrieves the groups that the user is a nested member of
*CrowdApi* | [**getNestedUsersOfGroup**](docs/Api/CrowdApi.md#getnestedusersofgroup) | **GET** /group/user/nested | Retrieves the users that are nested members of the specified group
*CrowdApi* | [**getUser**](docs/Api/CrowdApi.md#getuser) | **GET** /user | Retrieves the user details. Either username or key query parameter must be present.
*CrowdApi* | [**removeDirectGroupMembership**](docs/Api/CrowdApi.md#removedirectgroupmembership) | **DELETE** /group/user/direct | Removes the user membership.
*CrowdApi* | [**renameUser**](docs/Api/CrowdApi.md#renameuser) | **POST** /user/rename | Renames a user
*CrowdApi* | [**search**](docs/Api/CrowdApi.md#search) | **GET** /search | searches for a specific entity-type
*CrowdApi* | [**setUsersAttributes**](docs/Api/CrowdApi.md#setusersattributes) | **POST** /user/attribute | Stores the user attributes. Attribute values will not be overwritten if not specified in attributes.
*CrowdApi* | [**updateGroup**](docs/Api/CrowdApi.md#updategroup) | **PUT** /group | Updates an existing group
*CrowdApi* | [**updateUser**](docs/Api/CrowdApi.md#updateuser) | **PUT** /user | Updates a user


## Documentation For Models

 - [CwdAttributes](docs/Model/CwdAttributes.md)
 - [CwdAttributesAttributes](docs/Model/CwdAttributesAttributes.md)
 - [CwdGroup](docs/Model/CwdGroup.md)
 - [CwdGroupList](docs/Model/CwdGroupList.md)
 - [CwdLink](docs/Model/CwdLink.md)
 - [CwdPassword](docs/Model/CwdPassword.md)
 - [CwdSearchResponse](docs/Model/CwdSearchResponse.md)
 - [CwdUser](docs/Model/CwdUser.md)
 - [CwdUserList](docs/Model/CwdUserList.md)
 - [CwdUserRename](docs/Model/CwdUserRename.md)


## Documentation For Authorization



## crowdAuth


- **Type**: HTTP basic authentication


## Author



