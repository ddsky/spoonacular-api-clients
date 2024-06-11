(ns spoonacular-api.api.meal-planning
  (:require [spoonacular-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [spoonacular-api.specs.get-product-information-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.get-recipe-information-200-response :refer :all]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-local-hours :refer :all]
            [spoonacular-api.specs.get-recipe-ingredients-by-id-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.add-to-shopping-list-request :refer :all]
            [spoonacular-api.specs.get-recipe-nutrition-widget-by-id-200-response-good-inner :refer :all]
            [spoonacular-api.specs.get-recipe-nutrition-widget-by-id-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner :refer :all]
            [spoonacular-api.specs.talk-to-chatbot-200-response :refer :all]
            [spoonacular-api.specs.add-to-meal-plan-request-value-ingredients-inner :refer :all]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-address :refer :all]
            [spoonacular-api.specs.connect-user-200-response :refer :all]
            [spoonacular-api.specs.search-recipes-200-response-results-inner :refer :all]
            [spoonacular-api.specs.get-wine-description-200-response :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-items-inner-value :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-estimated-cost :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response :refer :all]
            [spoonacular-api.specs.get-a-random-food-joke-200-response :refer :all]
            [spoonacular-api.specs.guess-nutrition-by-dish-name-200-response :refer :all]
            [spoonacular-api.specs.convert-amounts-200-response :refer :all]
            [spoonacular-api.specs.generate-meal-plan-200-response :refer :all]
            [spoonacular-api.specs.search-restaurants-200-response :refer :all]
            [spoonacular-api.specs.analyze-a-recipe-search-query-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.get-recipe-information-200-response-wine-pairing :refer :all]
            [spoonacular-api.specs.get-similar-recipes-200-response-inner :refer :all]
            [spoonacular-api.specs.get-comparable-products-200-response-comparable-products-protein-inner :refer :all]
            [spoonacular-api.specs.search-site-content-200-response :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition :refer :all]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-parsed-instructions-inner-steps-inner :refer :all]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.search-recipes-200-response :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner :refer :all]
            [spoonacular-api.specs.generate-shopping-list-200-response :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-recipes-inner :refer :all]
            [spoonacular-api.specs.search-recipes-by-ingredients-200-response-inner :refer :all]
            [spoonacular-api.specs.get-shopping-list-200-response :refer :all]
            [spoonacular-api.specs.search-food-videos-200-response :refer :all]
            [spoonacular-api.specs.get-ingredient-substitutes-200-response :refer :all]
            [spoonacular-api.specs.get-meal-plan-template-200-response-days-inner :refer :all]
            [spoonacular-api.specs.map-ingredients-to-grocery-products-request :refer :all]
            [spoonacular-api.specs.search-all-food-200-response-search-results-inner :refer :all]
            [spoonacular-api.specs.search-all-food-200-response-search-results-inner-results-inner :refer :all]
            [spoonacular-api.specs.search-menu-items-200-response-menu-items-inner :refer :all]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner :refer :all]
            [spoonacular-api.specs.compute-ingredient-amount-200-response :refer :all]
            [spoonacular-api.specs.get-conversation-suggests-200-response-suggests-inner :refer :all]
            [spoonacular-api.specs.search-custom-foods-200-response-custom-foods-inner :refer :all]
            [spoonacular-api.specs.add-meal-plan-template-200-response-items-inner :refer :all]
            [spoonacular-api.specs.guess-nutrition-by-dish-name-200-response-calories :refer :all]
            [spoonacular-api.specs.map-ingredients-to-grocery-products-200-response-inner-products-inner :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response :refer :all]
            [spoonacular-api.specs.analyze-recipe-request :refer :all]
            [spoonacular-api.specs.get-recipe-nutrition-widget-by-id-200-response-bad-inner :refer :all]
            [spoonacular-api.specs.search-grocery-products-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-information-200-response-extended-ingredients-inner :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner :refer :all]
            [spoonacular-api.specs.get-conversation-suggests-200-response :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response :refer :all]
            [spoonacular-api.specs.search-recipes-by-nutrients-200-response-inner :refer :all]
            [spoonacular-api.specs.add-to-meal-plan-request :refer :all]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner :refer :all]
            [spoonacular-api.specs.compute-glycemic-load-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner :refer :all]
            [spoonacular-api.specs.add-meal-plan-template-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-information-200-response-extended-ingredients-inner-measures :refer :all]
            [spoonacular-api.specs.autocomplete-menu-item-search-200-response :refer :all]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-local-hours-operational :refer :all]
            [spoonacular-api.specs.get-product-information-200-response :refer :all]
            [spoonacular-api.specs.search-site-content-200-response-articles-inner-data-points-inner :refer :all]
            [spoonacular-api.specs.get-recipe-information-200-response-wine-pairing-product-matches-inner :refer :all]
            [spoonacular-api.specs.get-conversation-suggests-200-response-suggests :refer :all]
            [spoonacular-api.specs.classify-cuisine-200-response :refer :all]
            [spoonacular-api.specs.search-recipes-by-ingredients-200-response-inner-missed-ingredients-inner :refer :all]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner :refer :all]
            [spoonacular-api.specs.add-to-meal-plan-request-value :refer :all]
            [spoonacular-api.specs.quick-answer-200-response :refer :all]
            [spoonacular-api.specs.analyze-a-recipe-search-query-200-response :refer :all]
            [spoonacular-api.specs.get-wine-pairing-200-response :refer :all]
            [spoonacular-api.specs.search-custom-foods-200-response :refer :all]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner-measures :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-nutrients-inner :refer :all]
            [spoonacular-api.specs.generate-meal-plan-200-response-nutrients :refer :all]
            [spoonacular-api.specs.get-recipe-information-bulk-200-response-inner :refer :all]
            [spoonacular-api.specs.get-wine-pairing-200-response-product-matches-inner :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-properties-inner :refer :all]
            [spoonacular-api.specs.search-menu-items-200-response :refer :all]
            [spoonacular-api.specs.detect-food-in-text-200-response-annotations-inner :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-weight-per-serving :refer :all]
            [spoonacular-api.specs.get-random-recipes-200-response :refer :all]
            [spoonacular-api.specs.classify-grocery-product-bulk-request-inner :refer :all]
            [spoonacular-api.specs.get-wine-recommendation-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-equipment-by-id-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-information-200-response-extended-ingredients-inner-measures-metric :refer :all]
            [spoonacular-api.specs.get-ingredient-information-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-taste-by-id-200-response :refer :all]
            [spoonacular-api.specs.compute-glycemic-load-200-response :refer :all]
            [spoonacular-api.specs.image-classification-by-url-200-response :refer :all]
            [spoonacular-api.specs.create-recipe-card-200-response :refer :all]
            [spoonacular-api.specs.guess-nutrition-by-dish-name-200-response-calories-confidence-range95-percent :refer :all]
            [spoonacular-api.specs.get-ingredient-information-200-response-nutrition :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.add-meal-plan-template-200-response-items-inner-value :refer :all]
            [spoonacular-api.specs.detect-food-in-text-200-response :refer :all]
            [spoonacular-api.specs.summarize-recipe-200-response :refer :all]
            [spoonacular-api.specs.search-site-content-200-response-articles-inner :refer :all]
            [spoonacular-api.specs.autocomplete-recipe-search-200-response-inner :refer :all]
            [spoonacular-api.specs.get-random-food-trivia-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-equipment-by-id-200-response-equipment-inner :refer :all]
            [spoonacular-api.specs.classify-grocery-product-bulk-200-response-inner :refer :all]
            [spoonacular-api.specs.analyze-a-recipe-search-query-200-response-dishes-inner :refer :all]
            [spoonacular-api.specs.map-ingredients-to-grocery-products-200-response-inner :refer :all]
            [spoonacular-api.specs.get-meal-plan-template-200-response-days-inner-items-inner-value :refer :all]
            [spoonacular-api.specs.get-wine-recommendation-200-response-recommended-wines-inner :refer :all]
            [spoonacular-api.specs.ingredient-search-200-response-results-inner :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-caloric-breakdown :refer :all]
            [spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-metric :refer :all]
            [spoonacular-api.specs.connect-user-request :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-nutrition-calories-confidence-range95-percent :refer :all]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner :refer :all]
            [spoonacular-api.specs.talk-to-chatbot-200-response-media-inner :refer :all]
            [spoonacular-api.specs.get-comparable-products-200-response-comparable-products :refer :all]
            [spoonacular-api.specs.autocomplete-product-search-200-response :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-nutrition-summary-nutrients-inner :refer :all]
            [spoonacular-api.specs.get-random-recipes-200-response-recipes-inner :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner :refer :all]
            [spoonacular-api.specs.autocomplete-product-search-200-response-results-inner :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-items-inner :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-servings :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-nutrition :refer :all]
            [spoonacular-api.specs.get-meal-plan-templates-200-response :refer :all]
            [spoonacular-api.specs.get-meal-plan-template-200-response :refer :all]
            [spoonacular-api.specs.compute-glycemic-load-request :refer :all]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-parsed-instructions-inner :refer :all]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-nutrition-calories :refer :all]
            [spoonacular-api.specs.ingredient-search-200-response :refer :all]
            [spoonacular-api.specs.search-all-food-200-response :refer :all]
            [spoonacular-api.specs.autocomplete-ingredient-search-200-response-inner :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-category :refer :all]
            [spoonacular-api.specs.classify-grocery-product-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount :refer :all]
            [spoonacular-api.specs.get-comparable-products-200-response :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-nutrition-summary :refer :all]
            [spoonacular-api.specs.get-meal-plan-template-200-response-days-inner-items-inner :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response :refer :all]
            [spoonacular-api.specs.search-food-videos-200-response-videos-inner :refer :all]
            [spoonacular-api.specs.get-recipe-ingredients-by-id-200-response :refer :all]
            [spoonacular-api.specs.get-dish-pairing-for-wine-200-response :refer :all]
            [spoonacular-api.specs.get-menu-item-information-200-response :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition :refer :all]
            [spoonacular-api.specs.classify-grocery-product-request :refer :all]
            )
  (:import (java.io File)))


