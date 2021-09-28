(ns spoonacular-api.api.ingredients
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

(defn-spec autocomplete-ingredient-search (s/coll-of inline-response-200-24-spec)
  "Autocomplete Ingredient Search
  Autocomplete the entry of an ingredient."
  ([] (autocomplete-ingredient-search nil))
  ([optional-params any?]
   (let [res (:data (autocomplete-ingredient-search-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of inline-response-200-24-spec) res st/string-transformer)
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

(defn-spec compute-ingredient-amount -recipes-parse-ingredients-nutrition-weight-per-serving-spec
  "Compute Ingredient Amount
  Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?"
  ([id float?, nutrient string?, target float?, ] (compute-ingredient-amount id nutrient target nil))
  ([id float?, nutrient string?, target float?, optional-params any?]
   (let [res (:data (compute-ingredient-amount-with-http-info id nutrient target optional-params))]
     (if (:decode-models *api-context*)
        (st/decode -recipes-parse-ingredients-nutrition-weight-per-serving-spec res st/string-transformer)
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

(defn-spec get-ingredient-information inline-response-200-22-spec
  "Get Ingredient Information
  Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle."
  ([id int?, ] (get-ingredient-information id nil))
  ([id int?, optional-params any?]
   (let [res (:data (get-ingredient-information-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-22-spec res st/string-transformer)
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

(defn-spec get-ingredient-substitutes inline-response-200-26-spec
  "Get Ingredient Substitutes
  Search for substitutes for a given ingredient."
  [ingredientName string?]
  (let [res (:data (get-ingredient-substitutes-with-http-info ingredientName))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-26-spec res st/string-transformer)
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

(defn-spec get-ingredient-substitutes-by-id inline-response-200-26-spec
  "Get Ingredient Substitutes by ID
  Search for substitutes for a given ingredient."
  [id int?]
  (let [res (:data (get-ingredient-substitutes-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-26-spec res st/string-transformer)
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

(defn-spec ingredient-search inline-response-200-25-spec
  "Ingredient Search
  Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.)."
  ([] (ingredient-search nil))
  ([optional-params any?]
   (let [res (:data (ingredient-search-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-25-spec res st/string-transformer)
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
  [inline-object-2 inline-object-2]
  (check-required-params inline-object-2)
  (call-api "/food/ingredients/map" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    inline-object-2
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec map-ingredients-to-grocery-products (s/coll-of inline-response-200-34-spec)
  "Map Ingredients to Grocery Products
  Map a set of ingredients to products you can buy in the grocery store."
  [inline-object-2 inline-object-2]
  (let [res (:data (map-ingredients-to-grocery-products-with-http-info inline-object-2))]
    (if (:decode-models *api-context*)
       (st/decode (s/coll-of inline-response-200-34-spec) res st/string-transformer)
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


