package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.SearchRestaurants200ResponseRestaurantsInnerAddress;
import com.spoonacular.client.model.SearchRestaurants200ResponseRestaurantsInnerLocalHours;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class SearchRestaurants200ResponseRestaurantsInner {
    
    String id
    
    String name
    
    Integer phoneNumber
    
    SearchRestaurants200ResponseRestaurantsInnerAddress address
    
    String type
    
    String description
    
    SearchRestaurants200ResponseRestaurantsInnerLocalHours localHours
    
    List<String> cuisines = new ArrayList<>()
    
    List<String> foodPhotos = new ArrayList<>()
    
    List<String> logoPhotos = new ArrayList<>()
    
    List<Object> storePhotos = new ArrayList<>()
    
    Integer dollarSigns
    
    Boolean pickupEnabled
    
    Boolean deliveryEnabled
    
    Boolean isOpen
    
    Boolean offersFirstPartyDelivery
    
    Boolean offersThirdPartyDelivery
    
    BigDecimal miles
    
    BigDecimal weightedRatingValue
    
    Integer aggregatedRatingCount
}
