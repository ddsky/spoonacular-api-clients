package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GetRecipeEquipmentByID200ResponseEquipmentInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetRecipeEquipmentByID200Response {
    
    Set<GetRecipeEquipmentByID200ResponseEquipmentInner> equipment = new LinkedHashSet<>()
}
