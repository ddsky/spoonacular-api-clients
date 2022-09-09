(ns spoonacular-api.api.ingredients
  (:require [spoonacular-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [spoonacular-api.specs.get-product-information-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.get-recipe-information-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-ingredients-by-id-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.add-to-shopping-list-request :refer :all]
            [spoonacular-api.specs.get-recipe-nutrition-widget-by-id-200-response-good-inner :refer :all]
            [spoonacular-api.specs.get-recipe-nutrition-widget-by-id-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner :refer :all]
            [spoonacular-api.specs.talk-to-chatbot-200-response :refer :all]
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
            [spoonacular-api.specs.analyze-a-recipe-search-query-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.get-recipe-information-200-response-wine-pairing :refer :all]
            [spoonacular-api.specs.get-similar-recipes-200-response-inner :refer :all]
            [spoonacular-api.specs.get-comparable-products-200-response-comparable-products-protein-inner :refer :all]
            [spoonacular-api.specs.search-site-content-200-response :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition :refer :all]
            [spoonacular-api.specs.delete-from-meal-plan-request :refer :all]
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
            [spoonacular-api.specs.compute-ingredient-amount-200-response :refer :all]
            [spoonacular-api.specs.get-conversation-suggests-200-response-suggests-inner :refer :all]
            [spoonacular-api.specs.search-custom-foods-200-response-custom-foods-inner :refer :all]
            [spoonacular-api.specs.add-meal-plan-template-200-response-items-inner :refer :all]
            [spoonacular-api.specs.guess-nutrition-by-dish-name-200-response-calories :refer :all]
            [spoonacular-api.specs.map-ingredients-to-grocery-products-200-response-inner-products-inner :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response :refer :all]
            [spoonacular-api.specs.search-site-content-200-response-grocery-products-inner-data-points-inner :refer :all]
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
            [spoonacular-api.specs.generate-shopping-list-request :refer :all]
            [spoonacular-api.specs.compute-glycemic-load-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner :refer :all]
            [spoonacular-api.specs.add-meal-plan-template-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-information-200-response-extended-ingredients-inner-measures :refer :all]
            [spoonacular-api.specs.autocomplete-menu-item-search-200-response :refer :all]
            [spoonacular-api.specs.get-product-information-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-information-200-response-wine-pairing-product-matches-inner :refer :all]
            [spoonacular-api.specs.get-conversation-suggests-200-response-suggests :refer :all]
            [spoonacular-api.specs.classify-cuisine-200-response :refer :all]
            [spoonacular-api.specs.search-recipes-by-ingredients-200-response-inner-missed-ingredients-inner :refer :all]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner :refer :all]
            [spoonacular-api.specs.quick-answer-200-response :refer :all]
            [spoonacular-api.specs.analyze-a-recipe-search-query-200-response :refer :all]
            [spoonacular-api.specs.get-wine-pairing-200-response :refer :all]
            [spoonacular-api.specs.search-custom-foods-200-response :refer :all]
            [spoonacular-api.specs.clear-meal-plan-day-request :refer :all]
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
            [spoonacular-api.specs.add-to-meal-plan-request-1-value :refer :all]
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
            [spoonacular-api.specs.add-to-meal-plan-request-1-value-ingredients-inner :refer :all]
            [spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-metric :refer :all]
            [spoonacular-api.specs.connect-user-request :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-nutrition-calories-confidence-range95-percent :refer :all]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner :refer :all]
            [spoonacular-api.specs.get-comparable-products-200-response-comparable-products :refer :all]
            [spoonacular-api.specs.autocomplete-product-search-200-response :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-nutrition-summary-nutrients-inner :refer :all]
            [spoonacular-api.specs.get-random-recipes-200-response-recipes-inner :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner :refer :all]
            [spoonacular-api.specs.autocomplete-product-search-200-response-results-inner :refer :all]
            [spoonacular-api.specs.add-to-meal-plan-request-1 :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-items-inner :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-servings :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-nutrition :refer :all]
            [spoonacular-api.specs.get-meal-plan-templates-200-response :refer :all]
            [spoonacular-api.specs.get-meal-plan-template-200-response :refer :all]
            [spoonacular-api.specs.compute-glycemic-load-request :refer :all]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-parsed-instructions-inner :refer :all]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response :refer :all]
            [spoonacular-api.specs.search-site-content-200-response-grocery-products-inner :refer :all]
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


