# OpenapiClient::InlineObject11

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **String** | The username. | 
**start_date** | **String** | The start date in the format yyyy-mm-dd. | 
**end_date** | **String** | The end date in the format yyyy-mm-dd. | 
**hash** | **String** | The private hash for the username. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::InlineObject11.new(username: dsky,
                                 start_date: 2020-06-01,
                                 end_date: 2020-06-07,
                                 hash: 4b5v4398573406)
```


