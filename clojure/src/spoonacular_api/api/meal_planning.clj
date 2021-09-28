(ns spoonacular-api.api.meal-planning
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


(defn-spec add-to-meal-plan-with-http-info any?
  "Add to Meal Plan
  Add an item to the user's meal plan."
  [username string?, hash string?, inline-object-4 inline-object-4]
  (check-required-params username hash inline-object-4)
  (call-api "/mealplanner/{username}/items" :post
            {:path-params   {"username" username }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :body-param    inline-object-4
             :content-types ["" "application/json"]
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec add-to-meal-plan any?
  "Add to Meal Plan
  Add an item to the user's meal plan."
  [username string?, hash string?, inline-object-4 inline-object-4]
  (let [res (:data (add-to-meal-plan-with-http-info username hash inline-object-4))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec add-to-shopping-list-with-http-info any?
  "Add to Shopping List
  Add an item to the current shopping list of a user."
  [username string?, hash string?, inline-object-7 inline-object-7]
  (check-required-params username hash inline-object-7)
  (call-api "/mealplanner/{username}/shopping-list/items" :post
            {:path-params   {"username" username }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :body-param    inline-object-7
             :content-types ["" "application/json"]
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec add-to-shopping-list inline-response-200-41-spec
  "Add to Shopping List
  Add an item to the current shopping list of a user."
  [username string?, hash string?, inline-object-7 inline-object-7]
  (let [res (:data (add-to-shopping-list-with-http-info username hash inline-object-7))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-41-spec res st/string-transformer)
       res)))


(defn-spec clear-meal-plan-day-with-http-info any?
  "Clear Meal Plan Day
  Delete all planned items from the user's meal plan for a specific day."
  [username string?, date string?, hash string?, inline-object-3 inline-object-3]
  (check-required-params username date hash inline-object-3)
  (call-api "/mealplanner/{username}/day/{date}" :delete
            {:path-params   {"username" username "date" date }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :body-param    inline-object-3
             :content-types [""]
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec clear-meal-plan-day any?
  "Clear Meal Plan Day
  Delete all planned items from the user's meal plan for a specific day."
  [username string?, date string?, hash string?, inline-object-3 inline-object-3]
  (let [res (:data (clear-meal-plan-day-with-http-info username date hash inline-object-3))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec connect-user-with-http-info any?
  "Connect User
  In order to call user-specific endpoints, you need to connect your app's users to spoonacular users."
  [body any?]
  (check-required-params body)
  (call-api "/users/connect" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    body
             :content-types ["" "application/json"]
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec connect-user inline-response-200-42-spec
  "Connect User
  In order to call user-specific endpoints, you need to connect your app's users to spoonacular users."
  [body any?]
  (let [res (:data (connect-user-with-http-info body))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-42-spec res st/string-transformer)
       res)))


(defn-spec delete-from-meal-plan-with-http-info any?
  "Delete from Meal Plan
  Delete an item from the user's meal plan."
  [username string?, id float?, hash string?, inline-object-5 inline-object-5]
  (check-required-params username id hash inline-object-5)
  (call-api "/mealplanner/{username}/items/{id}" :delete
            {:path-params   {"username" username "id" id }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :body-param    inline-object-5
             :content-types [""]
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec delete-from-meal-plan any?
  "Delete from Meal Plan
  Delete an item from the user's meal plan."
  [username string?, id float?, hash string?, inline-object-5 inline-object-5]
  (let [res (:data (delete-from-meal-plan-with-http-info username id hash inline-object-5))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec delete-from-shopping-list-with-http-info any?
  "Delete from Shopping List
  Delete an item from the current shopping list of the user."
  [username string?, id int?, hash string?, inline-object-8 inline-object-8]
  (check-required-params username id hash inline-object-8)
  (call-api "/mealplanner/{username}/shopping-list/items/{id}" :delete
            {:path-params   {"username" username "id" id }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :body-param    inline-object-8
             :content-types [""]
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec delete-from-shopping-list any?
  "Delete from Shopping List
  Delete an item from the current shopping list of the user."
  [username string?, id int?, hash string?, inline-object-8 inline-object-8]
  (let [res (:data (delete-from-shopping-list-with-http-info username id hash inline-object-8))]
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

(defn-spec generate-meal-plan inline-response-200-37-spec
  "Generate Meal Plan
  Generate a meal plan with three meals per day (breakfast, lunch, and dinner)."
  ([] (generate-meal-plan nil))
  ([optional-params any?]
   (let [res (:data (generate-meal-plan-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-37-spec res st/string-transformer)
        res))))


(defn-spec generate-shopping-list-with-http-info any?
  "Generate Shopping List
  Generate the shopping list for a user from the meal planner in a given time frame."
  [username string?, start-date string?, end-date string?, hash string?, inline-object-6 inline-object-6]
  (check-required-params username start-date end-date hash inline-object-6)
  (call-api "/mealplanner/{username}/shopping-list/{start-date}/{end-date}" :post
            {:path-params   {"username" username "start-date" start-date "end-date" end-date }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :body-param    inline-object-6
             :content-types [""]
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec generate-shopping-list inline-response-200-41-spec
  "Generate Shopping List
  Generate the shopping list for a user from the meal planner in a given time frame."
  [username string?, start-date string?, end-date string?, hash string?, inline-object-6 inline-object-6]
  (let [res (:data (generate-shopping-list-with-http-info username start-date end-date hash inline-object-6))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-41-spec res st/string-transformer)
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

(defn-spec get-meal-plan-template inline-response-200-40-spec
  "Get Meal Plan Template
  Get information about a meal plan template."
  [username string?, id int?, hash string?]
  (let [res (:data (get-meal-plan-template-with-http-info username id hash))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-40-spec res st/string-transformer)
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

(defn-spec get-meal-plan-templates inline-response-200-39-spec
  "Get Meal Plan Templates
  Get meal plan templates from user or public ones."
  [username string?, hash string?]
  (let [res (:data (get-meal-plan-templates-with-http-info username hash))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-39-spec res st/string-transformer)
       res)))


(defn-spec get-meal-plan-week-with-http-info any?
  "Get Meal Plan Week
  Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account."
  [username string?, start-date string?, hash string?]
  (check-required-params username start-date hash)
  (call-api "/mealplanner/{username}/week/{start-date}" :get
            {:path-params   {"username" username "start-date" start-date }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-meal-plan-week inline-response-200-38-spec
  "Get Meal Plan Week
  Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account."
  [username string?, start-date string?, hash string?]
  (let [res (:data (get-meal-plan-week-with-http-info username start-date hash))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-38-spec res st/string-transformer)
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

(defn-spec get-shopping-list inline-response-200-41-spec
  "Get Shopping List
  Get the current shopping list for the given user."
  [username string?, hash string?]
  (let [res (:data (get-shopping-list-with-http-info username hash))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-41-spec res st/string-transformer)
       res)))


