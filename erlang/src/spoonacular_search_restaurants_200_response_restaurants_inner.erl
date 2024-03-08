-module(spoonacular_search_restaurants_200_response_restaurants_inner).

-export([encode/1]).

-export_type([spoonacular_search_restaurants_200_response_restaurants_inner/0]).

-type spoonacular_search_restaurants_200_response_restaurants_inner() ::
    #{ '_id' => binary(),
       'name' => binary(),
       'phone_number' => integer(),
       'address' => spoonacular_search_restaurants_200_response_restaurants_inner_address:spoonacular_search_restaurants_200_response_restaurants_inner_address(),
       'type' => binary(),
       'description' => binary(),
       'local_hours' => spoonacular_search_restaurants_200_response_restaurants_inner_local_hours:spoonacular_search_restaurants_200_response_restaurants_inner_local_hours(),
       'cuisines' => list(),
       'food_photos' => list(),
       'logo_photos' => list(),
       'store_photos' => list(),
       'dollar_signs' => integer(),
       'pickup_enabled' => boolean(),
       'delivery_enabled' => boolean(),
       'is_open' => boolean(),
       'offers_first_party_delivery' => boolean(),
       'offers_third_party_delivery' => boolean(),
       'miles' => integer(),
       'weighted_rating_value' => integer(),
       'aggregated_rating_count' => integer()
     }.

encode(#{ '_id' := Id,
          'name' := Name,
          'phone_number' := PhoneNumber,
          'address' := Address,
          'type' := Type,
          'description' := Description,
          'local_hours' := LocalHours,
          'cuisines' := Cuisines,
          'food_photos' := FoodPhotos,
          'logo_photos' := LogoPhotos,
          'store_photos' := StorePhotos,
          'dollar_signs' := DollarSigns,
          'pickup_enabled' := PickupEnabled,
          'delivery_enabled' := DeliveryEnabled,
          'is_open' := IsOpen,
          'offers_first_party_delivery' := OffersFirstPartyDelivery,
          'offers_third_party_delivery' := OffersThirdPartyDelivery,
          'miles' := Miles,
          'weighted_rating_value' := WeightedRatingValue,
          'aggregated_rating_count' := AggregatedRatingCount
        }) ->
    #{ '_id' => Id,
       'name' => Name,
       'phone_number' => PhoneNumber,
       'address' => Address,
       'type' => Type,
       'description' => Description,
       'local_hours' => LocalHours,
       'cuisines' => Cuisines,
       'food_photos' => FoodPhotos,
       'logo_photos' => LogoPhotos,
       'store_photos' => StorePhotos,
       'dollar_signs' => DollarSigns,
       'pickup_enabled' => PickupEnabled,
       'delivery_enabled' => DeliveryEnabled,
       'is_open' => IsOpen,
       'offers_first_party_delivery' => OffersFirstPartyDelivery,
       'offers_third_party_delivery' => OffersThirdPartyDelivery,
       'miles' => Miles,
       'weighted_rating_value' => WeightedRatingValue,
       'aggregated_rating_count' => AggregatedRatingCount
     }.
