(ns spoonacular-api.api.wine
  (:require [spoonacular-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-local-hours :refer :all]
            [spoonacular-api.specs.get-recipe-ingredients-by-id-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.add-to-shopping-list-request :refer :all]
            [spoonacular-api.specs.get-recipe-nutrition-widget-by-id-200-response-good-inner :refer :all]
            [spoonacular-api.specs.get-recipe-nutrition-widget-by-id-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-inner :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner :refer :all]
            [spoonacular-api.specs.talk-to-chatbot-200-response :refer :all]
            [spoonacular-api.specs.add-to-meal-plan-request-value-ingredients-inner :refer :all]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-address :refer :all]
            [spoonacular-api.specs.connect-user-200-response :refer :all]
            [spoonacular-api.specs.search-recipes-200-response-results-inner :refer :all]
            [spoonacular-api.specs.get-wine-description-200-response :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-items-inner-value :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response :refer :all]
            [spoonacular-api.specs.get-a-random-food-joke-200-response :refer :all]
            [spoonacular-api.specs.guess-nutrition-by-dish-name-200-response :refer :all]
            [spoonacular-api.specs.convert-amounts-200-response :refer :all]
            [spoonacular-api.specs.generate-meal-plan-200-response :refer :all]
            [spoonacular-api.specs.ingredient-information :refer :all]
            [spoonacular-api.specs.search-restaurants-200-response :refer :all]
            [spoonacular-api.specs.analyze-a-recipe-search-query-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.get-similar-recipes-200-response-inner :refer :all]
            [spoonacular-api.specs.search-site-content-200-response :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition :refer :all]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner-measures-original :refer :all]
            [spoonacular-api.specs.search-recipes-200-response :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-recipes-inner :refer :all]
            [spoonacular-api.specs.search-recipes-by-ingredients-200-response-inner :refer :all]
            [spoonacular-api.specs.get-shopping-list-200-response :refer :all]
            [spoonacular-api.specs.search-food-videos-200-response :refer :all]
            [spoonacular-api.specs.get-ingredient-substitutes-200-response :refer :all]
            [spoonacular-api.specs.get-meal-plan-template-200-response-days-inner :refer :all]
            [spoonacular-api.specs.map-ingredients-to-grocery-products-request :refer :all]
            [spoonacular-api.specs.search-all-food-200-response-search-results-inner :refer :all]
            [spoonacular-api.specs.product-information :refer :all]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner :refer :all]
            [spoonacular-api.specs.compute-ingredient-amount-200-response :refer :all]
            [spoonacular-api.specs.get-conversation-suggests-200-response-suggests-inner :refer :all]
            [spoonacular-api.specs.search-custom-foods-200-response-custom-foods-inner :refer :all]
            [spoonacular-api.specs.add-meal-plan-template-200-response-items-inner :refer :all]
            [spoonacular-api.specs.guess-nutrition-by-dish-name-200-response-calories :refer :all]
            [spoonacular-api.specs.map-ingredients-to-grocery-products-200-response-inner-products-inner :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition-caloric-breakdown :refer :all]
            [spoonacular-api.specs.analyze-recipe-request :refer :all]
            [spoonacular-api.specs.get-recipe-nutrition-widget-by-id-200-response-bad-inner :refer :all]
            [spoonacular-api.specs.search-grocery-products-200-response :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner :refer :all]
            [spoonacular-api.specs.get-conversation-suggests-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response :refer :all]
            [spoonacular-api.specs.search-recipes-by-nutrients-200-response-inner :refer :all]
            [spoonacular-api.specs.add-to-meal-plan-request :refer :all]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner :refer :all]
            [spoonacular-api.specs.recipe-information-extended-ingredients-inner-measures-metric :refer :all]
            [spoonacular-api.specs.compute-glycemic-load-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.add-meal-plan-template-200-response :refer :all]
            [spoonacular-api.specs.ingredient-basics :refer :all]
            [spoonacular-api.specs.comparable-product :refer :all]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-local-hours-operational :refer :all]
            [spoonacular-api.specs.ingredient-information-nutrition-properties-inner :refer :all]
            [spoonacular-api.specs.taste-information :refer :all]
            [spoonacular-api.specs.get-conversation-suggests-200-response-suggests :refer :all]
            [spoonacular-api.specs.classify-cuisine-200-response :refer :all]
            [spoonacular-api.specs.menu-item-servings :refer :all]
            [spoonacular-api.specs.search-recipes-by-ingredients-200-response-inner-missed-ingredients-inner :refer :all]
            [spoonacular-api.specs.add-to-meal-plan-request-value :refer :all]
            [spoonacular-api.specs.quick-answer-200-response :refer :all]
            [spoonacular-api.specs.analyze-a-recipe-search-query-200-response :refer :all]
            [spoonacular-api.specs.get-wine-pairing-200-response :refer :all]
            [spoonacular-api.specs.search-custom-foods-200-response :refer :all]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner-measures :refer :all]
            [spoonacular-api.specs.generate-meal-plan-200-response-nutrients :refer :all]
            [spoonacular-api.specs.get-wine-pairing-200-response-product-matches-inner :refer :all]
            [spoonacular-api.specs.search-menu-items-200-response :refer :all]
            [spoonacular-api.specs.detect-food-in-text-200-response-annotations-inner :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition-nutrients-inner :refer :all]
            [spoonacular-api.specs.get-random-recipes-200-response :refer :all]
            [spoonacular-api.specs.classify-grocery-product-bulk-request-inner :refer :all]
            [spoonacular-api.specs.get-wine-recommendation-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-equipment-by-id-200-response :refer :all]
            [spoonacular-api.specs.compute-glycemic-load-200-response :refer :all]
            [spoonacular-api.specs.image-classification-by-url-200-response :refer :all]
            [spoonacular-api.specs.create-recipe-card-200-response :refer :all]
            [spoonacular-api.specs.guess-nutrition-by-dish-name-200-response-calories-confidence-range95-percent :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.add-meal-plan-template-200-response-items-inner-value :refer :all]
            [spoonacular-api.specs.detect-food-in-text-200-response :refer :all]
            [spoonacular-api.specs.summarize-recipe-200-response :refer :all]
            [spoonacular-api.specs.recipe-information-extended-ingredients-inner :refer :all]
            [spoonacular-api.specs.autocomplete-recipe-search-200-response-inner :refer :all]
            [spoonacular-api.specs.get-recipe-equipment-by-id-200-response-equipment-inner :refer :all]
            [spoonacular-api.specs.classify-grocery-product-bulk-200-response-inner :refer :all]
            [spoonacular-api.specs.analyze-a-recipe-search-query-200-response-dishes-inner :refer :all]
            [spoonacular-api.specs.get-meal-plan-templates-200-response-templates-inner :refer :all]
            [spoonacular-api.specs.product-information-credits :refer :all]
            [spoonacular-api.specs.map-ingredients-to-grocery-products-200-response-inner :refer :all]
            [spoonacular-api.specs.get-meal-plan-template-200-response-days-inner-items-inner-value :refer :all]
            [spoonacular-api.specs.get-wine-recommendation-200-response-recommended-wines-inner :refer :all]
            [spoonacular-api.specs.ingredient-search-200-response-results-inner :refer :all]
            [spoonacular-api.specs.recipe-information-extended-ingredients-inner-measures :refer :all]
            [spoonacular-api.specs.recipe-information :refer :all]
            [spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-metric :refer :all]
            [spoonacular-api.specs.connect-user-request :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-nutrition-calories-confidence-range95-percent :refer :all]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner :refer :all]
            [spoonacular-api.specs.talk-to-chatbot-200-response-media-inner :refer :all]
            [spoonacular-api.specs.get-comparable-products-200-response-comparable-products :refer :all]
            [spoonacular-api.specs.autocomplete-product-search-200-response :refer :all]
            [spoonacular-api.specs.ingredient-information-estimated-cost :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-nutrition-summary-nutrients-inner :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner :refer :all]
            [spoonacular-api.specs.autocomplete-product-search-200-response-results-inner :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-items-inner :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-servings :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-nutrition :refer :all]
            [spoonacular-api.specs.get-meal-plan-templates-200-response :refer :all]
            [spoonacular-api.specs.get-meal-plan-template-200-response :refer :all]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-inner-steps-inner-ingredients-inner :refer :all]
            [spoonacular-api.specs.compute-glycemic-load-request :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-nutrition-calories :refer :all]
            [spoonacular-api.specs.ingredient-search-200-response :refer :all]
            [spoonacular-api.specs.search-result :refer :all]
            [spoonacular-api.specs.search-all-food-200-response :refer :all]
            [spoonacular-api.specs.autocomplete-ingredient-search-200-response-inner :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response-category :refer :all]
            [spoonacular-api.specs.classify-grocery-product-200-response :refer :all]
            [spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount :refer :all]
            [spoonacular-api.specs.get-comparable-products-200-response :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-nutrition-summary :refer :all]
            [spoonacular-api.specs.get-meal-plan-template-200-response-days-inner-items-inner :refer :all]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-inner-steps-inner :refer :all]
            [spoonacular-api.specs.recipe-information-wine-pairing :refer :all]
            [spoonacular-api.specs.image-analysis-by-url-200-response :refer :all]
            [spoonacular-api.specs.search-food-videos-200-response-videos-inner :refer :all]
            [spoonacular-api.specs.get-recipe-ingredients-by-id-200-response :refer :all]
            [spoonacular-api.specs.get-dish-pairing-for-wine-200-response :refer :all]
            [spoonacular-api.specs.recipe-information-wine-pairing-product-matches-inner :refer :all]
            [spoonacular-api.specs.ingredient-information-nutrition :refer :all]
            [spoonacular-api.specs.menu-item :refer :all]
            [spoonacular-api.specs.classify-grocery-product-request :refer :all]
            )
  (:import (java.io File)))


