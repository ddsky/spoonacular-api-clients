package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.AutocompleteProductSearch200ResponseResultsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class AutocompleteProductSearch200Response {
    
    Set<AutocompleteProductSearch200ResponseResultsInner> results = new LinkedHashSet<>()
}
