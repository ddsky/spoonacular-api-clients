package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures;

@Canonical
class GetRecipeInformation200ResponseExtendedIngredientsInner {
    
    String aisle
    
    BigDecimal amount
    
    String consitency
    
    Integer id
    
    String image
    
    GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures measures
    
    List<String> meta
    
    String name
    
    String original
    
    String originalName
    
    String unit
}