(defn-spec get-dish-pairing-for-wine-with-http-info any?
  "Dish Pairing for Wine
  Find a dish that goes well with a given wine."
  [wine string?]
  (check-required-params wine)
  (call-api "/food/wine/dishes" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"wine" wine }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-dish-pairing-for-wine get-dish-pairing-for-wine-200-response-spec
  "Dish Pairing for Wine
  Find a dish that goes well with a given wine."
  [wine string?]
  (let [res (:data (get-dish-pairing-for-wine-with-http-info wine))]
    (if (:decode-models *api-context*)
       (st/decode get-dish-pairing-for-wine-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-wine-description-with-http-info any?
  "Wine Description
  Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\"."
  [wine string?]
  (check-required-params wine)
  (call-api "/food/wine/description" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"wine" wine }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-wine-description get-wine-description-200-response-spec
  "Wine Description
  Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\"."
  [wine string?]
  (let [res (:data (get-wine-description-with-http-info wine))]
    (if (:decode-models *api-context*)
       (st/decode get-wine-description-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-wine-pairing-with-http-info any?
  "Wine Pairing
  Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\")."
  ([food string?, ] (get-wine-pairing-with-http-info food nil))
  ([food string?, {:keys [maxPrice]} (s/map-of keyword? any?)]
   (check-required-params food)
   (call-api "/food/wine/pairing" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"food" food "maxPrice" maxPrice }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec get-wine-pairing get-wine-pairing-200-response-spec
  "Wine Pairing
  Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\")."
  ([food string?, ] (get-wine-pairing food nil))
  ([food string?, optional-params any?]
   (let [res (:data (get-wine-pairing-with-http-info food optional-params))]
     (if (:decode-models *api-context*)
        (st/decode get-wine-pairing-200-response-spec res st/string-transformer)
        res))))


(defn-spec get-wine-recommendation-with-http-info any?
  "Wine Recommendation
  Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\"."
  ([wine string?, ] (get-wine-recommendation-with-http-info wine nil))
  ([wine string?, {:keys [maxPrice minRating number]} (s/map-of keyword? any?)]
   (check-required-params wine)
   (call-api "/food/wine/recommendation" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"wine" wine "maxPrice" maxPrice "minRating" minRating "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec get-wine-recommendation get-wine-recommendation-200-response-spec
  "Wine Recommendation
  Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\"."
  ([wine string?, ] (get-wine-recommendation wine nil))
  ([wine string?, optional-params any?]
   (let [res (:data (get-wine-recommendation-with-http-info wine optional-params))]
     (if (:decode-models *api-context*)
        (st/decode get-wine-recommendation-200-response-spec res st/string-transformer)
        res))))


