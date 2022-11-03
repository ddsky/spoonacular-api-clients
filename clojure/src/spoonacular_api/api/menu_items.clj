(ns spoonacular-api.api.menu-items
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
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-address :refer :all]
            [spoonacular-api.specs.connect-user-200-response :refer :all]
            [spoonacular-api.specs.search-recipes-200-response-results-inner :refer :all]
            [spoonacular-api.specs.get-wine-description-200-response :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-items-inner-value :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-estimated-cost :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response :refer :all]
            [spoonacular-api.specs.get-a-random-food-joke-200-response :refer :all]
            [spoonacular-api.specs.analyze-recipe-request-1 :refer :all]
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
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner :refer :all]
            [spoonacular-api.specs.compute-ingredient-amount-200-response :refer :all]
            [spoonacular-api.specs.get-conversation-suggests-200-response-suggests-inner :refer :all]
            [spoonacular-api.specs.search-custom-foods-200-response-custom-foods-inner :refer :all]
            [spoonacular-api.specs.add-meal-plan-template-200-response-items-inner :refer :all]
            [spoonacular-api.specs.guess-nutrition-by-dish-name-200-response-calories :refer :all]
            [spoonacular-api.specs.map-ingredients-to-grocery-products-200-response-inner-products-inner :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response :refer :all]
            [spoonacular-api.specs.analyze-recipe-request :refer :all]
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
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-local-hours-operational :refer :all]
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


(defn-spec autocomplete-menu-item-search-with-http-info any?
  "Autocomplete Menu Item Search
  Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only."
  ([query string?, ] (autocomplete-menu-item-search-with-http-info query nil))
  ([query string?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/menuItems/suggest" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec autocomplete-menu-item-search autocomplete-menu-item-search-200-response-spec
  "Autocomplete Menu Item Search
  Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only."
  ([query string?, ] (autocomplete-menu-item-search query nil))
  ([query string?, optional-params any?]
   (let [res (:data (autocomplete-menu-item-search-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode autocomplete-menu-item-search-200-response-spec res st/string-transformer)
        res))))


(defn-spec get-menu-item-information-with-http-info any?
  "Get Menu Item Information
  Use a menu item id to get all available information about a menu item, such as nutrition."
  [id int?]
  (check-required-params id)
  (call-api "/food/menuItems/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-menu-item-information get-menu-item-information-200-response-spec
  "Get Menu Item Information
  Use a menu item id to get all available information about a menu item, such as nutrition."
  [id int?]
  (let [res (:data (get-menu-item-information-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode get-menu-item-information-200-response-spec res st/string-transformer)
       res)))


(defn-spec menu-item-nutrition-by-id-image-with-http-info any?
  "Menu Item Nutrition by ID Image
  Visualize a menu item's nutritional information as HTML including CSS."
  [id float?]
  (check-required-params id)
  (call-api "/food/menuItems/{id}/nutritionWidget.png" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["image/png"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec menu-item-nutrition-by-id-image any?
  "Menu Item Nutrition by ID Image
  Visualize a menu item's nutritional information as HTML including CSS."
  [id float?]
  (let [res (:data (menu-item-nutrition-by-id-image-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec menu-item-nutrition-label-image-with-http-info any?
  "Menu Item Nutrition Label Image
  Visualize a menu item's nutritional label information as an image."
  ([id float?, ] (menu-item-nutrition-label-image-with-http-info id nil))
  ([id float?, {:keys [showOptionalNutrients showZeroValues showIngredients]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/food/menuItems/{id}/nutritionLabel.png" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"showOptionalNutrients" showOptionalNutrients "showZeroValues" showZeroValues "showIngredients" showIngredients }
              :form-params   {}
              :content-types []
              :accepts       ["image/png"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec menu-item-nutrition-label-image any?
  "Menu Item Nutrition Label Image
  Visualize a menu item's nutritional label information as an image."
  ([id float?, ] (menu-item-nutrition-label-image id nil))
  ([id float?, optional-params any?]
   (let [res (:data (menu-item-nutrition-label-image-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec menu-item-nutrition-label-widget-with-http-info any?
  "Menu Item Nutrition Label Widget
  Visualize a menu item's nutritional label information as HTML including CSS."
  ([id float?, ] (menu-item-nutrition-label-widget-with-http-info id nil))
  ([id float?, {:keys [defaultCss showOptionalNutrients showZeroValues showIngredients]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/food/menuItems/{id}/nutritionLabel" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss "showOptionalNutrients" showOptionalNutrients "showZeroValues" showZeroValues "showIngredients" showIngredients }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec menu-item-nutrition-label-widget string?
  "Menu Item Nutrition Label Widget
  Visualize a menu item's nutritional label information as HTML including CSS."
  ([id float?, ] (menu-item-nutrition-label-widget id nil))
  ([id float?, optional-params any?]
   (let [res (:data (menu-item-nutrition-label-widget-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec search-menu-items-with-http-info any?
  "Search Menu Items
  Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha."
  ([] (search-menu-items-with-http-info nil))
  ([{:keys [query minCalories maxCalories minCarbs maxCarbs minProtein maxProtein minFat maxFat addMenuItemInformation offset number]} (s/map-of keyword? any?)]
   (call-api "/food/menuItems/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "minCalories" minCalories "maxCalories" maxCalories "minCarbs" minCarbs "maxCarbs" maxCarbs "minProtein" minProtein "maxProtein" maxProtein "minFat" minFat "maxFat" maxFat "addMenuItemInformation" addMenuItemInformation "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec search-menu-items search-menu-items-200-response-spec
  "Search Menu Items
  Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha."
  ([] (search-menu-items nil))
  ([optional-params any?]
   (let [res (:data (search-menu-items-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-menu-items-200-response-spec res st/string-transformer)
        res))))


(defn-spec visualize-menu-item-nutrition-by-id-with-http-info any?
  "Menu Item Nutrition by ID Widget
  Visualize a menu item's nutritional information as HTML including CSS."
  ([id int?, ] (visualize-menu-item-nutrition-by-id-with-http-info id nil))
  ([id int?, {:keys [defaultCss Accept]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/food/menuItems/{id}/nutritionWidget" :get
             {:path-params   {"id" id }
              :header-params {"Accept" Accept }
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-menu-item-nutrition-by-id string?
  "Menu Item Nutrition by ID Widget
  Visualize a menu item's nutritional information as HTML including CSS."
  ([id int?, ] (visualize-menu-item-nutrition-by-id id nil))
  ([id int?, optional-params any?]
   (let [res (:data (visualize-menu-item-nutrition-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


