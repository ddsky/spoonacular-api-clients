package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.SearchFoodVideos200ResponseVideosInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class SearchFoodVideos200Response {
    
    Set<SearchFoodVideos200ResponseVideosInner> videos = new LinkedHashSet<>()
    
    Integer totalResults
}
