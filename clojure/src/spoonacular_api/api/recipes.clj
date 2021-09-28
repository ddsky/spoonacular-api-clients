(ns spoonacular-api.api.recipes
  (:require [spoonacular-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [spoonacular-api.specs.inline-response-200-31-comparable-products :refer :all]
            [spoonacular-api.specs.inline-response-200-52-results :refer :all]
            [spoonacular-api.specs.inline-response-200-38-days :refer :all]
            [spoonacular-api.specs.inline-response-200-40-days :refer :all]
            [spoonacular-api.specs.inline-response-200-38-items :refer :all]
            [spoonacular-api.specs.inline-response-200-results :refer :all]
            [spoonacular-api.specs.inline-response-200-3-extended-ingredients :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-properties :refer :all]
            [spoonacular-api.specs.inline-response-200-3-measures-metric :refer :all]
            [spoonacular-api.specs.inline-response-200-41-aisles :refer :all]
            [spoonacular-api.specs.inline-response-200-48-recipes :refer :all]
            [spoonacular-api.specs.inline-response-200-13-ingredients-1 :refer :all]
            [spoonacular-api.specs.inline-response-200-31-comparable-products-protein :refer :all]
            [spoonacular-api.specs.inline-response-200-44-product-matches :refer :all]
            [spoonacular-api.specs.inline-response-200-28-servings :refer :all]
            [spoonacular-api.specs.inline-response-200-48-nutrition :refer :all]
            [spoonacular-api.specs.inline-response-200-30-ingredients :refer :all]
            [spoonacular-api.specs.inline-response-200-38-value :refer :all]
            [spoonacular-api.specs.inline-response-200-40-value :refer :all]
            [spoonacular-api.specs.inline-response-200-41-measures :refer :all]
            [spoonacular-api.specs.inline-response-200-10-amount :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-caloric-breakdown :refer :all]
            [spoonacular-api.specs.inline-response-200-9 :refer :all]
            [spoonacular-api.specs.inline-response-200-3-wine-pairing :refer :all]
            [spoonacular-api.specs.inline-response-200-8 :refer :all]
            [spoonacular-api.specs.inline-response-200-7 :refer :all]
            [spoonacular-api.specs.inline-response-200-6 :refer :all]
            [spoonacular-api.specs.inline-response-200-5 :refer :all]
            [spoonacular-api.specs.inline-response-200-4 :refer :all]
            [spoonacular-api.specs.inline-response-200-3 :refer :all]
            [spoonacular-api.specs.inline-response-200 :refer :all]
            [spoonacular-api.specs.inline-response-200-32-results :refer :all]
            [spoonacular-api.specs.inline-response-200-46-recommended-wines :refer :all]
            [spoonacular-api.specs.inline-response-200-19 :refer :all]
            [spoonacular-api.specs.inline-response-200-18 :refer :all]
            [spoonacular-api.specs.inline-response-200-17 :refer :all]
            [spoonacular-api.specs.inline-response-200-16 :refer :all]
            [spoonacular-api.specs.inline-response-200-29-custom-foods :refer :all]
            [spoonacular-api.specs.inline-response-200-15 :refer :all]
            [spoonacular-api.specs.inline-response-200-14 :refer :all]
            [spoonacular-api.specs.inline-response-200-13 :refer :all]
            [spoonacular-api.specs.inline-response-200-12 :refer :all]
            [spoonacular-api.specs.inline-response-200-10-amount-metric :refer :all]
            [spoonacular-api.specs.inline-response-200-11 :refer :all]
            [spoonacular-api.specs.inline-response-200-10 :refer :all]
            [spoonacular-api.specs.inline-response-200-40-items :refer :all]
            [spoonacular-api.specs.inline-response-200-18-dishes :refer :all]
            [spoonacular-api.specs.inline-response-200-6-recipes :refer :all]
            [spoonacular-api.specs.inline-response-200-13-parsed-instructions :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-nutrients :refer :all]
            [spoonacular-api.specs.inline-response-200-13-steps :refer :all]
            [spoonacular-api.specs.inline-response-200-3-measures :refer :all]
            [spoonacular-api.specs.inline-response-200-48-category :refer :all]
            [spoonacular-api.specs.inline-response-200-38-nutrition-summary-nutrients :refer :all]
            [spoonacular-api.specs.inline-response-200-18-ingredients :refer :all]
            [spoonacular-api.specs.inline-response-200-41-items :refer :all]
            [spoonacular-api.specs.inline-response-200-22-nutrition :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-estimated-cost :refer :all]
            [spoonacular-api.specs.inline-response-200-21-calories :refer :all]
            [spoonacular-api.specs.inline-response-200-48-nutrition-calories-confidence-range95-percent :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-weight-per-serving :refer :all]
            [spoonacular-api.specs.inline-response-200-39 :refer :all]
            [spoonacular-api.specs.inline-object :refer :all]
            [spoonacular-api.specs.inline-response-200-38 :refer :all]
            [spoonacular-api.specs.inline-response-200-37 :refer :all]
            [spoonacular-api.specs.inline-response-200-3-wine-pairing-product-matches :refer :all]
            [spoonacular-api.specs.inline-response-200-36 :refer :all]
            [spoonacular-api.specs.inline-response-200-35 :refer :all]
            [spoonacular-api.specs.inline-response-200-34 :refer :all]
            [spoonacular-api.specs.inline-response-200-33 :refer :all]
            [spoonacular-api.specs.inline-response-200-32 :refer :all]
            [spoonacular-api.specs.inline-response-200-31 :refer :all]
            [spoonacular-api.specs.inline-response-200-30 :refer :all]
            [spoonacular-api.specs.inline-response-200-52-search-results :refer :all]
            [spoonacular-api.specs.inline-response-200-37-nutrients :refer :all]
            [spoonacular-api.specs.inline-response-200-11-ingredients :refer :all]
            [spoonacular-api.specs.inline-response-200-38-nutrition-summary :refer :all]
            [spoonacular-api.specs.inline-response-200-10-ingredients :refer :all]
            [spoonacular-api.specs.inline-response-200-25-results :refer :all]
            [spoonacular-api.specs.inline-response-200-56-suggests :refer :all]
            [spoonacular-api.specs.inline-response-200-13-ingredients :refer :all]
            [spoonacular-api.specs.inline-response-200-23-ingredients :refer :all]
            [spoonacular-api.specs.inline-response-200-29 :refer :all]
            [spoonacular-api.specs.inline-response-200-28 :refer :all]
            [spoonacular-api.specs.inline-response-200-27 :refer :all]
            [spoonacular-api.specs.inline-response-200-2 :refer :all]
            [spoonacular-api.specs.inline-response-200-21-calories-confidence-range95-percent :refer :all]
            [spoonacular-api.specs.inline-response-200-26 :refer :all]
            [spoonacular-api.specs.inline-response-200-1 :refer :all]
            [spoonacular-api.specs.inline-response-200-25 :refer :all]
            [spoonacular-api.specs.inline-response-200-24 :refer :all]
            [spoonacular-api.specs.inline-response-200-23 :refer :all]
            [spoonacular-api.specs.inline-response-200-22 :refer :all]
            [spoonacular-api.specs.inline-response-200-21 :refer :all]
            [spoonacular-api.specs.inline-response-200-20 :refer :all]
            [spoonacular-api.specs.-food-ingredients-map-products :refer :all]
            [spoonacular-api.specs.inline-object-3 :refer :all]
            [spoonacular-api.specs.inline-response-200-51 :refer :all]
            [spoonacular-api.specs.-recipes-find-by-ingredients-missed-ingredients :refer :all]
            [spoonacular-api.specs.inline-object-2 :refer :all]
            [spoonacular-api.specs.inline-response-200-50 :refer :all]
            [spoonacular-api.specs.inline-object-5 :refer :all]
            [spoonacular-api.specs.inline-object-4 :refer :all]
            [spoonacular-api.specs.inline-object-7 :refer :all]
            [spoonacular-api.specs.inline-response-200-28-ingredients :refer :all]
            [spoonacular-api.specs.inline-object-6 :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition :refer :all]
            [spoonacular-api.specs.inline-object-8 :refer :all]
            [spoonacular-api.specs.inline-object-1 :refer :all]
            [spoonacular-api.specs.inline-response-200-53-videos :refer :all]
            [spoonacular-api.specs.inline-response-200-48-nutrition-calories :refer :all]
            [spoonacular-api.specs.inline-response-200-28-nutrition :refer :all]
            [spoonacular-api.specs.inline-response-200-56 :refer :all]
            [spoonacular-api.specs.inline-response-200-55 :refer :all]
            [spoonacular-api.specs.inline-response-200-54 :refer :all]
            [spoonacular-api.specs.inline-response-200-53 :refer :all]
            [spoonacular-api.specs.inline-response-200-52 :refer :all]
            [spoonacular-api.specs.inline-response-200-40 :refer :all]
            [spoonacular-api.specs.inline-response-200-35-menu-items :refer :all]
            [spoonacular-api.specs.inline-response-200-49 :refer :all]
            [spoonacular-api.specs.inline-response-200-48 :refer :all]
            [spoonacular-api.specs.inline-response-200-47 :refer :all]
            [spoonacular-api.specs.inline-response-200-46 :refer :all]
            [spoonacular-api.specs.inline-response-200-45 :refer :all]
            [spoonacular-api.specs.inline-response-200-44 :refer :all]
            [spoonacular-api.specs.inline-response-200-43 :refer :all]
            [spoonacular-api.specs.inline-response-200-42 :refer :all]
            [spoonacular-api.specs.inline-response-200-41 :refer :all]
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

(defn-spec analyze-a-recipe-search-query inline-response-200-18-spec
  "Analyze a Recipe Search Query
  Parse a recipe search query to find out its intention."
  [q string?]
  (let [res (:data (analyze-a-recipe-search-query-with-http-info q))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-18-spec res st/string-transformer)
       res)))


(defn-spec analyze-recipe-instructions-with-http-info any?
  "Analyze Recipe Instructions
  This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in."
  ([] (analyze-recipe-instructions-with-http-info nil))
  ([{:keys [Content-Type]} (s/map-of keyword? any?)]
   (call-api "/recipes/analyzeInstructions" :post
             {:path-params   {}
              :header-params {"Content-Type" Content-Type }
              :query-params  {}
              :form-params   {}
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec analyze-recipe-instructions inline-response-200-16-spec
  "Analyze Recipe Instructions
  This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in."
  ([] (analyze-recipe-instructions nil))
  ([optional-params any?]
   (let [res (:data (analyze-recipe-instructions-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-16-spec res st/string-transformer)
        res))))


(defn-spec autocomplete-recipe-search-with-http-info any?
  "Autocomplete Recipe Search
  Autocomplete a partial input to suggest possible recipe names."
  ([] (autocomplete-recipe-search-with-http-info nil))
  ([{:keys [query number]} (s/map-of keyword? any?)]
   (call-api "/recipes/autocomplete" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec autocomplete-recipe-search (s/coll-of inline-response-200-7-spec)
  "Autocomplete Recipe Search
  Autocomplete a partial input to suggest possible recipe names."
  ([] (autocomplete-recipe-search nil))
  ([optional-params any?]
   (let [res (:data (autocomplete-recipe-search-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of inline-response-200-7-spec) res st/string-transformer)
        res))))


(defn-spec classify-cuisine-with-http-info any?
  "Classify Cuisine
  Classify the recipe's cuisine."
  ([] (classify-cuisine-with-http-info nil))
  ([{:keys [Content-Type]} (s/map-of keyword? any?)]
   (call-api "/recipes/cuisine" :post
             {:path-params   {}
              :header-params {"Content-Type" Content-Type }
              :query-params  {}
              :form-params   {}
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec classify-cuisine inline-response-200-17-spec
  "Classify Cuisine
  Classify the recipe's cuisine."
  ([] (classify-cuisine nil))
  ([optional-params any?]
   (let [res (:data (classify-cuisine-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-17-spec res st/string-transformer)
        res))))


(defn-spec compute-glycemic-load-with-http-info any?
  "Compute Glycemic Load
  Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load."
  ([inline-object inline-object, ] (compute-glycemic-load-with-http-info inline-object nil))
  ([inline-object inline-object, {:keys [language]} (s/map-of keyword? any?)]
   (check-required-params inline-object)
   (call-api "/food/ingredients/glycemicLoad" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"language" language }
              :form-params   {}
              :body-param    inline-object
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec compute-glycemic-load inline-response-200-23-spec
  "Compute Glycemic Load
  Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load."
  ([inline-object inline-object, ] (compute-glycemic-load inline-object nil))
  ([inline-object inline-object, optional-params any?]
   (let [res (:data (compute-glycemic-load-with-http-info inline-object optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-23-spec res st/string-transformer)
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

(defn-spec convert-amounts inline-response-200-19-spec
  "Convert Amounts
  Convert amounts like \"2 cups of flour to grams\"."
  [ingredientName string?, sourceAmount float?, sourceUnit string?, targetUnit string?]
  (let [res (:data (convert-amounts-with-http-info ingredientName sourceAmount sourceUnit targetUnit))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-19-spec res st/string-transformer)
       res)))


(defn-spec create-recipe-card-with-http-info any?
  "Create Recipe Card
  Generate a recipe card for a recipe."
  ([] (create-recipe-card-with-http-info nil))
  ([{:keys [Content-Type]} (s/map-of keyword? any?)]
   (call-api "/recipes/visualizeRecipe" :post
             {:path-params   {}
              :header-params {"Content-Type" Content-Type }
              :query-params  {}
              :form-params   {}
              :content-types ["multipart/form-data"]
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec create-recipe-card inline-response-200-15-spec
  "Create Recipe Card
  Generate a recipe card for a recipe."
  ([] (create-recipe-card nil))
  ([optional-params any?]
   (let [res (:data (create-recipe-card-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-15-spec res st/string-transformer)
        res))))


(defn-spec equipment-by-id-image-with-http-info any?
  "Equipment by ID Image
  Visualize a recipe's equipment list as an image."
  [id float?]
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
  [id float?]
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

(defn-spec extract-recipe-from-website inline-response-200-3-spec
  "Extract Recipe from Website
  This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website."
  ([url string?, ] (extract-recipe-from-website url nil))
  ([url string?, optional-params any?]
   (let [res (:data (extract-recipe-from-website-with-http-info url optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-3-spec res st/string-transformer)
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

(defn-spec get-analyzed-recipe-instructions inline-response-200-13-spec
  "Get Analyzed Recipe Instructions
  Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required."
  ([id int?, ] (get-analyzed-recipe-instructions id nil))
  ([id int?, optional-params any?]
   (let [res (:data (get-analyzed-recipe-instructions-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-13-spec res st/string-transformer)
        res))))


(defn-spec get-random-recipes-with-http-info any?
  "Get Random Recipes
  Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random."
  ([] (get-random-recipes-with-http-info nil))
  ([{:keys [limitLicense tags number]} (s/map-of keyword? any?)]
   (call-api "/recipes/random" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"limitLicense" limitLicense "tags" tags "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec get-random-recipes inline-response-200-6-spec
  "Get Random Recipes
  Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random."
  ([] (get-random-recipes nil))
  ([optional-params any?]
   (let [res (:data (get-random-recipes-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-6-spec res st/string-transformer)
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

(defn-spec get-recipe-equipment-by-id inline-response-200-9-spec
  "Equipment by ID
  Get a recipe's equipment list."
  [id int?]
  (let [res (:data (get-recipe-equipment-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-9-spec res st/string-transformer)
       res)))


(defn-spec get-recipe-information-with-http-info any?
  "Get Recipe Information
  Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc."
  ([id int?, ] (get-recipe-information-with-http-info id nil))
  ([id int?, {:keys [includeNutrition]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/information" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"includeNutrition" includeNutrition }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec get-recipe-information inline-response-200-3-spec
  "Get Recipe Information
  Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc."
  ([id int?, ] (get-recipe-information id nil))
  ([id int?, optional-params any?]
   (let [res (:data (get-recipe-information-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-3-spec res st/string-transformer)
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

(defn-spec get-recipe-information-bulk (s/coll-of inline-response-200-4-spec)
  "Get Recipe Information Bulk
  Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster."
  ([ids string?, ] (get-recipe-information-bulk ids nil))
  ([ids string?, optional-params any?]
   (let [res (:data (get-recipe-information-bulk-with-http-info ids optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of inline-response-200-4-spec) res st/string-transformer)
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

(defn-spec get-recipe-ingredients-by-id inline-response-200-11-spec
  "Ingredients by ID
  Get a recipe's ingredient list."
  [id int?]
  (let [res (:data (get-recipe-ingredients-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-11-spec res st/string-transformer)
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

(defn-spec get-recipe-nutrition-widget-by-id inline-response-200-12-spec
  "Nutrition by ID
  Get a recipe's nutrition data."
  [id int?]
  (let [res (:data (get-recipe-nutrition-widget-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-12-spec res st/string-transformer)
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

(defn-spec get-recipe-price-breakdown-by-id inline-response-200-10-spec
  "Price Breakdown by ID
  Get a recipe's price breakdown data."
  [id int?]
  (let [res (:data (get-recipe-price-breakdown-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-10-spec res st/string-transformer)
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

(defn-spec get-recipe-taste-by-id inline-response-200-8-spec
  "Taste by ID
  Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty."
  ([id int?, ] (get-recipe-taste-by-id id nil))
  ([id int?, optional-params any?]
   (let [res (:data (get-recipe-taste-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-8-spec res st/string-transformer)
        res))))


(defn-spec get-similar-recipes-with-http-info any?
  "Get Similar Recipes
  Find recipes which are similar to the given one."
  ([id int?, ] (get-similar-recipes-with-http-info id nil))
  ([id int?, {:keys [number limitLicense]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/similar" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"number" number "limitLicense" limitLicense }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec get-similar-recipes (s/coll-of inline-response-200-5-spec)
  "Get Similar Recipes
  Find recipes which are similar to the given one."
  ([id int?, ] (get-similar-recipes id nil))
  ([id int?, optional-params any?]
   (let [res (:data (get-similar-recipes-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of inline-response-200-5-spec) res st/string-transformer)
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

(defn-spec guess-nutrition-by-dish-name inline-response-200-21-spec
  "Guess Nutrition by Dish Name
  Estimate the macronutrients of a dish based on its title."
  [title string?]
  (let [res (:data (guess-nutrition-by-dish-name-with-http-info title))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-21-spec res st/string-transformer)
       res)))


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


(defn-spec parse-ingredients-with-http-info any?
  "Parse Ingredients
  Extract an ingredient from plain text."
  ([] (parse-ingredients-with-http-info nil))
  ([{:keys [Content-Type language]} (s/map-of keyword? any?)]
   (call-api "/recipes/parseIngredients" :post
             {:path-params   {}
              :header-params {"Content-Type" Content-Type }
              :query-params  {"language" language }
              :form-params   {}
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec parse-ingredients (s/coll-of inline-response-200-20-spec)
  "Parse Ingredients
  Extract an ingredient from plain text."
  ([] (parse-ingredients nil))
  ([optional-params any?]
   (let [res (:data (parse-ingredients-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of inline-response-200-20-spec) res st/string-transformer)
        res))))


(defn-spec price-breakdown-by-id-image-with-http-info any?
  "Price Breakdown by ID Image
  Visualize a recipe's price breakdown."
  [id float?]
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
  [id float?]
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

(defn-spec quick-answer inline-response-200-49-spec
  "Quick Answer
  Answer a nutrition related natural language question."
  [q string?]
  (let [res (:data (quick-answer-with-http-info q))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-49-spec res st/string-transformer)
       res)))


(defn-spec recipe-nutrition-by-id-image-with-http-info any?
  "Recipe Nutrition by ID Image
  Visualize a recipe's nutritional information as an image."
  [id float?]
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
  [id float?]
  (let [res (:data (recipe-nutrition-by-id-image-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec recipe-nutrition-label-image-with-http-info any?
  "Recipe Nutrition Label Image
  Get a recipe's nutrition label as an image."
  ([id float?, ] (recipe-nutrition-label-image-with-http-info id nil))
  ([id float?, {:keys [showOptionalNutrients showZeroValues showIngredients]} (s/map-of keyword? any?)]
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
  ([id float?, ] (recipe-nutrition-label-image id nil))
  ([id float?, optional-params any?]
   (let [res (:data (recipe-nutrition-label-image-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec recipe-nutrition-label-widget-with-http-info any?
  "Recipe Nutrition Label Widget
  Get a recipe's nutrition label as an HTML widget."
  ([id float?, ] (recipe-nutrition-label-widget-with-http-info id nil))
  ([id float?, {:keys [defaultCss showOptionalNutrients showZeroValues showIngredients]} (s/map-of keyword? any?)]
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
  ([id float?, ] (recipe-nutrition-label-widget id nil))
  ([id float?, optional-params any?]
   (let [res (:data (recipe-nutrition-label-widget-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec recipe-taste-by-id-image-with-http-info any?
  "Recipe Taste by ID Image
  Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty."
  ([id float?, ] (recipe-taste-by-id-image-with-http-info id nil))
  ([id float?, {:keys [normalize rgb]} (s/map-of keyword? any?)]
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
  ([id float?, ] (recipe-taste-by-id-image id nil))
  ([id float?, optional-params any?]
   (let [res (:data (recipe-taste-by-id-image-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-recipes-with-http-info any?
  "Search Recipes
  Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint."
  ([] (search-recipes-with-http-info nil))
  ([{:keys [query cuisine excludeCuisine diet intolerances equipment includeIngredients excludeIngredients type instructionsRequired fillIngredients addRecipeInformation addRecipeNutrition author tags recipeBoxId titleMatch maxReadyTime ignorePantry sort sortDirection minCarbs maxCarbs minProtein maxProtein minCalories maxCalories minFat maxFat minAlcohol maxAlcohol minCaffeine maxCaffeine minCopper maxCopper minCalcium maxCalcium minCholine maxCholine minCholesterol maxCholesterol minFluoride maxFluoride minSaturatedFat maxSaturatedFat minVitaminA maxVitaminA minVitaminC maxVitaminC minVitaminD maxVitaminD minVitaminE maxVitaminE minVitaminK maxVitaminK minVitaminB1 maxVitaminB1 minVitaminB2 maxVitaminB2 minVitaminB5 maxVitaminB5 minVitaminB3 maxVitaminB3 minVitaminB6 maxVitaminB6 minVitaminB12 maxVitaminB12 minFiber maxFiber minFolate maxFolate minFolicAcid maxFolicAcid minIodine maxIodine minIron maxIron minMagnesium maxMagnesium minManganese maxManganese minPhosphorus maxPhosphorus minPotassium maxPotassium minSelenium maxSelenium minSodium maxSodium minSugar maxSugar minZinc maxZinc offset number limitLicense]} (s/map-of keyword? any?)]
   (call-api "/recipes/complexSearch" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "cuisine" cuisine "excludeCuisine" excludeCuisine "diet" diet "intolerances" intolerances "equipment" equipment "includeIngredients" includeIngredients "excludeIngredients" excludeIngredients "type" type "instructionsRequired" instructionsRequired "fillIngredients" fillIngredients "addRecipeInformation" addRecipeInformation "addRecipeNutrition" addRecipeNutrition "author" author "tags" tags "recipeBoxId" recipeBoxId "titleMatch" titleMatch "maxReadyTime" maxReadyTime "ignorePantry" ignorePantry "sort" sort "sortDirection" sortDirection "minCarbs" minCarbs "maxCarbs" maxCarbs "minProtein" minProtein "maxProtein" maxProtein "minCalories" minCalories "maxCalories" maxCalories "minFat" minFat "maxFat" maxFat "minAlcohol" minAlcohol "maxAlcohol" maxAlcohol "minCaffeine" minCaffeine "maxCaffeine" maxCaffeine "minCopper" minCopper "maxCopper" maxCopper "minCalcium" minCalcium "maxCalcium" maxCalcium "minCholine" minCholine "maxCholine" maxCholine "minCholesterol" minCholesterol "maxCholesterol" maxCholesterol "minFluoride" minFluoride "maxFluoride" maxFluoride "minSaturatedFat" minSaturatedFat "maxSaturatedFat" maxSaturatedFat "minVitaminA" minVitaminA "maxVitaminA" maxVitaminA "minVitaminC" minVitaminC "maxVitaminC" maxVitaminC "minVitaminD" minVitaminD "maxVitaminD" maxVitaminD "minVitaminE" minVitaminE "maxVitaminE" maxVitaminE "minVitaminK" minVitaminK "maxVitaminK" maxVitaminK "minVitaminB1" minVitaminB1 "maxVitaminB1" maxVitaminB1 "minVitaminB2" minVitaminB2 "maxVitaminB2" maxVitaminB2 "minVitaminB5" minVitaminB5 "maxVitaminB5" maxVitaminB5 "minVitaminB3" minVitaminB3 "maxVitaminB3" maxVitaminB3 "minVitaminB6" minVitaminB6 "maxVitaminB6" maxVitaminB6 "minVitaminB12" minVitaminB12 "maxVitaminB12" maxVitaminB12 "minFiber" minFiber "maxFiber" maxFiber "minFolate" minFolate "maxFolate" maxFolate "minFolicAcid" minFolicAcid "maxFolicAcid" maxFolicAcid "minIodine" minIodine "maxIodine" maxIodine "minIron" minIron "maxIron" maxIron "minMagnesium" minMagnesium "maxMagnesium" maxMagnesium "minManganese" minManganese "maxManganese" maxManganese "minPhosphorus" minPhosphorus "maxPhosphorus" maxPhosphorus "minPotassium" minPotassium "maxPotassium" maxPotassium "minSelenium" minSelenium "maxSelenium" maxSelenium "minSodium" minSodium "maxSodium" maxSodium "minSugar" minSugar "maxSugar" maxSugar "minZinc" minZinc "maxZinc" maxZinc "offset" offset "number" number "limitLicense" limitLicense }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec search-recipes inline-response-200-spec
  "Search Recipes
  Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint."
  ([] (search-recipes nil))
  ([optional-params any?]
   (let [res (:data (search-recipes-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-spec res st/string-transformer)
        res))))


(defn-spec search-recipes-by-ingredients-with-http-info any?
  "Search Recipes by Ingredients
  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping)."
  ([] (search-recipes-by-ingredients-with-http-info nil))
  ([{:keys [ingredients number limitLicense ranking ignorePantry]} (s/map-of keyword? any?)]
   (call-api "/recipes/findByIngredients" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"ingredients" ingredients "number" number "limitLicense" limitLicense "ranking" ranking "ignorePantry" ignorePantry }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec search-recipes-by-ingredients (s/coll-of inline-response-200-1-spec)
  "Search Recipes by Ingredients
  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping)."
  ([] (search-recipes-by-ingredients nil))
  ([optional-params any?]
   (let [res (:data (search-recipes-by-ingredients-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of inline-response-200-1-spec) res st/string-transformer)
        res))))


(defn-spec search-recipes-by-nutrients-with-http-info any?
  "Search Recipes by Nutrients
  Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients."
  ([] (search-recipes-by-nutrients-with-http-info nil))
  ([{:keys [minCarbs maxCarbs minProtein maxProtein minCalories maxCalories minFat maxFat minAlcohol maxAlcohol minCaffeine maxCaffeine minCopper maxCopper minCalcium maxCalcium minCholine maxCholine minCholesterol maxCholesterol minFluoride maxFluoride minSaturatedFat maxSaturatedFat minVitaminA maxVitaminA minVitaminC maxVitaminC minVitaminD maxVitaminD minVitaminE maxVitaminE minVitaminK maxVitaminK minVitaminB1 maxVitaminB1 minVitaminB2 maxVitaminB2 minVitaminB5 maxVitaminB5 minVitaminB3 maxVitaminB3 minVitaminB6 maxVitaminB6 minVitaminB12 maxVitaminB12 minFiber maxFiber minFolate maxFolate minFolicAcid maxFolicAcid minIodine maxIodine minIron maxIron minMagnesium maxMagnesium minManganese maxManganese minPhosphorus maxPhosphorus minPotassium maxPotassium minSelenium maxSelenium minSodium maxSodium minSugar maxSugar minZinc maxZinc offset number random limitLicense]} (s/map-of keyword? any?)]
   (call-api "/recipes/findByNutrients" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"minCarbs" minCarbs "maxCarbs" maxCarbs "minProtein" minProtein "maxProtein" maxProtein "minCalories" minCalories "maxCalories" maxCalories "minFat" minFat "maxFat" maxFat "minAlcohol" minAlcohol "maxAlcohol" maxAlcohol "minCaffeine" minCaffeine "maxCaffeine" maxCaffeine "minCopper" minCopper "maxCopper" maxCopper "minCalcium" minCalcium "maxCalcium" maxCalcium "minCholine" minCholine "maxCholine" maxCholine "minCholesterol" minCholesterol "maxCholesterol" maxCholesterol "minFluoride" minFluoride "maxFluoride" maxFluoride "minSaturatedFat" minSaturatedFat "maxSaturatedFat" maxSaturatedFat "minVitaminA" minVitaminA "maxVitaminA" maxVitaminA "minVitaminC" minVitaminC "maxVitaminC" maxVitaminC "minVitaminD" minVitaminD "maxVitaminD" maxVitaminD "minVitaminE" minVitaminE "maxVitaminE" maxVitaminE "minVitaminK" minVitaminK "maxVitaminK" maxVitaminK "minVitaminB1" minVitaminB1 "maxVitaminB1" maxVitaminB1 "minVitaminB2" minVitaminB2 "maxVitaminB2" maxVitaminB2 "minVitaminB5" minVitaminB5 "maxVitaminB5" maxVitaminB5 "minVitaminB3" minVitaminB3 "maxVitaminB3" maxVitaminB3 "minVitaminB6" minVitaminB6 "maxVitaminB6" maxVitaminB6 "minVitaminB12" minVitaminB12 "maxVitaminB12" maxVitaminB12 "minFiber" minFiber "maxFiber" maxFiber "minFolate" minFolate "maxFolate" maxFolate "minFolicAcid" minFolicAcid "maxFolicAcid" maxFolicAcid "minIodine" minIodine "maxIodine" maxIodine "minIron" minIron "maxIron" maxIron "minMagnesium" minMagnesium "maxMagnesium" maxMagnesium "minManganese" minManganese "maxManganese" maxManganese "minPhosphorus" minPhosphorus "maxPhosphorus" maxPhosphorus "minPotassium" minPotassium "maxPotassium" maxPotassium "minSelenium" minSelenium "maxSelenium" maxSelenium "minSodium" minSodium "maxSodium" maxSodium "minSugar" minSugar "maxSugar" maxSugar "minZinc" minZinc "maxZinc" maxZinc "offset" offset "number" number "random" random "limitLicense" limitLicense }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec search-recipes-by-nutrients (s/coll-of inline-response-200-2-spec)
  "Search Recipes by Nutrients
  Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients."
  ([] (search-recipes-by-nutrients nil))
  ([optional-params any?]
   (let [res (:data (search-recipes-by-nutrients-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of inline-response-200-2-spec) res st/string-transformer)
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

(defn-spec summarize-recipe inline-response-200-14-spec
  "Summarize Recipe
  Automatically generate a short description that summarizes key information about the recipe."
  [id int?]
  (let [res (:data (summarize-recipe-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-14-spec res st/string-transformer)
       res)))


(defn-spec visualize-equipment-with-http-info any?
  "Equipment Widget
  Visualize the equipment used to make a recipe."
  ([] (visualize-equipment-with-http-info nil))
  ([{:keys [Content-Type Accept]} (s/map-of keyword? any?)]
   (call-api "/recipes/visualizeEquipment" :post
             {:path-params   {}
              :header-params {"Content-Type" Content-Type "Accept" Accept }
              :query-params  {}
              :form-params   {}
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-equipment string?
  "Equipment Widget
  Visualize the equipment used to make a recipe."
  ([] (visualize-equipment nil))
  ([optional-params any?]
   (let [res (:data (visualize-equipment-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-price-breakdown-with-http-info any?
  "Price Breakdown Widget
  Visualize the price breakdown of a recipe."
  ([] (visualize-price-breakdown-with-http-info nil))
  ([{:keys [Content-Type Accept language]} (s/map-of keyword? any?)]
   (call-api "/recipes/visualizePriceEstimator" :post
             {:path-params   {}
              :header-params {"Content-Type" Content-Type "Accept" Accept }
              :query-params  {"language" language }
              :form-params   {}
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-price-breakdown string?
  "Price Breakdown Widget
  Visualize the price breakdown of a recipe."
  ([] (visualize-price-breakdown nil))
  ([optional-params any?]
   (let [res (:data (visualize-price-breakdown-with-http-info optional-params))]
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
  ([] (visualize-recipe-nutrition-with-http-info nil))
  ([{:keys [Content-Type Accept language]} (s/map-of keyword? any?)]
   (call-api "/recipes/visualizeNutrition" :post
             {:path-params   {}
              :header-params {"Content-Type" Content-Type "Accept" Accept }
              :query-params  {"language" language }
              :form-params   {}
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-recipe-nutrition string?
  "Recipe Nutrition Widget
  Visualize a recipe's nutritional information as HTML including CSS."
  ([] (visualize-recipe-nutrition nil))
  ([optional-params any?]
   (let [res (:data (visualize-recipe-nutrition-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-nutrition-by-id-with-http-info any?
  "Recipe Nutrition by ID Widget
  Visualize a recipe's nutritional information as HTML including CSS."
  ([id int?, ] (visualize-recipe-nutrition-by-id-with-http-info id nil))
  ([id int?, {:keys [defaultCss Accept]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/nutritionWidget" :get
             {:path-params   {"id" id }
              :header-params {"Accept" Accept }
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
  ([] (visualize-recipe-taste-with-http-info nil))
  ([{:keys [language Content-Type Accept normalize rgb]} (s/map-of keyword? any?)]
   (call-api "/recipes/visualizeTaste" :post
             {:path-params   {}
              :header-params {"Content-Type" Content-Type "Accept" Accept }
              :query-params  {"language" language "normalize" normalize "rgb" rgb }
              :form-params   {}
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-recipe-taste string?
  "Recipe Taste Widget
  Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!"
  ([] (visualize-recipe-taste nil))
  ([optional-params any?]
   (let [res (:data (visualize-recipe-taste-with-http-info optional-params))]
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


