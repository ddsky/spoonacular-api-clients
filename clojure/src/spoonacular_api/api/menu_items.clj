(ns spoonacular-api.api.menu-items
  (:require [spoonacular-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [spoonacular-api.specs.inline-response-200-41-days :refer :all]
            [spoonacular-api.specs.inline-response-200-31-comparable-products :refer :all]
            [spoonacular-api.specs.inline-response-200-42-measures :refer :all]
            [spoonacular-api.specs.inline-response-200-38-days :refer :all]
            [spoonacular-api.specs.inline-response-200-49-nutrition :refer :all]
            [spoonacular-api.specs.inline-response-200-38-items :refer :all]
            [spoonacular-api.specs.inline-response-200-results :refer :all]
            [spoonacular-api.specs.inline-response-200-3-extended-ingredients :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-properties :refer :all]
            [spoonacular-api.specs.inline-object-10 :refer :all]
            [spoonacular-api.specs.inline-response-200-3-measures-metric :refer :all]
            [spoonacular-api.specs.inline-response-200-42-items :refer :all]
            [spoonacular-api.specs.inline-response-200-13-ingredients-1 :refer :all]
            [spoonacular-api.specs.inline-response-200-31-comparable-products-protein :refer :all]
            [spoonacular-api.specs.inline-response-200-28-servings :refer :all]
            [spoonacular-api.specs.inline-response-200-30-ingredients :refer :all]
            [spoonacular-api.specs.inline-response-200-38-value :refer :all]
            [spoonacular-api.specs.inline-response-200-40-value :refer :all]
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
            [spoonacular-api.specs.inline-response-200-53-search-results :refer :all]
            [spoonacular-api.specs.inline-response-200-40-items :refer :all]
            [spoonacular-api.specs.inline-response-200-18-dishes :refer :all]
            [spoonacular-api.specs.inline-response-200-6-recipes :refer :all]
            [spoonacular-api.specs.inline-response-200-13-parsed-instructions :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-nutrients :refer :all]
            [spoonacular-api.specs.inline-response-200-13-steps :refer :all]
            [spoonacular-api.specs.inline-response-200-3-measures :refer :all]
            [spoonacular-api.specs.inline-response-200-53-results :refer :all]
            [spoonacular-api.specs.inline-response-200-49-recipes :refer :all]
            [spoonacular-api.specs.inline-response-200-45-product-matches :refer :all]
            [spoonacular-api.specs.inline-response-200-38-nutrition-summary-nutrients :refer :all]
            [spoonacular-api.specs.inline-response-200-41-value :refer :all]
            [spoonacular-api.specs.inline-response-200-18-ingredients :refer :all]
            [spoonacular-api.specs.inline-response-200-41-items :refer :all]
            [spoonacular-api.specs.inline-response-200-22-nutrition :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-estimated-cost :refer :all]
            [spoonacular-api.specs.inline-response-200-21-calories :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-weight-per-serving :refer :all]
            [spoonacular-api.specs.inline-response-200-39 :refer :all]
            [spoonacular-api.specs.inline-response-200-49-nutrition-calories :refer :all]
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
            [spoonacular-api.specs.inline-response-200-57-suggests :refer :all]
            [spoonacular-api.specs.inline-response-200-37-nutrients :refer :all]
            [spoonacular-api.specs.inline-response-200-11-ingredients :refer :all]
            [spoonacular-api.specs.inline-response-200-38-nutrition-summary :refer :all]
            [spoonacular-api.specs.inline-response-200-10-ingredients :refer :all]
            [spoonacular-api.specs.inline-response-200-25-results :refer :all]
            [spoonacular-api.specs.inline-response-200-13-ingredients :refer :all]
            [spoonacular-api.specs.inline-response-200-49-nutrition-calories-confidence-range95-percent :refer :all]
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
            [spoonacular-api.specs.inline-object-9 :refer :all]
            [spoonacular-api.specs.inline-response-200-49-category :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition :refer :all]
            [spoonacular-api.specs.inline-object-8 :refer :all]
            [spoonacular-api.specs.inline-object-1 :refer :all]
            [spoonacular-api.specs.inline-response-200-54-videos :refer :all]
            [spoonacular-api.specs.inline-response-200-28-nutrition :refer :all]
            [spoonacular-api.specs.inline-response-200-57 :refer :all]
            [spoonacular-api.specs.inline-response-200-56 :refer :all]
            [spoonacular-api.specs.inline-response-200-55 :refer :all]
            [spoonacular-api.specs.inline-response-200-54 :refer :all]
            [spoonacular-api.specs.inline-response-200-53 :refer :all]
            [spoonacular-api.specs.inline-response-200-52 :refer :all]
            [spoonacular-api.specs.inline-response-200-40 :refer :all]
            [spoonacular-api.specs.inline-response-200-35-menu-items :refer :all]
            [spoonacular-api.specs.inline-response-200-42-aisles :refer :all]
            [spoonacular-api.specs.inline-response-200-49 :refer :all]
            [spoonacular-api.specs.inline-response-200-48 :refer :all]
            [spoonacular-api.specs.inline-response-200-47 :refer :all]
            [spoonacular-api.specs.inline-response-200-46 :refer :all]
            [spoonacular-api.specs.inline-response-200-45 :refer :all]
            [spoonacular-api.specs.inline-response-200-44 :refer :all]
            [spoonacular-api.specs.inline-response-200-43 :refer :all]
            [spoonacular-api.specs.inline-response-200-42 :refer :all]
            [spoonacular-api.specs.inline-response-200-41 :refer :all]
            [spoonacular-api.specs.inline-response-200-47-recommended-wines :refer :all]
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

(defn-spec autocomplete-menu-item-search inline-response-200-32-spec
  "Autocomplete Menu Item Search
  Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only."
  ([query string?, ] (autocomplete-menu-item-search query nil))
  ([query string?, optional-params any?]
   (let [res (:data (autocomplete-menu-item-search-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-32-spec res st/string-transformer)
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

(defn-spec get-menu-item-information inline-response-200-36-spec
  "Get Menu Item Information
  Use a menu item id to get all available information about a menu item, such as nutrition."
  [id int?]
  (let [res (:data (get-menu-item-information-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-36-spec res st/string-transformer)
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

(defn-spec search-menu-items inline-response-200-35-spec
  "Search Menu Items
  Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha."
  ([] (search-menu-items nil))
  ([optional-params any?]
   (let [res (:data (search-menu-items-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-35-spec res st/string-transformer)
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


