package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GetConversationSuggests200ResponseSuggestsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetConversationSuggests200ResponseSuggests {
    
    Set<GetConversationSuggests200ResponseSuggestsInner> u = new LinkedHashSet<>()
}
