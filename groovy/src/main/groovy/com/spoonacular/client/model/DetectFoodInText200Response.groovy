package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.DetectFoodInText200ResponseAnnotationsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class DetectFoodInText200Response {
    
    Set<DetectFoodInText200ResponseAnnotationsInner> annotations = new LinkedHashSet<>()
}
