(ns spoonacular-api.api.recipes
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
            [spoonacular-api.specs.search-result-data-points-inner :refer :all]
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


(defn-spec analyze-a-recipe-search-query-with-http-info any?
  "Analyze a Recipe Search Query
  Parse a recipe search query to find out its intention."
  [q string?]
  (check-required-params q)
  (call-api "/recipes/queries/analyze" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"q" q }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec analyze-a-recipe-search-query analyze-a-recipe-search-query-200-response-spec
  "Analyze a Recipe Search Query
  Parse a recipe search query to find out its intention."
  [q string?]
  (let [res (:data (analyze-a-recipe-search-query-with-http-info q))]
    (if (:decode-models *api-context*)
       (st/decode analyze-a-recipe-search-query-200-response-spec res st/string-transformer)
       res)))


(defn-spec analyze-recipe-instructions-with-http-info any?
  "Analyze Recipe Instructions
  This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in."
  [instructions string?]
  (check-required-params instructions)
  (call-api "/recipes/analyzeInstructions" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {"instructions" instructions }
             :content-types ["application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec analyze-recipe-instructions analyze-recipe-instructions-200-response-spec
  "Analyze Recipe Instructions
  This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in."
  [instructions string?]
  (let [res (:data (analyze-recipe-instructions-with-http-info instructions))]
    (if (:decode-models *api-context*)
       (st/decode analyze-recipe-instructions-200-response-spec res st/string-transformer)
       res)))


(defn-spec autocomplete-recipe-search-with-http-info any?
  "Autocomplete Recipe Search
  Autocomplete a partial input to suggest possible recipe names."
  ([query string?, ] (autocomplete-recipe-search-with-http-info query nil))
  ([query string?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/recipes/autocomplete" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec autocomplete-recipe-search (s/coll-of autocomplete-recipe-search-200-response-inner-spec)
  "Autocomplete Recipe Search
  Autocomplete a partial input to suggest possible recipe names."
  ([query string?, ] (autocomplete-recipe-search query nil))
  ([query string?, optional-params any?]
   (let [res (:data (autocomplete-recipe-search-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of autocomplete-recipe-search-200-response-inner-spec) res st/string-transformer)
        res))))


(defn-spec classify-cuisine-with-http-info any?
  "Classify Cuisine
  Classify the recipe's cuisine."
  ([title string?, ingredientList string?, ] (classify-cuisine-with-http-info title ingredientList nil))
  ([title string?, ingredientList string?, {:keys [language]} (s/map-of keyword? any?)]
   (check-required-params title ingredientList)
   (call-api "/recipes/cuisine" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"language" language }
              :form-params   {"title" title "ingredientList" ingredientList }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec classify-cuisine classify-cuisine-200-response-spec
  "Classify Cuisine
  Classify the recipe's cuisine."
  ([title string?, ingredientList string?, ] (classify-cuisine title ingredientList nil))
  ([title string?, ingredientList string?, optional-params any?]
   (let [res (:data (classify-cuisine-with-http-info title ingredientList optional-params))]
     (if (:decode-models *api-context*)
        (st/decode classify-cuisine-200-response-spec res st/string-transformer)
        res))))


(defn-spec compute-glycemic-load-with-http-info any?
  "Compute Glycemic Load
  Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load."
  ([compute-glycemic-load-request compute-glycemic-load-request, ] (compute-glycemic-load-with-http-info compute-glycemic-load-request nil))
  ([compute-glycemic-load-request compute-glycemic-load-request, {:keys [language]} (s/map-of keyword? any?)]
   (check-required-params compute-glycemic-load-request)
   (call-api "/food/ingredients/glycemicLoad" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"language" language }
              :form-params   {}
              :body-param    compute-glycemic-load-request
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec compute-glycemic-load compute-glycemic-load-200-response-spec
  "Compute Glycemic Load
  Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load."
  ([compute-glycemic-load-request compute-glycemic-load-request, ] (compute-glycemic-load compute-glycemic-load-request nil))
  ([compute-glycemic-load-request compute-glycemic-load-request, optional-params any?]
   (let [res (:data (compute-glycemic-load-with-http-info compute-glycemic-load-request optional-params))]
     (if (:decode-models *api-context*)
        (st/decode compute-glycemic-load-200-response-spec res st/string-transformer)
        res))))


(defn-spec convert-amounts-with-http-info any?
  "Convert Amounts
  Convert amounts like \"2 cups of flour to grams\"."
  [ingredientName string?, sourceAmount float?, sourceUnit string?, targetUnit string?]
  (check-required-params ingredientName sourceAmount sourceUnit targetUnit)
  (call-api "/recipes/convert" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"ingredientName" ingredientName "sourceAmount" sourceAmount "sourceUnit" sourceUnit "targetUnit" targetUnit }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec convert-amounts convert-amounts-200-response-spec
  "Convert Amounts
  Convert amounts like \"2 cups of flour to grams\"."
  [ingredientName string?, sourceAmount float?, sourceUnit string?, targetUnit string?]
  (let [res (:data (convert-amounts-with-http-info ingredientName sourceAmount sourceUnit targetUnit))]
    (if (:decode-models *api-context*)
       (st/decode convert-amounts-200-response-spec res st/string-transformer)
       res)))


(defn-spec create-recipe-card-with-http-info any?
  "Create Recipe Card
  Generate a recipe card for a recipe."
  ([title string?, ingredients string?, instructions string?, readyInMinutes float?, servings float?, mask string?, backgroundImage string?, ] (create-recipe-card-with-http-info title ingredients instructions readyInMinutes servings mask backgroundImage nil))
  ([title string?, ingredients string?, instructions string?, readyInMinutes float?, servings float?, mask string?, backgroundImage string?, {:keys [^File image imageUrl author backgroundColor fontColor source]} (s/map-of keyword? any?)]
   (check-required-params title ingredients instructions readyInMinutes servings mask backgroundImage)
   (call-api "/recipes/visualizeRecipe" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"title" title "ingredients" ingredients "instructions" instructions "readyInMinutes" readyInMinutes "servings" servings "mask" mask "backgroundImage" backgroundImage "image" image "imageUrl" imageUrl "author" author "backgroundColor" backgroundColor "fontColor" fontColor "source" source }
              :content-types ["multipart/form-data"]
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec create-recipe-card create-recipe-card-200-response-spec
  "Create Recipe Card
  Generate a recipe card for a recipe."
  ([title string?, ingredients string?, instructions string?, readyInMinutes float?, servings float?, mask string?, backgroundImage string?, ] (create-recipe-card title ingredients instructions readyInMinutes servings mask backgroundImage nil))
  ([title string?, ingredients string?, instructions string?, readyInMinutes float?, servings float?, mask string?, backgroundImage string?, optional-params any?]
   (let [res (:data (create-recipe-card-with-http-info title ingredients instructions readyInMinutes servings mask backgroundImage optional-params))]
     (if (:decode-models *api-context*)
        (st/decode create-recipe-card-200-response-spec res st/string-transformer)
        res))))


(defn-spec equipment-by-id-image-with-http-info any?
  "Equipment by ID Image
  Visualize a recipe's equipment list as an image."
  [id int?]
  (check-required-params id)
  (call-api "/recipes/{id}/equipmentWidget.png" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["image/png"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec equipment-by-id-image any?
  "Equipment by ID Image
  Visualize a recipe's equipment list as an image."
  [id int?]
  (let [res (:data (equipment-by-id-image-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec extract-recipe-from-website-with-http-info any?
  "Extract Recipe from Website
  This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website."
  ([url string?, ] (extract-recipe-from-website-with-http-info url nil))
  ([url string?, {:keys [forceExtraction analyze includeNutrition includeTaste]} (s/map-of keyword? any?)]
   (check-required-params url)
   (call-api "/recipes/extract" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"url" url "forceExtraction" forceExtraction "analyze" analyze "includeNutrition" includeNutrition "includeTaste" includeTaste }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec extract-recipe-from-website recipe-information-spec
  "Extract Recipe from Website
  This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website."
  ([url string?, ] (extract-recipe-from-website url nil))
  ([url string?, optional-params any?]
   (let [res (:data (extract-recipe-from-website-with-http-info url optional-params))]
     (if (:decode-models *api-context*)
        (st/decode recipe-information-spec res st/string-transformer)
        res))))


(defn-spec get-analyzed-recipe-instructions-with-http-info any?
  "Get Analyzed Recipe Instructions
  Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required."
  ([id int?, ] (get-analyzed-recipe-instructions-with-http-info id nil))
  ([id int?, {:keys [stepBreakdown]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/analyzedInstructions" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"stepBreakdown" stepBreakdown }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec get-analyzed-recipe-instructions (s/coll-of get-analyzed-recipe-instructions-200-response-inner-spec)
  "Get Analyzed Recipe Instructions
  Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required."
  ([id int?, ] (get-analyzed-recipe-instructions id nil))
  ([id int?, optional-params any?]
   (let [res (:data (get-analyzed-recipe-instructions-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of get-analyzed-recipe-instructions-200-response-inner-spec) res st/string-transformer)
        res))))


(defn-spec get-random-recipes-with-http-info any?
  "Get Random Recipes
  Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random."
  ([] (get-random-recipes-with-http-info nil))
  ([{:keys [includeNutrition include-tags exclude-tags number]} (s/map-of keyword? any?)]
   (call-api "/recipes/random" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"includeNutrition" includeNutrition "include-tags" include-tags "exclude-tags" exclude-tags "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec get-random-recipes get-random-recipes-200-response-spec
  "Get Random Recipes
  Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random."
  ([] (get-random-recipes nil))
  ([optional-params any?]
   (let [res (:data (get-random-recipes-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode get-random-recipes-200-response-spec res st/string-transformer)
        res))))


(defn-spec get-recipe-equipment-by-id-with-http-info any?
  "Equipment by ID
  Get a recipe's equipment list."
  [id int?]
  (check-required-params id)
  (call-api "/recipes/{id}/equipmentWidget.json" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-recipe-equipment-by-id get-recipe-equipment-by-id-200-response-spec
  "Equipment by ID
  Get a recipe's equipment list."
  [id int?]
  (let [res (:data (get-recipe-equipment-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode get-recipe-equipment-by-id-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-recipe-information-with-http-info any?
  "Get Recipe Information
  Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc."
  ([id int?, ] (get-recipe-information-with-http-info id nil))
  ([id int?, {:keys [includeNutrition addWinePairing addTasteData]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/information" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"includeNutrition" includeNutrition "addWinePairing" addWinePairing "addTasteData" addTasteData }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec get-recipe-information recipe-information-spec
  "Get Recipe Information
  Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc."
  ([id int?, ] (get-recipe-information id nil))
  ([id int?, optional-params any?]
   (let [res (:data (get-recipe-information-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode recipe-information-spec res st/string-transformer)
        res))))


(defn-spec get-recipe-information-bulk-with-http-info any?
  "Get Recipe Information Bulk
  Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster."
  ([ids string?, ] (get-recipe-information-bulk-with-http-info ids nil))
  ([ids string?, {:keys [includeNutrition]} (s/map-of keyword? any?)]
   (check-required-params ids)
   (call-api "/recipes/informationBulk" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"ids" ids "includeNutrition" includeNutrition }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec get-recipe-information-bulk (s/coll-of recipe-information-spec)
  "Get Recipe Information Bulk
  Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster."
  ([ids string?, ] (get-recipe-information-bulk ids nil))
  ([ids string?, optional-params any?]
   (let [res (:data (get-recipe-information-bulk-with-http-info ids optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of recipe-information-spec) res st/string-transformer)
        res))))


(defn-spec get-recipe-ingredients-by-id-with-http-info any?
  "Ingredients by ID
  Get a recipe's ingredient list."
  [id int?]
  (check-required-params id)
  (call-api "/recipes/{id}/ingredientWidget.json" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-recipe-ingredients-by-id get-recipe-ingredients-by-id-200-response-spec
  "Ingredients by ID
  Get a recipe's ingredient list."
  [id int?]
  (let [res (:data (get-recipe-ingredients-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode get-recipe-ingredients-by-id-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-recipe-nutrition-widget-by-id-with-http-info any?
  "Nutrition by ID
  Get a recipe's nutrition data."
  [id int?]
  (check-required-params id)
  (call-api "/recipes/{id}/nutritionWidget.json" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-recipe-nutrition-widget-by-id get-recipe-nutrition-widget-by-id-200-response-spec
  "Nutrition by ID
  Get a recipe's nutrition data."
  [id int?]
  (let [res (:data (get-recipe-nutrition-widget-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode get-recipe-nutrition-widget-by-id-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-recipe-price-breakdown-by-id-with-http-info any?
  "Price Breakdown by ID
  Get a recipe's price breakdown data."
  [id int?]
  (check-required-params id)
  (call-api "/recipes/{id}/priceBreakdownWidget.json" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-recipe-price-breakdown-by-id get-recipe-price-breakdown-by-id-200-response-spec
  "Price Breakdown by ID
  Get a recipe's price breakdown data."
  [id int?]
  (let [res (:data (get-recipe-price-breakdown-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode get-recipe-price-breakdown-by-id-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-recipe-taste-by-id-with-http-info any?
  "Taste by ID
  Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty."
  ([id int?, ] (get-recipe-taste-by-id-with-http-info id nil))
  ([id int?, {:keys [normalize]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/tasteWidget.json" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"normalize" normalize }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec get-recipe-taste-by-id taste-information-spec
  "Taste by ID
  Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty."
  ([id int?, ] (get-recipe-taste-by-id id nil))
  ([id int?, optional-params any?]
   (let [res (:data (get-recipe-taste-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode taste-information-spec res st/string-transformer)
        res))))


(defn-spec get-similar-recipes-with-http-info any?
  "Get Similar Recipes
  Find recipes which are similar to the given one."
  ([id int?, ] (get-similar-recipes-with-http-info id nil))
  ([id int?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/similar" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec get-similar-recipes (s/coll-of get-similar-recipes-200-response-inner-spec)
  "Get Similar Recipes
  Find recipes which are similar to the given one."
  ([id int?, ] (get-similar-recipes id nil))
  ([id int?, optional-params any?]
   (let [res (:data (get-similar-recipes-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of get-similar-recipes-200-response-inner-spec) res st/string-transformer)
        res))))


(defn-spec guess-nutrition-by-dish-name-with-http-info any?
  "Guess Nutrition by Dish Name
  Estimate the macronutrients of a dish based on its title."
  [title string?]
  (check-required-params title)
  (call-api "/recipes/guessNutrition" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"title" title }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec guess-nutrition-by-dish-name guess-nutrition-by-dish-name-200-response-spec
  "Guess Nutrition by Dish Name
  Estimate the macronutrients of a dish based on its title."
  [title string?]
  (let [res (:data (guess-nutrition-by-dish-name-with-http-info title))]
    (if (:decode-models *api-context*)
       (st/decode guess-nutrition-by-dish-name-200-response-spec res st/string-transformer)
       res)))


(defn-spec parse-ingredients-with-http-info any?
  "Parse Ingredients
  Extract an ingredient from plain text."
  ([ingredientList string?, servings float?, ] (parse-ingredients-with-http-info ingredientList servings nil))
  ([ingredientList string?, servings float?, {:keys [language includeNutrition]} (s/map-of keyword? any?)]
   (check-required-params ingredientList servings)
   (call-api "/recipes/parseIngredients" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"language" language }
              :form-params   {"ingredientList" ingredientList "servings" servings "includeNutrition" includeNutrition }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec parse-ingredients (s/coll-of ingredient-information-spec)
  "Parse Ingredients
  Extract an ingredient from plain text."
  ([ingredientList string?, servings float?, ] (parse-ingredients ingredientList servings nil))
  ([ingredientList string?, servings float?, optional-params any?]
   (let [res (:data (parse-ingredients-with-http-info ingredientList servings optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of ingredient-information-spec) res st/string-transformer)
        res))))


(defn-spec price-breakdown-by-id-image-with-http-info any?
  "Price Breakdown by ID Image
  Visualize a recipe's price breakdown."
  [id int?]
  (check-required-params id)
  (call-api "/recipes/{id}/priceBreakdownWidget.png" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["image/png"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec price-breakdown-by-id-image any?
  "Price Breakdown by ID Image
  Visualize a recipe's price breakdown."
  [id int?]
  (let [res (:data (price-breakdown-by-id-image-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec quick-answer-with-http-info any?
  "Quick Answer
  Answer a nutrition related natural language question."
  [q string?]
  (check-required-params q)
  (call-api "/recipes/quickAnswer" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"q" q }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec quick-answer quick-answer-200-response-spec
  "Quick Answer
  Answer a nutrition related natural language question."
  [q string?]
  (let [res (:data (quick-answer-with-http-info q))]
    (if (:decode-models *api-context*)
       (st/decode quick-answer-200-response-spec res st/string-transformer)
       res)))


(defn-spec recipe-nutrition-by-id-image-with-http-info any?
  "Recipe Nutrition by ID Image
  Visualize a recipe's nutritional information as an image."
  [id int?]
  (check-required-params id)
  (call-api "/recipes/{id}/nutritionWidget.png" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["image/png"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec recipe-nutrition-by-id-image any?
  "Recipe Nutrition by ID Image
  Visualize a recipe's nutritional information as an image."
  [id int?]
  (let [res (:data (recipe-nutrition-by-id-image-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec recipe-nutrition-label-image-with-http-info any?
  "Recipe Nutrition Label Image
  Get a recipe's nutrition label as an image."
  ([id int?, ] (recipe-nutrition-label-image-with-http-info id nil))
  ([id int?, {:keys [showOptionalNutrients showZeroValues showIngredients]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/nutritionLabel.png" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"showOptionalNutrients" showOptionalNutrients "showZeroValues" showZeroValues "showIngredients" showIngredients }
              :form-params   {}
              :content-types []
              :accepts       ["image/png"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec recipe-nutrition-label-image any?
  "Recipe Nutrition Label Image
  Get a recipe's nutrition label as an image."
  ([id int?, ] (recipe-nutrition-label-image id nil))
  ([id int?, optional-params any?]
   (let [res (:data (recipe-nutrition-label-image-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec recipe-nutrition-label-widget-with-http-info any?
  "Recipe Nutrition Label Widget
  Get a recipe's nutrition label as an HTML widget."
  ([id int?, ] (recipe-nutrition-label-widget-with-http-info id nil))
  ([id int?, {:keys [defaultCss showOptionalNutrients showZeroValues showIngredients]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/nutritionLabel" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss "showOptionalNutrients" showOptionalNutrients "showZeroValues" showZeroValues "showIngredients" showIngredients }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec recipe-nutrition-label-widget string?
  "Recipe Nutrition Label Widget
  Get a recipe's nutrition label as an HTML widget."
  ([id int?, ] (recipe-nutrition-label-widget id nil))
  ([id int?, optional-params any?]
   (let [res (:data (recipe-nutrition-label-widget-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec recipe-taste-by-id-image-with-http-info any?
  "Recipe Taste by ID Image
  Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty."
  ([id int?, ] (recipe-taste-by-id-image-with-http-info id nil))
  ([id int?, {:keys [normalize rgb]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/tasteWidget.png" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"normalize" normalize "rgb" rgb }
              :form-params   {}
              :content-types []
              :accepts       ["image/png"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec recipe-taste-by-id-image any?
  "Recipe Taste by ID Image
  Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty."
  ([id int?, ] (recipe-taste-by-id-image id nil))
  ([id int?, optional-params any?]
   (let [res (:data (recipe-taste-by-id-image-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-recipes-with-http-info any?
  "Search Recipes
  Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint."
  ([query string?, ] (search-recipes-with-http-info query nil))
  ([query string?, {:keys [cuisine excludeCuisine diet intolerances equipment includeIngredients excludeIngredients type instructionsRequired fillIngredients addRecipeInformation addRecipeNutrition author tags recipeBoxId titleMatch maxReadyTime minServings maxServings ignorePantry sort sortDirection minCarbs maxCarbs minProtein maxProtein minCalories maxCalories minFat maxFat minAlcohol maxAlcohol minCaffeine maxCaffeine minCopper maxCopper minCalcium maxCalcium minCholine maxCholine minCholesterol maxCholesterol minFluoride maxFluoride minSaturatedFat maxSaturatedFat minVitaminA maxVitaminA minVitaminC maxVitaminC minVitaminD maxVitaminD minVitaminE maxVitaminE minVitaminK maxVitaminK minVitaminB1 maxVitaminB1 minVitaminB2 maxVitaminB2 minVitaminB5 maxVitaminB5 minVitaminB3 maxVitaminB3 minVitaminB6 maxVitaminB6 minVitaminB12 maxVitaminB12 minFiber maxFiber minFolate maxFolate minFolicAcid maxFolicAcid minIodine maxIodine minIron maxIron minMagnesium maxMagnesium minManganese maxManganese minPhosphorus maxPhosphorus minPotassium maxPotassium minSelenium maxSelenium minSodium maxSodium minSugar maxSugar minZinc maxZinc offset number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/recipes/complexSearch" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "cuisine" cuisine "excludeCuisine" excludeCuisine "diet" diet "intolerances" intolerances "equipment" equipment "includeIngredients" includeIngredients "excludeIngredients" excludeIngredients "type" type "instructionsRequired" instructionsRequired "fillIngredients" fillIngredients "addRecipeInformation" addRecipeInformation "addRecipeNutrition" addRecipeNutrition "author" author "tags" tags "recipeBoxId" recipeBoxId "titleMatch" titleMatch "maxReadyTime" maxReadyTime "minServings" minServings "maxServings" maxServings "ignorePantry" ignorePantry "sort" sort "sortDirection" sortDirection "minCarbs" minCarbs "maxCarbs" maxCarbs "minProtein" minProtein "maxProtein" maxProtein "minCalories" minCalories "maxCalories" maxCalories "minFat" minFat "maxFat" maxFat "minAlcohol" minAlcohol "maxAlcohol" maxAlcohol "minCaffeine" minCaffeine "maxCaffeine" maxCaffeine "minCopper" minCopper "maxCopper" maxCopper "minCalcium" minCalcium "maxCalcium" maxCalcium "minCholine" minCholine "maxCholine" maxCholine "minCholesterol" minCholesterol "maxCholesterol" maxCholesterol "minFluoride" minFluoride "maxFluoride" maxFluoride "minSaturatedFat" minSaturatedFat "maxSaturatedFat" maxSaturatedFat "minVitaminA" minVitaminA "maxVitaminA" maxVitaminA "minVitaminC" minVitaminC "maxVitaminC" maxVitaminC "minVitaminD" minVitaminD "maxVitaminD" maxVitaminD "minVitaminE" minVitaminE "maxVitaminE" maxVitaminE "minVitaminK" minVitaminK "maxVitaminK" maxVitaminK "minVitaminB1" minVitaminB1 "maxVitaminB1" maxVitaminB1 "minVitaminB2" minVitaminB2 "maxVitaminB2" maxVitaminB2 "minVitaminB5" minVitaminB5 "maxVitaminB5" maxVitaminB5 "minVitaminB3" minVitaminB3 "maxVitaminB3" maxVitaminB3 "minVitaminB6" minVitaminB6 "maxVitaminB6" maxVitaminB6 "minVitaminB12" minVitaminB12 "maxVitaminB12" maxVitaminB12 "minFiber" minFiber "maxFiber" maxFiber "minFolate" minFolate "maxFolate" maxFolate "minFolicAcid" minFolicAcid "maxFolicAcid" maxFolicAcid "minIodine" minIodine "maxIodine" maxIodine "minIron" minIron "maxIron" maxIron "minMagnesium" minMagnesium "maxMagnesium" maxMagnesium "minManganese" minManganese "maxManganese" maxManganese "minPhosphorus" minPhosphorus "maxPhosphorus" maxPhosphorus "minPotassium" minPotassium "maxPotassium" maxPotassium "minSelenium" minSelenium "maxSelenium" maxSelenium "minSodium" minSodium "maxSodium" maxSodium "minSugar" minSugar "maxSugar" maxSugar "minZinc" minZinc "maxZinc" maxZinc "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec search-recipes search-recipes-200-response-spec
  "Search Recipes
  Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint."
  ([query string?, ] (search-recipes query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-recipes-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-recipes-200-response-spec res st/string-transformer)
        res))))


(defn-spec search-recipes-by-ingredients-with-http-info any?
  "Search Recipes by Ingredients
  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping)."
  ([ingredients string?, ] (search-recipes-by-ingredients-with-http-info ingredients nil))
  ([ingredients string?, {:keys [number ranking ignorePantry]} (s/map-of keyword? any?)]
   (check-required-params ingredients)
   (call-api "/recipes/findByIngredients" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"ingredients" ingredients "number" number "ranking" ranking "ignorePantry" ignorePantry }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec search-recipes-by-ingredients (s/coll-of search-recipes-by-ingredients-200-response-inner-spec)
  "Search Recipes by Ingredients
  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping)."
  ([ingredients string?, ] (search-recipes-by-ingredients ingredients nil))
  ([ingredients string?, optional-params any?]
   (let [res (:data (search-recipes-by-ingredients-with-http-info ingredients optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of search-recipes-by-ingredients-200-response-inner-spec) res st/string-transformer)
        res))))


(defn-spec search-recipes-by-nutrients-with-http-info any?
  "Search Recipes by Nutrients
  Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients."
  ([] (search-recipes-by-nutrients-with-http-info nil))
  ([{:keys [minCarbs maxCarbs minProtein maxProtein minCalories maxCalories minFat maxFat minAlcohol maxAlcohol minCaffeine maxCaffeine minCopper maxCopper minCalcium maxCalcium minCholine maxCholine minCholesterol maxCholesterol minFluoride maxFluoride minSaturatedFat maxSaturatedFat minVitaminA maxVitaminA minVitaminC maxVitaminC minVitaminD maxVitaminD minVitaminE maxVitaminE minVitaminK maxVitaminK minVitaminB1 maxVitaminB1 minVitaminB2 maxVitaminB2 minVitaminB5 maxVitaminB5 minVitaminB3 maxVitaminB3 minVitaminB6 maxVitaminB6 minVitaminB12 maxVitaminB12 minFiber maxFiber minFolate maxFolate minFolicAcid maxFolicAcid minIodine maxIodine minIron maxIron minMagnesium maxMagnesium minManganese maxManganese minPhosphorus maxPhosphorus minPotassium maxPotassium minSelenium maxSelenium minSodium maxSodium minSugar maxSugar minZinc maxZinc offset number random]} (s/map-of keyword? any?)]
   (call-api "/recipes/findByNutrients" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"minCarbs" minCarbs "maxCarbs" maxCarbs "minProtein" minProtein "maxProtein" maxProtein "minCalories" minCalories "maxCalories" maxCalories "minFat" minFat "maxFat" maxFat "minAlcohol" minAlcohol "maxAlcohol" maxAlcohol "minCaffeine" minCaffeine "maxCaffeine" maxCaffeine "minCopper" minCopper "maxCopper" maxCopper "minCalcium" minCalcium "maxCalcium" maxCalcium "minCholine" minCholine "maxCholine" maxCholine "minCholesterol" minCholesterol "maxCholesterol" maxCholesterol "minFluoride" minFluoride "maxFluoride" maxFluoride "minSaturatedFat" minSaturatedFat "maxSaturatedFat" maxSaturatedFat "minVitaminA" minVitaminA "maxVitaminA" maxVitaminA "minVitaminC" minVitaminC "maxVitaminC" maxVitaminC "minVitaminD" minVitaminD "maxVitaminD" maxVitaminD "minVitaminE" minVitaminE "maxVitaminE" maxVitaminE "minVitaminK" minVitaminK "maxVitaminK" maxVitaminK "minVitaminB1" minVitaminB1 "maxVitaminB1" maxVitaminB1 "minVitaminB2" minVitaminB2 "maxVitaminB2" maxVitaminB2 "minVitaminB5" minVitaminB5 "maxVitaminB5" maxVitaminB5 "minVitaminB3" minVitaminB3 "maxVitaminB3" maxVitaminB3 "minVitaminB6" minVitaminB6 "maxVitaminB6" maxVitaminB6 "minVitaminB12" minVitaminB12 "maxVitaminB12" maxVitaminB12 "minFiber" minFiber "maxFiber" maxFiber "minFolate" minFolate "maxFolate" maxFolate "minFolicAcid" minFolicAcid "maxFolicAcid" maxFolicAcid "minIodine" minIodine "maxIodine" maxIodine "minIron" minIron "maxIron" maxIron "minMagnesium" minMagnesium "maxMagnesium" maxMagnesium "minManganese" minManganese "maxManganese" maxManganese "minPhosphorus" minPhosphorus "maxPhosphorus" maxPhosphorus "minPotassium" minPotassium "maxPotassium" maxPotassium "minSelenium" minSelenium "maxSelenium" maxSelenium "minSodium" minSodium "maxSodium" maxSodium "minSugar" minSugar "maxSugar" maxSugar "minZinc" minZinc "maxZinc" maxZinc "offset" offset "number" number "random" random }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec search-recipes-by-nutrients (s/coll-of search-recipes-by-nutrients-200-response-inner-spec)
  "Search Recipes by Nutrients
  Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients."
  ([] (search-recipes-by-nutrients nil))
  ([optional-params any?]
   (let [res (:data (search-recipes-by-nutrients-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of search-recipes-by-nutrients-200-response-inner-spec) res st/string-transformer)
        res))))


(defn-spec summarize-recipe-with-http-info any?
  "Summarize Recipe
  Automatically generate a short description that summarizes key information about the recipe."
  [id int?]
  (check-required-params id)
  (call-api "/recipes/{id}/summary" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec summarize-recipe summarize-recipe-200-response-spec
  "Summarize Recipe
  Automatically generate a short description that summarizes key information about the recipe."
  [id int?]
  (let [res (:data (summarize-recipe-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode summarize-recipe-200-response-spec res st/string-transformer)
       res)))


(defn-spec visualize-equipment-with-http-info any?
  "Equipment Widget
  Visualize the equipment used to make a recipe."
  ([instructions string?, ] (visualize-equipment-with-http-info instructions nil))
  ([instructions string?, {:keys [view defaultCss showBacklink]} (s/map-of keyword? any?)]
   (check-required-params instructions)
   (call-api "/recipes/visualizeEquipment" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"instructions" instructions "view" view "defaultCss" defaultCss "showBacklink" showBacklink }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-equipment string?
  "Equipment Widget
  Visualize the equipment used to make a recipe."
  ([instructions string?, ] (visualize-equipment instructions nil))
  ([instructions string?, optional-params any?]
   (let [res (:data (visualize-equipment-with-http-info instructions optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-price-breakdown-with-http-info any?
  "Price Breakdown Widget
  Visualize the price breakdown of a recipe."
  ([ingredientList string?, servings float?, ] (visualize-price-breakdown-with-http-info ingredientList servings nil))
  ([ingredientList string?, servings float?, {:keys [language mode defaultCss showBacklink]} (s/map-of keyword? any?)]
   (check-required-params ingredientList servings)
   (call-api "/recipes/visualizePriceEstimator" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"language" language }
              :form-params   {"ingredientList" ingredientList "servings" servings "mode" mode "defaultCss" defaultCss "showBacklink" showBacklink }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-price-breakdown string?
  "Price Breakdown Widget
  Visualize the price breakdown of a recipe."
  ([ingredientList string?, servings float?, ] (visualize-price-breakdown ingredientList servings nil))
  ([ingredientList string?, servings float?, optional-params any?]
   (let [res (:data (visualize-price-breakdown-with-http-info ingredientList servings optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-equipment-by-id-with-http-info any?
  "Equipment by ID Widget
  Visualize a recipe's equipment list."
  ([id int?, ] (visualize-recipe-equipment-by-id-with-http-info id nil))
  ([id int?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/equipmentWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-recipe-equipment-by-id string?
  "Equipment by ID Widget
  Visualize a recipe's equipment list."
  ([id int?, ] (visualize-recipe-equipment-by-id id nil))
  ([id int?, optional-params any?]
   (let [res (:data (visualize-recipe-equipment-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-ingredients-by-id-with-http-info any?
  "Ingredients by ID Widget
  Visualize a recipe's ingredient list."
  ([id int?, ] (visualize-recipe-ingredients-by-id-with-http-info id nil))
  ([id int?, {:keys [defaultCss measure]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/ingredientWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss "measure" measure }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-recipe-ingredients-by-id string?
  "Ingredients by ID Widget
  Visualize a recipe's ingredient list."
  ([id int?, ] (visualize-recipe-ingredients-by-id id nil))
  ([id int?, optional-params any?]
   (let [res (:data (visualize-recipe-ingredients-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-nutrition-with-http-info any?
  "Recipe Nutrition Widget
  Visualize a recipe's nutritional information as HTML including CSS."
  ([ingredientList string?, servings float?, ] (visualize-recipe-nutrition-with-http-info ingredientList servings nil))
  ([ingredientList string?, servings float?, {:keys [language defaultCss showBacklink]} (s/map-of keyword? any?)]
   (check-required-params ingredientList servings)
   (call-api "/recipes/visualizeNutrition" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"language" language }
              :form-params   {"ingredientList" ingredientList "servings" servings "defaultCss" defaultCss "showBacklink" showBacklink }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-recipe-nutrition string?
  "Recipe Nutrition Widget
  Visualize a recipe's nutritional information as HTML including CSS."
  ([ingredientList string?, servings float?, ] (visualize-recipe-nutrition ingredientList servings nil))
  ([ingredientList string?, servings float?, optional-params any?]
   (let [res (:data (visualize-recipe-nutrition-with-http-info ingredientList servings optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-nutrition-by-id-with-http-info any?
  "Recipe Nutrition by ID Widget
  Visualize a recipe's nutritional information as HTML including CSS."
  ([id int?, ] (visualize-recipe-nutrition-by-id-with-http-info id nil))
  ([id int?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/nutritionWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-recipe-nutrition-by-id string?
  "Recipe Nutrition by ID Widget
  Visualize a recipe's nutritional information as HTML including CSS."
  ([id int?, ] (visualize-recipe-nutrition-by-id id nil))
  ([id int?, optional-params any?]
   (let [res (:data (visualize-recipe-nutrition-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-price-breakdown-by-id-with-http-info any?
  "Price Breakdown by ID Widget
  Visualize a recipe's price breakdown."
  ([id int?, ] (visualize-recipe-price-breakdown-by-id-with-http-info id nil))
  ([id int?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/priceBreakdownWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-recipe-price-breakdown-by-id string?
  "Price Breakdown by ID Widget
  Visualize a recipe's price breakdown."
  ([id int?, ] (visualize-recipe-price-breakdown-by-id id nil))
  ([id int?, optional-params any?]
   (let [res (:data (visualize-recipe-price-breakdown-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-taste-with-http-info any?
  "Recipe Taste Widget
  Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!"
  ([ingredientList string?, ] (visualize-recipe-taste-with-http-info ingredientList nil))
  ([ingredientList string?, {:keys [language normalize rgb]} (s/map-of keyword? any?)]
   (check-required-params ingredientList)
   (call-api "/recipes/visualizeTaste" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"language" language }
              :form-params   {"ingredientList" ingredientList "normalize" normalize "rgb" rgb }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-recipe-taste string?
  "Recipe Taste Widget
  Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!"
  ([ingredientList string?, ] (visualize-recipe-taste ingredientList nil))
  ([ingredientList string?, optional-params any?]
   (let [res (:data (visualize-recipe-taste-with-http-info ingredientList optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-taste-by-id-with-http-info any?
  "Recipe Taste by ID Widget
  Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty."
  ([id int?, ] (visualize-recipe-taste-by-id-with-http-info id nil))
  ([id int?, {:keys [normalize rgb]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/tasteWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"normalize" normalize "rgb" rgb }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-recipe-taste-by-id string?
  "Recipe Taste by ID Widget
  Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty."
  ([id int?, ] (visualize-recipe-taste-by-id id nil))
  ([id int?, optional-params any?]
   (let [res (:data (visualize-recipe-taste-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