(defn-spec add-meal-plan-template-with-http-info any?
  "Add Meal Plan Template
  Add a meal plan template for a user."
  [username string?, hash string?]
  (check-required-params username hash)
  (call-api "/mealplanner/{username}/templates" :post
            {:path-params   {"username" username }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec add-meal-plan-template add-meal-plan-template-200-response-spec
  "Add Meal Plan Template
  Add a meal plan template for a user."
  [username string?, hash string?]
  (let [res (:data (add-meal-plan-template-with-http-info username hash))]
    (if (:decode-models *api-context*)
       (st/decode add-meal-plan-template-200-response-spec res st/string-transformer)
       res)))


(defn-spec add-to-meal-plan-with-http-info any?
  "Add to Meal Plan
  Add an item to the user's meal plan."
  [username string?, hash string?, add-to-meal-plan-request add-to-meal-plan-request]
  (check-required-params username hash add-to-meal-plan-request)
  (call-api "/mealplanner/{username}/items" :post
            {:path-params   {"username" username }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :body-param    add-to-meal-plan-request
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec add-to-meal-plan any?
  "Add to Meal Plan
  Add an item to the user's meal plan."
  [username string?, hash string?, add-to-meal-plan-request add-to-meal-plan-request]
  (let [res (:data (add-to-meal-plan-with-http-info username hash add-to-meal-plan-request))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec add-to-shopping-list-with-http-info any?
  "Add to Shopping List
  Add an item to the current shopping list of a user."
  [username string?, hash string?, add-to-shopping-list-request add-to-shopping-list-request]
  (check-required-params username hash add-to-shopping-list-request)
  (call-api "/mealplanner/{username}/shopping-list/items" :post
            {:path-params   {"username" username }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :body-param    add-to-shopping-list-request
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec add-to-shopping-list generate-shopping-list-200-response-spec
  "Add to Shopping List
  Add an item to the current shopping list of a user."
  [username string?, hash string?, add-to-shopping-list-request add-to-shopping-list-request]
  (let [res (:data (add-to-shopping-list-with-http-info username hash add-to-shopping-list-request))]
    (if (:decode-models *api-context*)
       (st/decode generate-shopping-list-200-response-spec res st/string-transformer)
       res)))


(defn-spec clear-meal-plan-day-with-http-info any?
  "Clear Meal Plan Day
  Delete all planned items from the user's meal plan for a specific day."
  [username string?, date string?, hash string?]
  (check-required-params username date hash)
  (call-api "/mealplanner/{username}/day/{date}" :delete
            {:path-params   {"username" username "date" date }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec clear-meal-plan-day any?
  "Clear Meal Plan Day
  Delete all planned items from the user's meal plan for a specific day."
  [username string?, date string?, hash string?]
  (let [res (:data (clear-meal-plan-day-with-http-info username date hash))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec connect-user-with-http-info any?
  "Connect User
  In order to call user-specific endpoints, you need to connect your app's users to spoonacular users."
  [connect-user-request connect-user-request]
  (check-required-params connect-user-request)
  (call-api "/users/connect" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    connect-user-request
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec connect-user connect-user-200-response-spec
  "Connect User
  In order to call user-specific endpoints, you need to connect your app's users to spoonacular users."
  [connect-user-request connect-user-request]
  (let [res (:data (connect-user-with-http-info connect-user-request))]
    (if (:decode-models *api-context*)
       (st/decode connect-user-200-response-spec res st/string-transformer)
       res)))


(defn-spec delete-from-meal-plan-with-http-info any?
  "Delete from Meal Plan
  Delete an item from the user's meal plan."
  [username string?, id float?, hash string?]
  (check-required-params username id hash)
  (call-api "/mealplanner/{username}/items/{id}" :delete
            {:path-params   {"username" username "id" id }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec delete-from-meal-plan any?
  "Delete from Meal Plan
  Delete an item from the user's meal plan."
  [username string?, id float?, hash string?]
  (let [res (:data (delete-from-meal-plan-with-http-info username id hash))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec delete-from-shopping-list-with-http-info any?
  "Delete from Shopping List
  Delete an item from the current shopping list of the user."
  [username string?, id int?, hash string?]
  (check-required-params username id hash)
  (call-api "/mealplanner/{username}/shopping-list/items/{id}" :delete
            {:path-params   {"username" username "id" id }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec delete-from-shopping-list any?
  "Delete from Shopping List
  Delete an item from the current shopping list of the user."
  [username string?, id int?, hash string?]
  (let [res (:data (delete-from-shopping-list-with-http-info username id hash))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec delete-meal-plan-template-with-http-info any?
  "Delete Meal Plan Template
  Delete a meal plan template for a user."
  [username string?, id int?, hash string?]
  (check-required-params username id hash)
  (call-api "/mealplanner/{username}/templates/{id}" :delete
            {:path-params   {"username" username "id" id }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec delete-meal-plan-template any?
  "Delete Meal Plan Template
  Delete a meal plan template for a user."
  [username string?, id int?, hash string?]
  (let [res (:data (delete-meal-plan-template-with-http-info username id hash))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec generate-meal-plan-with-http-info any?
  "Generate Meal Plan
  Generate a meal plan with three meals per day (breakfast, lunch, and dinner)."
  ([] (generate-meal-plan-with-http-info nil))
  ([{:keys [timeFrame targetCalories diet exclude]} (s/map-of keyword? any?)]
   (call-api "/mealplanner/generate" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"timeFrame" timeFrame "targetCalories" targetCalories "diet" diet "exclude" exclude }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec generate-meal-plan generate-meal-plan-200-response-spec
  "Generate Meal Plan
  Generate a meal plan with three meals per day (breakfast, lunch, and dinner)."
  ([] (generate-meal-plan nil))
  ([optional-params any?]
   (let [res (:data (generate-meal-plan-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode generate-meal-plan-200-response-spec res st/string-transformer)
        res))))


(defn-spec generate-shopping-list-with-http-info any?
  "Generate Shopping List
  Generate the shopping list for a user from the meal planner in a given time frame."
  [username string?, start_date string?, end_date string?, hash string?]
  (check-required-params username start_date end_date hash)
  (call-api "/mealplanner/{username}/shopping-list/{start_date}/{end_date}" :post
            {:path-params   {"username" username "start_date" start_date "end_date" end_date }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec generate-shopping-list generate-shopping-list-200-response-spec
  "Generate Shopping List
  Generate the shopping list for a user from the meal planner in a given time frame."
  [username string?, start_date string?, end_date string?, hash string?]
  (let [res (:data (generate-shopping-list-with-http-info username start_date end_date hash))]
    (if (:decode-models *api-context*)
       (st/decode generate-shopping-list-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-meal-plan-template-with-http-info any?
  "Get Meal Plan Template
  Get information about a meal plan template."
  [username string?, id int?, hash string?]
  (check-required-params username id hash)
  (call-api "/mealplanner/{username}/templates/{id}" :get
            {:path-params   {"username" username "id" id }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-meal-plan-template get-meal-plan-template-200-response-spec
  "Get Meal Plan Template
  Get information about a meal plan template."
  [username string?, id int?, hash string?]
  (let [res (:data (get-meal-plan-template-with-http-info username id hash))]
    (if (:decode-models *api-context*)
       (st/decode get-meal-plan-template-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-meal-plan-templates-with-http-info any?
  "Get Meal Plan Templates
  Get meal plan templates from user or public ones."
  [username string?, hash string?]
  (check-required-params username hash)
  (call-api "/mealplanner/{username}/templates" :get
            {:path-params   {"username" username }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-meal-plan-templates get-meal-plan-templates-200-response-spec
  "Get Meal Plan Templates
  Get meal plan templates from user or public ones."
  [username string?, hash string?]
  (let [res (:data (get-meal-plan-templates-with-http-info username hash))]
    (if (:decode-models *api-context*)
       (st/decode get-meal-plan-templates-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-meal-plan-week-with-http-info any?
  "Get Meal Plan Week
  Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account."
  [username string?, start_date string?, hash string?]
  (check-required-params username start_date hash)
  (call-api "/mealplanner/{username}/week/{start_date}" :get
            {:path-params   {"username" username "start_date" start_date }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-meal-plan-week get-meal-plan-week-200-response-spec
  "Get Meal Plan Week
  Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account."
  [username string?, start_date string?, hash string?]
  (let [res (:data (get-meal-plan-week-with-http-info username start_date hash))]
    (if (:decode-models *api-context*)
       (st/decode get-meal-plan-week-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-shopping-list-with-http-info any?
  "Get Shopping List
  Get the current shopping list for the given user."
  [username string?, hash string?]
  (check-required-params username hash)
  (call-api "/mealplanner/{username}/shopping-list" :get
            {:path-params   {"username" username }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-shopping-list get-shopping-list-200-response-spec
  "Get Shopping List
  Get the current shopping list for the given user."
  [username string?, hash string?]
  (let [res (:data (get-shopping-list-with-http-info username hash))]
    (if (:decode-models *api-context*)
       (st/decode get-shopping-list-200-response-spec res st/string-transformer)
       res)))


