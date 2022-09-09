package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.GetConversationSuggests200ResponseSuggests;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class GetConversationSuggests200Response {
    
    GetConversationSuggests200ResponseSuggests suggests
    
    List<Object> words = new ArrayList<>()
}
