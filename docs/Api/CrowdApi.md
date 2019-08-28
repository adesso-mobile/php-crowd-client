# CrowdClient\CrowdApi

All URIs are relative to *http://localhost/crowd/rest/usermanagement/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUserAsDirectGroupMember**](CrowdApi.md#addUserAsDirectGroupMember) | **POST** /group/user/direct | Adds user as direct member of group
[**authentication**](CrowdApi.md#authentication) | **POST** /authentication | Authenticates a user. Does not generate an SSO token. For SSO please take a look at the SSO token resource.
[**createGroup**](CrowdApi.md#createGroup) | **POST** /group | Adds a new group.
[**createUser**](CrowdApi.md#createUser) | **POST** /user | Creates a new user
[**deleteGroup**](CrowdApi.md#deleteGroup) | **DELETE** /group | Deletes a group
[**deleteUser**](CrowdApi.md#deleteUser) | **DELETE** /user | Removes a user.
[**getGroup**](CrowdApi.md#getGroup) | **GET** /group | Retrieves a group
[**getNestedGroupsOfUser**](CrowdApi.md#getNestedGroupsOfUser) | **GET** /user/group/nested | Retrieves the groups that the user is a nested member of
[**getNestedUsersOfGroup**](CrowdApi.md#getNestedUsersOfGroup) | **GET** /group/user/nested | Retrieves the users that are nested members of the specified group
[**getUser**](CrowdApi.md#getUser) | **GET** /user | Retrieves the user details. Either username or key query parameter must be present.
[**removeDirectGroupMembership**](CrowdApi.md#removeDirectGroupMembership) | **DELETE** /group/user/direct | Removes the user membership.
[**search**](CrowdApi.md#search) | **GET** /search | searches for a specific entity-type
[**setUsersAttributes**](CrowdApi.md#setUsersAttributes) | **POST** /user/attribute | Stores the user attributes. Attribute values will not be overwritten if not specified in attributes.
[**updateGroup**](CrowdApi.md#updateGroup) | **PUT** /group | Updates an existing group
[**updateUser**](CrowdApi.md#updateUser) | **PUT** /user | Updates a user



## addUserAsDirectGroupMember

> addUserAsDirectGroupMember($groupname, $user)

Adds user as direct member of group

### Example

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

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupname** | **string**| The groupname of the group you want to add the user to |
 **user** | [**\CrowdClient\Model\CwdUser**](../Model/CwdUser.md)| A User object of the user you want to add. Only &#39;name&#39; must be set. | [optional]

### Return type

void (empty response body)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## authentication

> authentication($username, $password)

Authenticates a user. Does not generate an SSO token. For SSO please take a look at the SSO token resource.

### Example

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
$username = 'username_example'; // string | name of the user
$password = new \CrowdClient\Model\CwdPassword(); // \CrowdClient\Model\CwdPassword | 

try {
    $apiInstance->authentication($username, $password);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->authentication: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| name of the user |
 **password** | [**\CrowdClient\Model\CwdPassword**](../Model/CwdPassword.md)|  | [optional]

### Return type

void (empty response body)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## createGroup

> createGroup($group)

Adds a new group.

### Example

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
$group = new \CrowdClient\Model\CwdGroup(); // \CrowdClient\Model\CwdGroup | The group you want to create

try {
    $apiInstance->createGroup($group);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->createGroup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | [**\CrowdClient\Model\CwdGroup**](../Model/CwdGroup.md)| The group you want to create | [optional]

### Return type

void (empty response body)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## createUser

> \CrowdClient\Model\CwdUser createUser($user)

Creates a new user

### Example

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
$user = new \CrowdClient\Model\CwdUser(); // \CrowdClient\Model\CwdUser | The user you want to create

try {
    $result = $apiInstance->createUser($user);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->createUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**\CrowdClient\Model\CwdUser**](../Model/CwdUser.md)| The user you want to create | [optional]

### Return type

[**\CrowdClient\Model\CwdUser**](../Model/CwdUser.md)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## deleteGroup

> deleteGroup($groupname)

Deletes a group

### Example

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
$groupname = 'groupname_example'; // string | Name of the group to delete.

try {
    $apiInstance->deleteGroup($groupname);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->deleteGroup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupname** | **string**| Name of the group to delete. |

### Return type

void (empty response body)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## deleteUser

> deleteUser($username)

Removes a user.

### Example

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
$username = 'username_example'; // string | name of the user to delete

try {
    $apiInstance->deleteUser($username);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->deleteUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| name of the user to delete | [optional]

### Return type

void (empty response body)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getGroup

> \CrowdClient\Model\CwdGroup getGroup($groupname, $expand)

Retrieves a group

### Example

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
$groupname = 'groupname_example'; // string | Name of the group to retrieve.
$expand = 'attributes'; // string | 

try {
    $result = $apiInstance->getGroup($groupname, $expand);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->getGroup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupname** | **string**| Name of the group to retrieve. |
 **expand** | **string**|  | [optional] [default to &#39;attributes&#39;]

### Return type

[**\CrowdClient\Model\CwdGroup**](../Model/CwdGroup.md)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getNestedGroupsOfUser

> \CrowdClient\Model\CwdGroupList getNestedGroupsOfUser($username)

Retrieves the groups that the user is a nested member of

### Example

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
$username = 'username_example'; // string | The user you want to receive the groups of

try {
    $result = $apiInstance->getNestedGroupsOfUser($username);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->getNestedGroupsOfUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The user you want to receive the groups of |

### Return type

[**\CrowdClient\Model\CwdGroupList**](../Model/CwdGroupList.md)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getNestedUsersOfGroup

> \CrowdClient\Model\CwdUserList getNestedUsersOfGroup($groupname)

Retrieves the users that are nested members of the specified group

### Example

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
$groupname = 'groupname_example'; // string | The group you want to receive the nested members of

try {
    $result = $apiInstance->getNestedUsersOfGroup($groupname);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->getNestedUsersOfGroup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupname** | **string**| The group you want to receive the nested members of |

### Return type

[**\CrowdClient\Model\CwdUserList**](../Model/CwdUserList.md)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## getUser

> \CrowdClient\Model\CwdUser getUser($username, $key, $expand)

Retrieves the user details. Either username or key query parameter must be present.

### Example

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
$username = 'username_example'; // string | name of the user
$key = 'key_example'; // string | the key of the user (only observed if userName is null).
$expand = 'attributes'; // string | 

try {
    $result = $apiInstance->getUser($username, $key, $expand);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->getUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| name of the user | [optional]
 **key** | **string**| the key of the user (only observed if userName is null). | [optional]
 **expand** | **string**|  | [optional] [default to &#39;attributes&#39;]

### Return type

[**\CrowdClient\Model\CwdUser**](../Model/CwdUser.md)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## removeDirectGroupMembership

> removeDirectGroupMembership($groupname, $username)

Removes the user membership.

### Example

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
$groupname = 'groupname_example'; // string | Name of the group from which the user membership will be removed.
$username = 'username_example'; // string | Name the user to have their membershit removed.

try {
    $apiInstance->removeDirectGroupMembership($groupname, $username);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->removeDirectGroupMembership: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupname** | **string**| Name of the group from which the user membership will be removed. |
 **username** | **string**| Name the user to have their membershit removed. |

### Return type

void (empty response body)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## search

> \CrowdClient\Model\CwdSearchResponse search($entity_type, $restriction)

searches for a specific entity-type

### Example

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
$entity_type = 'entity_type_example'; // string | The entity-type you want to search for
$restriction = 'restriction_example'; // string | restriction entities must satisfy in the Crowd Query Language

try {
    $result = $apiInstance->search($entity_type, $restriction);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->search: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type** | **string**| The entity-type you want to search for |
 **restriction** | **string**| restriction entities must satisfy in the Crowd Query Language | [optional]

### Return type

[**\CrowdClient\Model\CwdSearchResponse**](../Model/CwdSearchResponse.md)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## setUsersAttributes

> setUsersAttributes($username, $attributes)

Stores the user attributes. Attribute values will not be overwritten if not specified in attributes.

### Example

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
$username = 'username_example'; // string | name of the user
$attributes = new \CrowdClient\Model\CwdAttributes(); // \CrowdClient\Model\CwdAttributes | 

try {
    $apiInstance->setUsersAttributes($username, $attributes);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->setUsersAttributes: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| name of the user | [optional]
 **attributes** | [**\CrowdClient\Model\CwdAttributes**](../Model/CwdAttributes.md)|  | [optional]

### Return type

void (empty response body)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## updateGroup

> \CrowdClient\Model\CwdGroup updateGroup($groupname, $group)

Updates an existing group

### Example

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
$groupname = 'groupname_example'; // string | the name of the group to update.
$group = new \CrowdClient\Model\CwdGroup(); // \CrowdClient\Model\CwdGroup | 

try {
    $result = $apiInstance->updateGroup($groupname, $group);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->updateGroup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupname** | **string**| the name of the group to update. |
 **group** | [**\CrowdClient\Model\CwdGroup**](../Model/CwdGroup.md)|  | [optional]

### Return type

[**\CrowdClient\Model\CwdGroup**](../Model/CwdGroup.md)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## updateUser

> updateUser($username, $user)

Updates a user

### Example

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
$username = 'username_example'; // string | name of the user to update
$user = new \CrowdClient\Model\CwdUser(); // \CrowdClient\Model\CwdUser | The user you want to update

try {
    $apiInstance->updateUser($username, $user);
} catch (Exception $e) {
    echo 'Exception when calling CrowdApi->updateUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| name of the user to update | [optional]
 **user** | [**\CrowdClient\Model\CwdUser**](../Model/CwdUser.md)| The user you want to update | [optional]

### Return type

void (empty response body)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

