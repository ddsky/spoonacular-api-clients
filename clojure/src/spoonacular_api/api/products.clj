(ns spoonacular-api.api.products
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


(defn-spec autocomplete-product-search-with-http-info any?
  "Autocomplete Product Search
  Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only."
  ([query string?, ] (autocomplete-product-search-with-http-info query nil))
  ([query string?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/products/suggest" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec autocomplete-product-search inline-response-200-32-spec
  "Autocomplete Product Search
  Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only."
  ([query string?, ] (autocomplete-product-search query nil))
  ([query string?, optional-params any?]
   (let [res (:data (autocomplete-product-search-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-32-spec res st/string-transformer)
        res))))


(defn-spec classify-grocery-product-with-http-info any?
  "Classify Grocery Product
  This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk."
  ([inline-object-1 inline-object-1, ] (classify-grocery-product-with-http-info inline-object-1 nil))
  ([inline-object-1 inline-object-1, {:keys [locale]} (s/map-of keyword? any?)]
   (check-required-params inline-object-1)
   (call-api "/food/products/classify" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"locale" locale }
              :form-params   {}
              :body-param    inline-object-1
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec classify-grocery-product inline-response-200-33-spec
  "Classify Grocery Product
  This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk."
  ([inline-object-1 inline-object-1, ] (classify-grocery-product inline-object-1 nil))
  ([inline-object-1 inline-object-1, optional-params any?]
   (let [res (:data (classify-grocery-product-with-http-info inline-object-1 optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-33-spec res st/string-transformer)
        res))))


(defn-spec classify-grocery-product-bulk-with-http-info any?
  "Classify Grocery Product Bulk
  Provide a set of product jsons, get back classified products."
  ([inline-object (s/coll-of inline-object-spec), ] (classify-grocery-product-bulk-with-http-info inline-object nil))
  ([inline-object (s/coll-of inline-object-spec), {:keys [locale]} (s/map-of keyword? any?)]
   (check-required-params inline-object)
   (call-api "/food/products/classifyBatch" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"locale" locale }
              :form-params   {}
              :body-param    inline-object
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec classify-grocery-product-bulk (s/coll-of inline-response-200-33-spec)
  "Classify Grocery Product Bulk
  Provide a set of product jsons, get back classified products."
  ([inline-object (s/coll-of inline-object-spec), ] (classify-grocery-product-bulk inline-object nil))
  ([inline-object (s/coll-of inline-object-spec), optional-params any?]
   (let [res (:data (classify-grocery-product-bulk-with-http-info inline-object optional-params))]
     (if (:decode-models *api-context*)
        (st/decode (s/coll-of inline-response-200-33-spec) res st/string-transformer)
        res))))


(defn-spec get-comparable-products-with-http-info any?
  "Get Comparable Products
  Find comparable products to the given one."
  [upc float?]
  (check-required-params upc)
  (call-api "/food/products/upc/{upc}/comparable" :get
            {:path-params   {"upc" upc }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-comparable-products inline-response-200-31-spec
  "Get Comparable Products
  Find comparable products to the given one."
  [upc float?]
  (let [res (:data (get-comparable-products-with-http-info upc))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-31-spec res st/string-transformer)
       res)))


(defn-spec get-product-information-with-http-info any?
  "Get Product Information
  Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving."
  [id int?]
  (check-required-params id)
  (call-api "/food/products/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-product-information inline-response-200-30-spec
  "Get Product Information
  Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving."
  [id int?]
  (let [res (:data (get-product-information-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-30-spec res st/string-transformer)
       res)))


(defn-spec product-nutrition-by-id-image-with-http-info any?
  "Product Nutrition by ID Image
  Visualize a product's nutritional information as an image."
  [id float?]
  (check-required-params id)
  (call-api "/food/products/{id}/nutritionWidget.png" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["image/png"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec product-nutrition-by-id-image any?
  "Product Nutrition by ID Image
  Visualize a product's nutritional information as an image."
  [id float?]
  (let [res (:data (product-nutrition-by-id-image-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec product-nutrition-label-image-with-http-info any?
  "Product Nutrition Label Image
  Get a product's nutrition label as an image."
  ([id float?, ] (product-nutrition-label-image-with-http-info id nil))
  ([id float?, {:keys [showOptionalNutrients showZeroValues showIngredients]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/food/products/{id}/nutritionLabel.png" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"showOptionalNutrients" showOptionalNutrients "showZeroValues" showZeroValues "showIngredients" showIngredients }
              :form-params   {}
              :content-types []
              :accepts       ["image/png"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec product-nutrition-label-image any?
  "Product Nutrition Label Image
  Get a product's nutrition label as an image."
  ([id float?, ] (product-nutrition-label-image id nil))
  ([id float?, optional-params any?]
   (let [res (:data (product-nutrition-label-image-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec product-nutrition-label-widget-with-http-info any?
  "Product Nutrition Label Widget
  Get a product's nutrition label as an HTML widget."
  ([id float?, ] (product-nutrition-label-widget-with-http-info id nil))
  ([id float?, {:keys [defaultCss showOptionalNutrients showZeroValues showIngredients]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/food/products/{id}/nutritionLabel" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss "showOptionalNutrients" showOptionalNutrients "showZeroValues" showZeroValues "showIngredients" showIngredients }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec product-nutrition-label-widget string?
  "Product Nutrition Label Widget
  Get a product's nutrition label as an HTML widget."
  ([id float?, ] (product-nutrition-label-widget id nil))
  ([id float?, optional-params any?]
   (let [res (:data (product-nutrition-label-widget-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec search-grocery-products-with-http-info any?
  "Search Grocery Products
  Search packaged food products, such as frozen pizza or Greek yogurt."
  ([] (search-grocery-products-with-http-info nil))
  ([{:keys [query minCalories maxCalories minCarbs maxCarbs minProtein maxProtein minFat maxFat offset number]} (s/map-of keyword? any?)]
   (call-api "/food/products/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "minCalories" minCalories "maxCalories" maxCalories "minCarbs" minCarbs "maxCarbs" maxCarbs "minProtein" minProtein "maxProtein" maxProtein "minFat" minFat "maxFat" maxFat "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec search-grocery-products inline-response-200-27-spec
  "Search Grocery Products
  Search packaged food products, such as frozen pizza or Greek yogurt."
  ([] (search-grocery-products nil))
  ([optional-params any?]
   (let [res (:data (search-grocery-products-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-27-spec res st/string-transformer)
        res))))


(defn-spec search-grocery-products-by-upc-with-http-info any?
  "Search Grocery Products by UPC
  Get information about a packaged food using its UPC."
  [upc float?]
  (check-required-params upc)
  (call-api "/food/products/upc/{upc}" :get
            {:path-params   {"upc" upc }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec search-grocery-products-by-upc inline-response-200-28-spec
  "Search Grocery Products by UPC
  Get information about a packaged food using its UPC."
  [upc float?]
  (let [res (:data (search-grocery-products-by-upc-with-http-info upc))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-28-spec res st/string-transformer)
       res)))


(defn-spec visualize-product-nutrition-by-id-with-http-info any?
  "Product Nutrition by ID Widget
  Visualize a product's nutritional information as HTML including CSS."
  ([id int?, ] (visualize-product-nutrition-by-id-with-http-info id nil))
  ([id int?, {:keys [defaultCss Accept]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/food/products/{id}/nutritionWidget" :get
             {:path-params   {"id" id }
              :header-params {"Accept" Accept }
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec visualize-product-nutrition-by-id string?
  "Product Nutrition by ID Widget
  Visualize a product's nutritional information as HTML including CSS."
  ([id int?, ] (visualize-product-nutrition-by-id id nil))
  ([id int?, optional-params any?]
   (let [res (:data (visualize-product-nutrition-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