(defn-spec autocomplete-ingredient-search-with-http-info any?
  "Autocomplete Ingredient Search
  Autocomplete the entry of an ingredient."
  ([] (autocomplete-ingredient-search-with-http-info nil))
  ([{:keys [query number metaInformation intolerances]} (s/map-of keyword? any?)]
   (call-api "/food/ingredients/autocomplete" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number "metaInformation" metaInformation "intolerances" intolerances }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec autocomplete-ingredient-search (s/coll-of autocomplete-ingredient-search-200-response-inner-spec)
  "Autocomplete Ingredient Search
  Autocomplete the entry of an ingredient."
  ([] (autocomplete-ingredient-search nil))
  ([optional-params any?]
   (let [res (:data (autocomplete-ingredient-search-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of autocomplete-ingredient-search-200-response-inner-spec) res st/string-transformer)
        res))))


(defn-spec compute-ingredient-amount-with-http-info any?
  "Compute Ingredient Amount
  Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?"
  ([id float?, nutrient string?, target float?, ] (compute-ingredient-amount-with-http-info id nutrient target nil))
  ([id float?, nutrient string?, target float?, {:keys [unit]} (s/map-of keyword? any?)]
   (check-required-params id nutrient target)
   (call-api "/food/ingredients/{id}/amount" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"nutrient" nutrient "target" target "unit" unit }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec compute-ingredient-amount compute-ingredient-amount-200-response-spec
  "Compute Ingredient Amount
  Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?"
  ([id float?, nutrient string?, target float?, ] (compute-ingredient-amount id nutrient target nil))
  ([id float?, nutrient string?, target float?, optional-params any?]
   (let [res (:data (compute-ingredient-amount-with-http-info id nutrient target optional-params))]
     (if (:decode-models *api-context*)
        (st/decode compute-ingredient-amount-200-response-spec res st/string-transformer)
        res))))


(defn-spec get-ingredient-information-with-http-info any?
  "Get Ingredient Information
  Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle."
  ([id int?, ] (get-ingredient-information-with-http-info id nil))
  ([id int?, {:keys [amount unit]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/food/ingredients/{id}/information" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"amount" amount "unit" unit }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec get-ingredient-information get-ingredient-information-200-response-spec
  "Get Ingredient Information
  Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle."
  ([id int?, ] (get-ingredient-information id nil))
  ([id int?, optional-params any?]
   (let [res (:data (get-ingredient-information-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode get-ingredient-information-200-response-spec res st/string-transformer)
        res))))


(defn-spec get-ingredient-substitutes-with-http-info any?
  "Get Ingredient Substitutes
  Search for substitutes for a given ingredient."
  [ingredientName string?]
  (check-required-params ingredientName)
  (call-api "/food/ingredients/substitutes" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"ingredientName" ingredientName }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-ingredient-substitutes get-ingredient-substitutes-200-response-spec
  "Get Ingredient Substitutes
  Search for substitutes for a given ingredient."
  [ingredientName string?]
  (let [res (:data (get-ingredient-substitutes-with-http-info ingredientName))]
    (if (:decode-models *api-context*)
       (st/decode get-ingredient-substitutes-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-ingredient-substitutes-by-id-with-http-info any?
  "Get Ingredient Substitutes by ID
  Search for substitutes for a given ingredient."
  [id int?]
  (check-required-params id)
  (call-api "/food/ingredients/{id}/substitutes" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-ingredient-substitutes-by-id get-ingredient-substitutes-200-response-spec
  "Get Ingredient Substitutes by ID
  Search for substitutes for a given ingredient."
  [id int?]
  (let [res (:data (get-ingredient-substitutes-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode get-ingredient-substitutes-200-response-spec res st/string-transformer)
       res)))


(defn-spec ingredient-search-with-http-info any?
  "Ingredient Search
  Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.)."
  ([] (ingredient-search-with-http-info nil))
  ([{:keys [query addChildren minProteinPercent maxProteinPercent minFatPercent maxFatPercent minCarbsPercent maxCarbsPercent metaInformation intolerances sort sortDirection offset number]} (s/map-of keyword? any?)]
   (call-api "/food/ingredients/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "addChildren" addChildren "minProteinPercent" minProteinPercent "maxProteinPercent" maxProteinPercent "minFatPercent" minFatPercent "maxFatPercent" maxFatPercent "minCarbsPercent" minCarbsPercent "maxCarbsPercent" maxCarbsPercent "metaInformation" metaInformation "intolerances" intolerances "sort" sort "sortDirection" sortDirection "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec ingredient-search ingredient-search-200-response-spec
  "Ingredient Search
  Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.)."
  ([] (ingredient-search nil))
  ([optional-params any?]
   (let [res (:data (ingredient-search-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode ingredient-search-200-response-spec res st/string-transformer)
        res))))


(defn-spec ingredients-by-id-image-with-http-info any?
  "Ingredients by ID Image
  Visualize a recipe's ingredient list."
  ([id float?, ] (ingredients-by-id-image-with-http-info id nil))
  ([id float?, {:keys [measure]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/ingredientWidget.png" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"measure" measure }
              :form-params   {}
              :content-types []
              :accepts       ["image/png"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec ingredients-by-id-image any?
  "Ingredients by ID Image
  Visualize a recipe's ingredient list."
  ([id float?, ] (ingredients-by-id-image id nil))
  ([id float?, optional-params any?]
   (let [res (:data (ingredients-by-id-image-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec map-ingredients-to-grocery-products-with-http-info any?
  "Map Ingredients to Grocery Products
  Map a set of ingredients to products you can buy in the grocery store."
  [map-ingredients-to-grocery-products-request map-ingredients-to-grocery-products-request]
  (check-required-params map-ingredients-to-grocery-products-request)
  (call-api "/food/ingredients/map" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    map-ingredients-to-grocery-products-request
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec map-ingredients-to-grocery-products (s/coll-of map-ingredients-to-grocery-products-200-response-inner-spec)
  "Map Ingredients to Grocery Products
  Map a set of ingredients to products you can buy in the grocery store."
  [map-ingredients-to-grocery-products-request map-ingredients-to-grocery-products-request]
  (let [res (:data (map-ingredients-to-grocery-products-with-http-info map-ingredients-to-grocery-products-request))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of map-ingredients-to-grocery-products-200-response-inner-spec) res st/string-transformer)
       res)))


(defn-spec visualize-ingredients-with-http-info any?
  "Ingredients Widget
  Visualize ingredients of a recipe. You can play around with that endpoint!"
  ([] (visualize-ingredients-with-http-info nil))
  ([{:keys [Content-Type language Accept]} (s/map-of keyword? any?)]
   (call-api "/recipes/visualizeIngredients" :post
             {:path-params   {}
              :header-params {"Content-Type" Content-Type "Accept" Accept }
              :query-params  {"language" language }
              :form-params   {}
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-ingredients string?
  "Ingredients Widget
  Visualize ingredients of a recipe. You can play around with that endpoint!"
  ([] (visualize-ingredients nil))
  ([optional-params any?]
   (let [res (:data (visualize-ingredients-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


