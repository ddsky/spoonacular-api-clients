package com.spoonacular.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ConnectUserRequest {
    
    String username
    
    String firstName
    
    String lastName
    
    String email
}
