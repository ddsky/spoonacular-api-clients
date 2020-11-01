(ns spoonacular-api.api.default
  (:require [spoonacular-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [spoonacular-api.specs.inline-object-3 :refer :all]
            [spoonacular-api.specs.inline-object-2 :refer :all]
            [spoonacular-api.specs.inline-object-10 :refer :all]
            [spoonacular-api.specs.inline-object-5 :refer :all]
            [spoonacular-api.specs.inline-object-11 :refer :all]
            [spoonacular-api.specs.inline-object-4 :refer :all]
            [spoonacular-api.specs.inline-object-12 :refer :all]
            [spoonacular-api.specs.inline-object-7 :refer :all]
            [spoonacular-api.specs.inline-object-13 :refer :all]
            [spoonacular-api.specs.inline-object-6 :refer :all]
            [spoonacular-api.specs.inline-object-14 :refer :all]
            [spoonacular-api.specs.inline-object-9 :refer :all]
            [spoonacular-api.specs.inline-object-15 :refer :all]
            [spoonacular-api.specs.inline-object-8 :refer :all]
            [spoonacular-api.specs.inline-object-16 :refer :all]
            [spoonacular-api.specs.inline-object-1 :refer :all]
            [spoonacular-api.specs.inline-object :refer :all]
            )
  (:import (java.io File)))


(defn-spec add-to-meal-plan-with-http-info any?
  "Add to Meal Plan
  Add an item to the user's meal plan."
  [username string?, hash string?, inline-object-11 inline-object-11]
  (check-required-params username hash inline-object-11)
  (call-api "/mealplanner/{username}/items" :post
            {:path-params   {"username" username }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :body-param    inline-object-11
             :content-types [""]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec add-to-meal-plan any?
  "Add to Meal Plan
  Add an item to the user's meal plan."
  [username string?, hash string?, inline-object-11 inline-object-11]
  (let [res (:data (add-to-meal-plan-with-http-info username hash inline-object-11))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec add-to-shopping-list-with-http-info any?
  "Add to Shopping List
  Add an item to the current shopping list of a user."
  [username string?, hash string?, inline-object-14 inline-object-14]
  (check-required-params username hash inline-object-14)
  (call-api "/mealplanner/{username}/shopping-list/items" :post
            {:path-params   {"username" username }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :body-param    inline-object-14
             :content-types [""]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec add-to-shopping-list any?
  "Add to Shopping List
  Add an item to the current shopping list of a user."
  [username string?, hash string?, inline-object-14 inline-object-14]
  (let [res (:data (add-to-shopping-list-with-http-info username hash inline-object-14))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


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
             :auth-names    []}))

(defn-spec analyze-a-recipe-search-query any?
  "Analyze a Recipe Search Query
  Parse a recipe search query to find out its intention."
  [q string?]
  (let [res (:data (analyze-a-recipe-search-query-with-http-info q))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
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
             :auth-names    []}))

(defn-spec analyze-recipe-instructions any?
  "Analyze Recipe Instructions
  This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in."
  [instructions string?]
  (let [res (:data (analyze-recipe-instructions-with-http-info instructions))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec autocomplete-ingredient-search-with-http-info any?
  "Autocomplete Ingredient Search
  Autocomplete the entry of an ingredient."
  ([query string?, ] (autocomplete-ingredient-search-with-http-info query nil))
  ([query string?, {:keys [number metaInformation intolerances]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/ingredients/autocomplete" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number "metaInformation" metaInformation "intolerances" intolerances }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec autocomplete-ingredient-search any?
  "Autocomplete Ingredient Search
  Autocomplete the entry of an ingredient."
  ([query string?, ] (autocomplete-ingredient-search query nil))
  ([query string?, optional-params any?]
   (let [res (:data (autocomplete-ingredient-search-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


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
              :auth-names    []})))

(defn-spec autocomplete-menu-item-search any?
  "Autocomplete Menu Item Search
  Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only."
  ([query string?, ] (autocomplete-menu-item-search query nil))
  ([query string?, optional-params any?]
   (let [res (:data (autocomplete-menu-item-search-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


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
              :auth-names    []})))

(defn-spec autocomplete-product-search any?
  "Autocomplete Product Search
  Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only."
  ([query string?, ] (autocomplete-product-search query nil))
  ([query string?, optional-params any?]
   (let [res (:data (autocomplete-product-search-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


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
              :auth-names    []})))

(defn-spec autocomplete-recipe-search any?
  "Autocomplete Recipe Search
  Autocomplete a partial input to suggest possible recipe names."
  ([query string?, ] (autocomplete-recipe-search query nil))
  ([query string?, optional-params any?]
   (let [res (:data (autocomplete-recipe-search-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec classify-cuisine-with-http-info any?
  "Classify Cuisine
  Classify the recipe's cuisine."
  [title string?, ingredientList string?]
  (check-required-params title ingredientList)
  (call-api "/recipes/cuisine" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {"title" title "ingredientList" ingredientList }
             :content-types ["application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec classify-cuisine any?
  "Classify Cuisine
  Classify the recipe's cuisine."
  [title string?, ingredientList string?]
  (let [res (:data (classify-cuisine-with-http-info title ingredientList))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec classify-grocery-product-with-http-info any?
  "Classify Grocery Product
  This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk."
  ([inline-object-9 inline-object-9, ] (classify-grocery-product-with-http-info inline-object-9 nil))
  ([inline-object-9 inline-object-9, {:keys [locale]} (s/map-of keyword? any?)]
   (check-required-params inline-object-9)
   (call-api "/food/products/classify" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"locale" locale }
              :form-params   {}
              :body-param    inline-object-9
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec classify-grocery-product any?
  "Classify Grocery Product
  This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk."
  ([inline-object-9 inline-object-9, ] (classify-grocery-product inline-object-9 nil))
  ([inline-object-9 inline-object-9, optional-params any?]
   (let [res (:data (classify-grocery-product-with-http-info inline-object-9 optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec classify-grocery-product-bulk-with-http-info any?
  "Classify Grocery Product Bulk
  Provide a set of product jsons, get back classified products."
  ([body any?, ] (classify-grocery-product-bulk-with-http-info body nil))
  ([body any?, {:keys [locale]} (s/map-of keyword? any?)]
   (check-required-params body)
   (call-api "/food/products/classifyBatch" :post
             {:path-params   {}
              :header-params {}
              :query-params  {"locale" locale }
              :form-params   {}
              :body-param    body
              :content-types ["application/json"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec classify-grocery-product-bulk any?
  "Classify Grocery Product Bulk
  Provide a set of product jsons, get back classified products."
  ([body any?, ] (classify-grocery-product-bulk body nil))
  ([body any?, optional-params any?]
   (let [res (:data (classify-grocery-product-bulk-with-http-info body optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec clear-meal-plan-day-with-http-info any?
  "Clear Meal Plan Day
  Delete all planned items from the user's meal plan for a specific day."
  [username string?, date string?, hash string?, inline-object-10 inline-object-10]
  (check-required-params username date hash inline-object-10)
  (call-api "/mealplanner/{username}/day/{date}" :delete
            {:path-params   {"username" username "date" date }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :body-param    inline-object-10
             :content-types [""]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec clear-meal-plan-day any?
  "Clear Meal Plan Day
  Delete all planned items from the user's meal plan for a specific day."
  [username string?, date string?, hash string?, inline-object-10 inline-object-10]
  (let [res (:data (clear-meal-plan-day-with-http-info username date hash inline-object-10))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec compute-glycemic-load-with-http-info any?
  "Compute Glycemic Load
  Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load."
  [body any?]
  (check-required-params body)
  (call-api "/food/ingredients/glycemicLoad" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    body
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec compute-glycemic-load any?
  "Compute Glycemic Load
  Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load."
  [body any?]
  (let [res (:data (compute-glycemic-load-with-http-info body))]
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
             :content-types [""]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec connect-user any?
  "Connect User
  In order to call user-specific endpoints, you need to connect your app's users to spoonacular users."
  [body any?]
  (let [res (:data (connect-user-with-http-info body))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


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
             :auth-names    []}))

(defn-spec convert-amounts any?
  "Convert Amounts
  Convert amounts like \"2 cups of flour to grams\"."
  [ingredientName string?, sourceAmount float?, sourceUnit string?, targetUnit string?]
  (let [res (:data (convert-amounts-with-http-info ingredientName sourceAmount sourceUnit targetUnit))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec create-recipe-card-with-http-info any?
  "Create Recipe Card
  Generate a recipe card for a recipe."
  ([title string?, ^File image any?, ingredients string?, instructions string?, readyInMinutes float?, servings float?, mask string?, backgroundImage string?, ] (create-recipe-card-with-http-info title image ingredients instructions readyInMinutes servings mask backgroundImage nil))
  ([title string?, ^File image any?, ingredients string?, instructions string?, readyInMinutes float?, servings float?, mask string?, backgroundImage string?, {:keys [author backgroundColor fontColor source]} (s/map-of keyword? any?)]
   (check-required-params title image ingredients instructions readyInMinutes servings mask backgroundImage)
   (call-api "/recipes/visualizeRecipe" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"title" title "image" image "ingredients" ingredients "instructions" instructions "readyInMinutes" readyInMinutes "servings" servings "mask" mask "backgroundImage" backgroundImage "author" author "backgroundColor" backgroundColor "fontColor" fontColor "source" source }
              :content-types ["multipart/form-data"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec create-recipe-card any?
  "Create Recipe Card
  Generate a recipe card for a recipe."
  ([title string?, ^File image any?, ingredients string?, instructions string?, readyInMinutes float?, servings float?, mask string?, backgroundImage string?, ] (create-recipe-card title image ingredients instructions readyInMinutes servings mask backgroundImage nil))
  ([title string?, ^File image any?, ingredients string?, instructions string?, readyInMinutes float?, servings float?, mask string?, backgroundImage string?, optional-params any?]
   (let [res (:data (create-recipe-card-with-http-info title image ingredients instructions readyInMinutes servings mask backgroundImage optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec delete-from-meal-plan-with-http-info any?
  "Delete from Meal Plan
  Delete an item from the user's meal plan."
  [username string?, id float?, hash string?, inline-object-12 inline-object-12]
  (check-required-params username id hash inline-object-12)
  (call-api "/mealplanner/{username}/items/{id}" :delete
            {:path-params   {"username" username "id" id }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :body-param    inline-object-12
             :content-types [""]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec delete-from-meal-plan any?
  "Delete from Meal Plan
  Delete an item from the user's meal plan."
  [username string?, id float?, hash string?, inline-object-12 inline-object-12]
  (let [res (:data (delete-from-meal-plan-with-http-info username id hash inline-object-12))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec delete-from-shopping-list-with-http-info any?
  "Delete from Shopping List
  Delete an item from the current shopping list of the user."
  [username string?, id float?, hash string?, inline-object-15 inline-object-15]
  (check-required-params username id hash inline-object-15)
  (call-api "/mealplanner/{username}/shopping-list/items/{id}" :delete
            {:path-params   {"username" username "id" id }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :body-param    inline-object-15
             :content-types [""]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec delete-from-shopping-list any?
  "Delete from Shopping List
  Delete an item from the current shopping list of the user."
  [username string?, id float?, hash string?, inline-object-15 inline-object-15]
  (let [res (:data (delete-from-shopping-list-with-http-info username id hash inline-object-15))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec detect-food-in-text-with-http-info any?
  "Detect Food in Text
  Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds."
  [text string?]
  (check-required-params text)
  (call-api "/food/detect" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {"text" text }
             :content-types ["application/x-www-form-urlencoded"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec detect-food-in-text any?
  "Detect Food in Text
  Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds."
  [text string?]
  (let [res (:data (detect-food-in-text-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec extract-recipe-from-website-with-http-info any?
  "Extract Recipe from Website
  This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website."
  ([url string?, ] (extract-recipe-from-website-with-http-info url nil))
  ([url string?, {:keys [forceExtraction analyze]} (s/map-of keyword? any?)]
   (check-required-params url)
   (call-api "/recipes/extract" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"url" url "forceExtraction" forceExtraction "analyze" analyze }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec extract-recipe-from-website any?
  "Extract Recipe from Website
  This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website."
  ([url string?, ] (extract-recipe-from-website url nil))
  ([url string?, optional-params any?]
   (let [res (:data (extract-recipe-from-website-with-http-info url optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


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
              :auth-names    []})))

(defn-spec generate-meal-plan any?
  "Generate Meal Plan
  Generate a meal plan with three meals per day (breakfast, lunch, and dinner)."
  ([] (generate-meal-plan nil))
  ([optional-params any?]
   (let [res (:data (generate-meal-plan-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec generate-shopping-list-with-http-info any?
  "Generate Shopping List
  Generate the shopping list for a user from the meal planner in a given time frame."
  [username string?, start-date string?, end-date string?, hash string?, inline-object-13 inline-object-13]
  (check-required-params username start-date end-date hash inline-object-13)
  (call-api "/mealplanner/{username}/shopping-list/{start-date}/{end-date}" :post
            {:path-params   {"username" username "start-date" start-date "end-date" end-date }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :body-param    inline-object-13
             :content-types [""]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec generate-shopping-list any?
  "Generate Shopping List
  Generate the shopping list for a user from the meal planner in a given time frame."
  [username string?, start-date string?, end-date string?, hash string?, inline-object-13 inline-object-13]
  (let [res (:data (generate-shopping-list-with-http-info username start-date end-date hash inline-object-13))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-a-random-food-joke-with-http-info any?
  "Get a Random Food Joke
  Get a random joke that is related to food. Caution: this is an endpoint for adults!"
  []
  (call-api "/food/jokes/random" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-a-random-food-joke any?
  "Get a Random Food Joke
  Get a random joke that is related to food. Caution: this is an endpoint for adults!"
  []
  (let [res (:data (get-a-random-food-joke-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-analyzed-recipe-instructions-with-http-info any?
  "Get Analyzed Recipe Instructions
  Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required."
  ([id float?, ] (get-analyzed-recipe-instructions-with-http-info id nil))
  ([id float?, {:keys [stepBreakdown]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/analyzedInstructions" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"stepBreakdown" stepBreakdown }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-analyzed-recipe-instructions any?
  "Get Analyzed Recipe Instructions
  Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required."
  ([id float?, ] (get-analyzed-recipe-instructions id nil))
  ([id float?, optional-params any?]
   (let [res (:data (get-analyzed-recipe-instructions-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
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
             :auth-names    []}))

(defn-spec get-comparable-products any?
  "Get Comparable Products
  Find comparable products to the given one."
  [upc float?]
  (let [res (:data (get-comparable-products-with-http-info upc))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-conversation-suggests-with-http-info any?
  "Get Conversation Suggests
  This endpoint returns suggestions for things the user can say or ask the chatbot."
  ([query string?, ] (get-conversation-suggests-with-http-info query nil))
  ([query string?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/converse/suggest" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-conversation-suggests any?
  "Get Conversation Suggests
  This endpoint returns suggestions for things the user can say or ask the chatbot."
  ([query string?, ] (get-conversation-suggests query nil))
  ([query string?, optional-params any?]
   (let [res (:data (get-conversation-suggests-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-dish-pairing-for-wine-with-http-info any?
  "Get Dish Pairing for Wine
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
             :auth-names    []}))

(defn-spec get-dish-pairing-for-wine any?
  "Get Dish Pairing for Wine
  Find a dish that goes well with a given wine."
  [wine string?]
  (let [res (:data (get-dish-pairing-for-wine-with-http-info wine))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-ingredient-information-with-http-info any?
  "Get Ingredient Information
  Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle."
  ([id float?, ] (get-ingredient-information-with-http-info id nil))
  ([id float?, {:keys [amount unit]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/food/ingredients/{id}/information" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"amount" amount "unit" unit }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-ingredient-information any?
  "Get Ingredient Information
  Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle."
  ([id float?, ] (get-ingredient-information id nil))
  ([id float?, optional-params any?]
   (let [res (:data (get-ingredient-information-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
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
             :auth-names    []}))

(defn-spec get-ingredient-substitutes any?
  "Get Ingredient Substitutes
  Search for substitutes for a given ingredient."
  [ingredientName string?]
  (let [res (:data (get-ingredient-substitutes-with-http-info ingredientName))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-ingredient-substitutes-by-id-with-http-info any?
  "Get Ingredient Substitutes by ID
  Search for substitutes for a given ingredient."
  [id float?]
  (check-required-params id)
  (call-api "/food/ingredients/{id}/substitutes" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-ingredient-substitutes-by-id any?
  "Get Ingredient Substitutes by ID
  Search for substitutes for a given ingredient."
  [id float?]
  (let [res (:data (get-ingredient-substitutes-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-meal-plan-template-with-http-info any?
  "Get Meal Plan Template
  Get information about a meal plan template."
  [username string?, id float?, hash string?]
  (check-required-params username id hash)
  (call-api "/mealplanner/{username}/templates/{id}" :get
            {:path-params   {"username" username "id" id }
             :header-params {}
             :query-params  {"hash" hash }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-meal-plan-template any?
  "Get Meal Plan Template
  Get information about a meal plan template."
  [username string?, id float?, hash string?]
  (let [res (:data (get-meal-plan-template-with-http-info username id hash))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
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
             :auth-names    []}))

(defn-spec get-meal-plan-templates any?
  "Get Meal Plan Templates
  Get meal plan templates from user or public ones."
  [username string?, hash string?]
  (let [res (:data (get-meal-plan-templates-with-http-info username hash))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
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
             :auth-names    []}))

(defn-spec get-meal-plan-week any?
  "Get Meal Plan Week
  Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account."
  [username string?, start-date string?, hash string?]
  (let [res (:data (get-meal-plan-week-with-http-info username start-date hash))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-menu-item-information-with-http-info any?
  "Get Menu Item Information
  Use a menu item id to get all available information about a menu item, such as nutrition."
  [id float?]
  (check-required-params id)
  (call-api "/food/menuItems/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-menu-item-information any?
  "Get Menu Item Information
  Use a menu item id to get all available information about a menu item, such as nutrition."
  [id float?]
  (let [res (:data (get-menu-item-information-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-product-information-with-http-info any?
  "Get Product Information
  Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving."
  [id float?]
  (check-required-params id)
  (call-api "/food/products/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-product-information any?
  "Get Product Information
  Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving."
  [id float?]
  (let [res (:data (get-product-information-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-random-food-trivia-with-http-info any?
  "Get Random Food Trivia
  Returns random food trivia."
  []
  (call-api "/food/trivia/random" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-random-food-trivia any?
  "Get Random Food Trivia
  Returns random food trivia."
  []
  (let [res (:data (get-random-food-trivia-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


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
              :auth-names    []})))

(defn-spec get-random-recipes any?
  "Get Random Recipes
  Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random."
  ([] (get-random-recipes nil))
  ([optional-params any?]
   (let [res (:data (get-random-recipes-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-recipe-equipment-by-id-with-http-info any?
  "Get Recipe Equipment by ID
  Get a recipe's equipment list."
  [id float?]
  (check-required-params id)
  (call-api "/recipes/{id}/equipmentWidget.json" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-recipe-equipment-by-id any?
  "Get Recipe Equipment by ID
  Get a recipe's equipment list."
  [id float?]
  (let [res (:data (get-recipe-equipment-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-recipe-information-with-http-info any?
  "Get Recipe Information
  Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc."
  ([id float?, ] (get-recipe-information-with-http-info id nil))
  ([id float?, {:keys [includeNutrition]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/information" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"includeNutrition" includeNutrition }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-recipe-information any?
  "Get Recipe Information
  Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc."
  ([id float?, ] (get-recipe-information id nil))
  ([id float?, optional-params any?]
   (let [res (:data (get-recipe-information-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
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
              :auth-names    []})))

(defn-spec get-recipe-information-bulk any?
  "Get Recipe Information Bulk
  Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster."
  ([ids string?, ] (get-recipe-information-bulk ids nil))
  ([ids string?, optional-params any?]
   (let [res (:data (get-recipe-information-bulk-with-http-info ids optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-recipe-ingredients-by-id-with-http-info any?
  "Get Recipe Ingredients by ID
  Get a recipe's ingredient list."
  [id float?]
  (check-required-params id)
  (call-api "/recipes/{id}/ingredientWidget.json" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-recipe-ingredients-by-id any?
  "Get Recipe Ingredients by ID
  Get a recipe's ingredient list."
  [id float?]
  (let [res (:data (get-recipe-ingredients-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-recipe-nutrition-widget-by-id-with-http-info any?
  "Get Recipe Nutrition Widget by ID
  Get a recipe's nutrition widget data."
  [id float?]
  (check-required-params id)
  (call-api "/recipes/{id}/nutritionWidget.json" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-recipe-nutrition-widget-by-id any?
  "Get Recipe Nutrition Widget by ID
  Get a recipe's nutrition widget data."
  [id float?]
  (let [res (:data (get-recipe-nutrition-widget-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-recipe-price-breakdown-by-id-with-http-info any?
  "Get Recipe Price Breakdown by ID
  Get a recipe's price breakdown data."
  [id float?]
  (check-required-params id)
  (call-api "/recipes/{id}/priceBreakdownWidget.json" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-recipe-price-breakdown-by-id any?
  "Get Recipe Price Breakdown by ID
  Get a recipe's price breakdown data."
  [id float?]
  (let [res (:data (get-recipe-price-breakdown-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-recipe-taste-by-id-with-http-info any?
  "Get Recipe Taste by ID
  Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty."
  [id float?]
  (check-required-params id)
  (call-api "/recipes/{id}/tasteWidget.json" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec get-recipe-taste-by-id any?
  "Get Recipe Taste by ID
  Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty."
  [id float?]
  (let [res (:data (get-recipe-taste-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
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
             :auth-names    []}))

(defn-spec get-shopping-list any?
  "Get Shopping List
  Get the current shopping list for the given user."
  [username string?, hash string?]
  (let [res (:data (get-shopping-list-with-http-info username hash))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-similar-recipes-with-http-info any?
  "Get Similar Recipes
  Find recipes which are similar to the given one."
  ([id float?, ] (get-similar-recipes-with-http-info id nil))
  ([id float?, {:keys [number limitLicense]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/similar" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"number" number "limitLicense" limitLicense }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec get-similar-recipes any?
  "Get Similar Recipes
  Find recipes which are similar to the given one."
  ([id float?, ] (get-similar-recipes id nil))
  ([id float?, optional-params any?]
   (let [res (:data (get-similar-recipes-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-wine-description-with-http-info any?
  "Get Wine Description
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
             :auth-names    []}))

(defn-spec get-wine-description any?
  "Get Wine Description
  Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\"."
  [wine string?]
  (let [res (:data (get-wine-description-with-http-info wine))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec get-wine-pairing-with-http-info any?
  "Get Wine Pairing
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
              :auth-names    []})))

(defn-spec get-wine-pairing any?
  "Get Wine Pairing
  Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\")."
  ([food string?, ] (get-wine-pairing food nil))
  ([food string?, optional-params any?]
   (let [res (:data (get-wine-pairing-with-http-info food optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-wine-recommendation-with-http-info any?
  "Get Wine Recommendation
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
              :auth-names    []})))

(defn-spec get-wine-recommendation any?
  "Get Wine Recommendation
  Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\"."
  ([wine string?, ] (get-wine-recommendation wine nil))
  ([wine string?, optional-params any?]
   (let [res (:data (get-wine-recommendation-with-http-info wine optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
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
             :auth-names    []}))

(defn-spec guess-nutrition-by-dish-name any?
  "Guess Nutrition by Dish Name
  Estimate the macronutrients of a dish based on its title."
  [title string?]
  (let [res (:data (guess-nutrition-by-dish-name-with-http-info title))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec image-analysis-by-url-with-http-info any?
  "Image Analysis by URL
  Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes. You can play around with that endpoint!"
  [imageUrl string?]
  (check-required-params imageUrl)
  (call-api "/food/images/analyze" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"imageUrl" imageUrl }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec image-analysis-by-url any?
  "Image Analysis by URL
  Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes. You can play around with that endpoint!"
  [imageUrl string?]
  (let [res (:data (image-analysis-by-url-with-http-info imageUrl))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec image-classification-by-url-with-http-info any?
  "Image Classification by URL
  Classify a food image. You can play around with that endpoint!"
  [imageUrl string?]
  (check-required-params imageUrl)
  (call-api "/food/images/classify" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"imageUrl" imageUrl }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec image-classification-by-url any?
  "Image Classification by URL
  Classify a food image. You can play around with that endpoint!"
  [imageUrl string?]
  (let [res (:data (image-classification-by-url-with-http-info imageUrl))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec ingredient-search-with-http-info any?
  "Ingredient Search
  Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.)."
  ([query string?, ] (ingredient-search-with-http-info query nil))
  ([query string?, {:keys [addChildren minProteinPercent maxProteinPercent minFatPercent maxFatPercent minCarbsPercent maxCarbsPercent metaInformation intolerances sort sortDirection offset number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/ingredients/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "addChildren" addChildren "minProteinPercent" minProteinPercent "maxProteinPercent" maxProteinPercent "minFatPercent" minFatPercent "maxFatPercent" maxFatPercent "minCarbsPercent" minCarbsPercent "maxCarbsPercent" maxCarbsPercent "metaInformation" metaInformation "intolerances" intolerances "sort" sort "sortDirection" sortDirection "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec ingredient-search any?
  "Ingredient Search
  Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.)."
  ([query string?, ] (ingredient-search query nil))
  ([query string?, optional-params any?]
   (let [res (:data (ingredient-search-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec map-ingredients-to-grocery-products-with-http-info any?
  "Map Ingredients to Grocery Products
  Map a set of ingredients to products you can buy in the grocery store."
  [body any?]
  (check-required-params body)
  (call-api "/food/ingredients/map" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    body
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec map-ingredients-to-grocery-products any?
  "Map Ingredients to Grocery Products
  Map a set of ingredients to products you can buy in the grocery store."
  [body any?]
  (let [res (:data (map-ingredients-to-grocery-products-with-http-info body))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec parse-ingredients-with-http-info any?
  "Parse Ingredients
  Extract an ingredient from plain text."
  ([ingredientList string?, servings float?, ] (parse-ingredients-with-http-info ingredientList servings nil))
  ([ingredientList string?, servings float?, {:keys [includeNutrition]} (s/map-of keyword? any?)]
   (check-required-params ingredientList servings)
   (call-api "/recipes/parseIngredients" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"ingredientList" ingredientList "servings" servings "includeNutrition" includeNutrition }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec parse-ingredients any?
  "Parse Ingredients
  Extract an ingredient from plain text."
  ([ingredientList string?, servings float?, ] (parse-ingredients ingredientList servings nil))
  ([ingredientList string?, servings float?, optional-params any?]
   (let [res (:data (parse-ingredients-with-http-info ingredientList servings optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


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
             :auth-names    []}))

(defn-spec quick-answer any?
  "Quick Answer
  Answer a nutrition related natural language question."
  [q string?]
  (let [res (:data (quick-answer-with-http-info q))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec search-all-food-with-http-info any?
  "Search All Food
  Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos."
  ([query string?, ] (search-all-food-with-http-info query nil))
  ([query string?, {:keys [offset number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec search-all-food any?
  "Search All Food
  Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos."
  ([query string?, ] (search-all-food query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-all-food-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-custom-foods-with-http-info any?
  "Search Custom Foods
  Search custom foods in a user's account."
  ([query string?, username string?, hash string?, ] (search-custom-foods-with-http-info query username hash nil))
  ([query string?, username string?, hash string?, {:keys [offset number]} (s/map-of keyword? any?)]
   (check-required-params query username hash)
   (call-api "/food/customFoods/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "username" username "hash" hash "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec search-custom-foods any?
  "Search Custom Foods
  Search custom foods in a user's account."
  ([query string?, username string?, hash string?, ] (search-custom-foods query username hash nil))
  ([query string?, username string?, hash string?, optional-params any?]
   (let [res (:data (search-custom-foods-with-http-info query username hash optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-food-videos-with-http-info any?
  "Search Food Videos
  Find recipe and other food related videos."
  ([query string?, ] (search-food-videos-with-http-info query nil))
  ([query string?, {:keys [type cuisine diet includeIngredients excludeIngredients minLength maxLength offset number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/videos/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "type" type "cuisine" cuisine "diet" diet "includeIngredients" includeIngredients "excludeIngredients" excludeIngredients "minLength" minLength "maxLength" maxLength "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec search-food-videos any?
  "Search Food Videos
  Find recipe and other food related videos."
  ([query string?, ] (search-food-videos query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-food-videos-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-grocery-products-with-http-info any?
  "Search Grocery Products
  Search packaged food products, such as frozen pizza or Greek yogurt."
  ([query string?, ] (search-grocery-products-with-http-info query nil))
  ([query string?, {:keys [minCalories maxCalories minCarbs maxCarbs minProtein maxProtein minFat maxFat offset number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/products/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "minCalories" minCalories "maxCalories" maxCalories "minCarbs" minCarbs "maxCarbs" maxCarbs "minProtein" minProtein "maxProtein" maxProtein "minFat" minFat "maxFat" maxFat "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec search-grocery-products any?
  "Search Grocery Products
  Search packaged food products, such as frozen pizza or Greek yogurt."
  ([query string?, ] (search-grocery-products query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-grocery-products-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
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
             :auth-names    []}))

(defn-spec search-grocery-products-by-upc any?
  "Search Grocery Products by UPC
  Get information about a packaged food using its UPC."
  [upc float?]
  (let [res (:data (search-grocery-products-by-upc-with-http-info upc))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec search-menu-items-with-http-info any?
  "Search Menu Items
  Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha."
  ([query string?, ] (search-menu-items-with-http-info query nil))
  ([query string?, {:keys [minCalories maxCalories minCarbs maxCarbs minProtein maxProtein minFat maxFat offset number]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/food/menuItems/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "minCalories" minCalories "maxCalories" maxCalories "minCarbs" minCarbs "maxCarbs" maxCarbs "minProtein" minProtein "maxProtein" maxProtein "minFat" minFat "maxFat" maxFat "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec search-menu-items any?
  "Search Menu Items
  Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha."
  ([query string?, ] (search-menu-items query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-menu-items-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-recipes-with-http-info any?
  "Search Recipes
  Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint."
  ([query string?, ] (search-recipes-with-http-info query nil))
  ([query string?, {:keys [cuisine excludeCuisine diet intolerances equipment includeIngredients excludeIngredients type instructionsRequired fillIngredients addRecipeInformation addRecipeNutrition author tags recipeBoxId titleMatch maxReadyTime ignorePantry sort sortDirection minCarbs maxCarbs minProtein maxProtein minCalories maxCalories minFat maxFat minAlcohol maxAlcohol minCaffeine maxCaffeine minCopper maxCopper minCalcium maxCalcium minCholine maxCholine minCholesterol maxCholesterol minFluoride maxFluoride minSaturatedFat maxSaturatedFat minVitaminA maxVitaminA minVitaminC maxVitaminC minVitaminD maxVitaminD minVitaminE maxVitaminE minVitaminK maxVitaminK minVitaminB1 maxVitaminB1 minVitaminB2 maxVitaminB2 minVitaminB5 maxVitaminB5 minVitaminB3 maxVitaminB3 minVitaminB6 maxVitaminB6 minVitaminB12 maxVitaminB12 minFiber maxFiber minFolate maxFolate minFolicAcid maxFolicAcid minIodine maxIodine minIron maxIron minMagnesium maxMagnesium minManganese maxManganese minPhosphorus maxPhosphorus minPotassium maxPotassium minSelenium maxSelenium minSodium maxSodium minSugar maxSugar minZinc maxZinc offset number limitLicense]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/recipes/complexSearch" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "cuisine" cuisine "excludeCuisine" excludeCuisine "diet" diet "intolerances" intolerances "equipment" equipment "includeIngredients" includeIngredients "excludeIngredients" excludeIngredients "type" type "instructionsRequired" instructionsRequired "fillIngredients" fillIngredients "addRecipeInformation" addRecipeInformation "addRecipeNutrition" addRecipeNutrition "author" author "tags" tags "recipeBoxId" recipeBoxId "titleMatch" titleMatch "maxReadyTime" maxReadyTime "ignorePantry" ignorePantry "sort" sort "sortDirection" sortDirection "minCarbs" minCarbs "maxCarbs" maxCarbs "minProtein" minProtein "maxProtein" maxProtein "minCalories" minCalories "maxCalories" maxCalories "minFat" minFat "maxFat" maxFat "minAlcohol" minAlcohol "maxAlcohol" maxAlcohol "minCaffeine" minCaffeine "maxCaffeine" maxCaffeine "minCopper" minCopper "maxCopper" maxCopper "minCalcium" minCalcium "maxCalcium" maxCalcium "minCholine" minCholine "maxCholine" maxCholine "minCholesterol" minCholesterol "maxCholesterol" maxCholesterol "minFluoride" minFluoride "maxFluoride" maxFluoride "minSaturatedFat" minSaturatedFat "maxSaturatedFat" maxSaturatedFat "minVitaminA" minVitaminA "maxVitaminA" maxVitaminA "minVitaminC" minVitaminC "maxVitaminC" maxVitaminC "minVitaminD" minVitaminD "maxVitaminD" maxVitaminD "minVitaminE" minVitaminE "maxVitaminE" maxVitaminE "minVitaminK" minVitaminK "maxVitaminK" maxVitaminK "minVitaminB1" minVitaminB1 "maxVitaminB1" maxVitaminB1 "minVitaminB2" minVitaminB2 "maxVitaminB2" maxVitaminB2 "minVitaminB5" minVitaminB5 "maxVitaminB5" maxVitaminB5 "minVitaminB3" minVitaminB3 "maxVitaminB3" maxVitaminB3 "minVitaminB6" minVitaminB6 "maxVitaminB6" maxVitaminB6 "minVitaminB12" minVitaminB12 "maxVitaminB12" maxVitaminB12 "minFiber" minFiber "maxFiber" maxFiber "minFolate" minFolate "maxFolate" maxFolate "minFolicAcid" minFolicAcid "maxFolicAcid" maxFolicAcid "minIodine" minIodine "maxIodine" maxIodine "minIron" minIron "maxIron" maxIron "minMagnesium" minMagnesium "maxMagnesium" maxMagnesium "minManganese" minManganese "maxManganese" maxManganese "minPhosphorus" minPhosphorus "maxPhosphorus" maxPhosphorus "minPotassium" minPotassium "maxPotassium" maxPotassium "minSelenium" minSelenium "maxSelenium" maxSelenium "minSodium" minSodium "maxSodium" maxSodium "minSugar" minSugar "maxSugar" maxSugar "minZinc" minZinc "maxZinc" maxZinc "offset" offset "number" number "limitLicense" limitLicense }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec search-recipes any?
  "Search Recipes
  Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint."
  ([query string?, ] (search-recipes query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-recipes-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-recipes-by-ingredients-with-http-info any?
  "Search Recipes by Ingredients
  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping)."
  ([ingredients string?, ] (search-recipes-by-ingredients-with-http-info ingredients nil))
  ([ingredients string?, {:keys [number limitLicense ranking ignorePantry]} (s/map-of keyword? any?)]
   (check-required-params ingredients)
   (call-api "/recipes/findByIngredients" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"ingredients" ingredients "number" number "limitLicense" limitLicense "ranking" ranking "ignorePantry" ignorePantry }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec search-recipes-by-ingredients any?
  "Search Recipes by Ingredients
  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping)."
  ([ingredients string?, ] (search-recipes-by-ingredients ingredients nil))
  ([ingredients string?, optional-params any?]
   (let [res (:data (search-recipes-by-ingredients-with-http-info ingredients optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
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
              :auth-names    []})))

(defn-spec search-recipes-by-nutrients any?
  "Search Recipes by Nutrients
  Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients."
  ([] (search-recipes-by-nutrients nil))
  ([optional-params any?]
   (let [res (:data (search-recipes-by-nutrients-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-site-content-with-http-info any?
  "Search Site Content
  Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries."
  [query string?]
  (check-required-params query)
  (call-api "/food/site/search" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"query" query }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec search-site-content any?
  "Search Site Content
  Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries."
  [query string?]
  (let [res (:data (search-site-content-with-http-info query))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec summarize-recipe-with-http-info any?
  "Summarize Recipe
  Automatically generate a short description that summarizes key information about the recipe."
  [id float?]
  (check-required-params id)
  (call-api "/recipes/{id}/summary" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    []}))

(defn-spec summarize-recipe any?
  "Summarize Recipe
  Automatically generate a short description that summarizes key information about the recipe."
  [id float?]
  (let [res (:data (summarize-recipe-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec talk-to-chatbot-with-http-info any?
  "Talk to Chatbot
  This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say."
  ([text string?, ] (talk-to-chatbot-with-http-info text nil))
  ([text string?, {:keys [contextId]} (s/map-of keyword? any?)]
   (check-required-params text)
   (call-api "/food/converse" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"text" text "contextId" contextId }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    []})))

(defn-spec talk-to-chatbot any?
  "Talk to Chatbot
  This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say."
  ([text string?, ] (talk-to-chatbot text nil))
  ([text string?, optional-params any?]
   (let [res (:data (talk-to-chatbot-with-http-info text optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec visualize-equipment-with-http-info any?
  "Visualize Equipment
  Visualize the equipment used to make a recipe. You can play around with that endpoint!"
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
              :auth-names    []})))

(defn-spec visualize-equipment string?
  "Visualize Equipment
  Visualize the equipment used to make a recipe. You can play around with that endpoint!"
  ([instructions string?, ] (visualize-equipment instructions nil))
  ([instructions string?, optional-params any?]
   (let [res (:data (visualize-equipment-with-http-info instructions optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-ingredients-with-http-info any?
  "Visualize Ingredients
  Visualize ingredients of a recipe. You can play around with that endpoint!"
  ([ingredientList string?, servings float?, ] (visualize-ingredients-with-http-info ingredientList servings nil))
  ([ingredientList string?, servings float?, {:keys [measure view defaultCss showBacklink]} (s/map-of keyword? any?)]
   (check-required-params ingredientList servings)
   (call-api "/recipes/visualizeIngredients" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"ingredientList" ingredientList "servings" servings "measure" measure "view" view "defaultCss" defaultCss "showBacklink" showBacklink }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-ingredients string?
  "Visualize Ingredients
  Visualize ingredients of a recipe. You can play around with that endpoint!"
  ([ingredientList string?, servings float?, ] (visualize-ingredients ingredientList servings nil))
  ([ingredientList string?, servings float?, optional-params any?]
   (let [res (:data (visualize-ingredients-with-http-info ingredientList servings optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-menu-item-nutrition-by-id-with-http-info any?
  "Visualize Menu Item Nutrition by ID
  Visualize a menu item's nutritional information as HTML including CSS."
  ([id float?, ] (visualize-menu-item-nutrition-by-id-with-http-info id nil))
  ([id float?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/food/menuItems/{id}/nutritionWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-menu-item-nutrition-by-id string?
  "Visualize Menu Item Nutrition by ID
  Visualize a menu item's nutritional information as HTML including CSS."
  ([id float?, ] (visualize-menu-item-nutrition-by-id id nil))
  ([id float?, optional-params any?]
   (let [res (:data (visualize-menu-item-nutrition-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-price-breakdown-with-http-info any?
  "Visualize Price Breakdown
  Visualize the price breakdown of a recipe. You can play around with that endpoint!"
  ([ingredientList string?, servings float?, ] (visualize-price-breakdown-with-http-info ingredientList servings nil))
  ([ingredientList string?, servings float?, {:keys [mode defaultCss showBacklink]} (s/map-of keyword? any?)]
   (check-required-params ingredientList servings)
   (call-api "/recipes/visualizePriceEstimator" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"ingredientList" ingredientList "servings" servings "mode" mode "defaultCss" defaultCss "showBacklink" showBacklink }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-price-breakdown string?
  "Visualize Price Breakdown
  Visualize the price breakdown of a recipe. You can play around with that endpoint!"
  ([ingredientList string?, servings float?, ] (visualize-price-breakdown ingredientList servings nil))
  ([ingredientList string?, servings float?, optional-params any?]
   (let [res (:data (visualize-price-breakdown-with-http-info ingredientList servings optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-product-nutrition-by-id-with-http-info any?
  "Visualize Product Nutrition by ID
  Visualize a product's nutritional information as HTML including CSS."
  ([id float?, ] (visualize-product-nutrition-by-id-with-http-info id nil))
  ([id float?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/food/products/{id}/nutritionWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-product-nutrition-by-id string?
  "Visualize Product Nutrition by ID
  Visualize a product's nutritional information as HTML including CSS."
  ([id float?, ] (visualize-product-nutrition-by-id id nil))
  ([id float?, optional-params any?]
   (let [res (:data (visualize-product-nutrition-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-equipment-by-id-with-http-info any?
  "Visualize Recipe Equipment by ID
  Visualize a recipe's equipment list."
  ([id float?, ] (visualize-recipe-equipment-by-id-with-http-info id nil))
  ([id float?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/equipmentWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-recipe-equipment-by-id string?
  "Visualize Recipe Equipment by ID
  Visualize a recipe's equipment list."
  ([id float?, ] (visualize-recipe-equipment-by-id id nil))
  ([id float?, optional-params any?]
   (let [res (:data (visualize-recipe-equipment-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-ingredients-by-id-with-http-info any?
  "Visualize Recipe Ingredients by ID
  Visualize a recipe's ingredient list."
  ([id float?, ] (visualize-recipe-ingredients-by-id-with-http-info id nil))
  ([id float?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/ingredientWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-recipe-ingredients-by-id string?
  "Visualize Recipe Ingredients by ID
  Visualize a recipe's ingredient list."
  ([id float?, ] (visualize-recipe-ingredients-by-id id nil))
  ([id float?, optional-params any?]
   (let [res (:data (visualize-recipe-ingredients-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-nutrition-with-http-info any?
  "Visualize Recipe Nutrition
  Visualize a recipe's nutritional information as HTML including CSS. You can play around with that endpoint!"
  ([ingredientList string?, servings float?, ] (visualize-recipe-nutrition-with-http-info ingredientList servings nil))
  ([ingredientList string?, servings float?, {:keys [defaultCss showBacklink]} (s/map-of keyword? any?)]
   (check-required-params ingredientList servings)
   (call-api "/recipes/visualizeNutrition" :post
             {:path-params   {}
              :header-params {}
              :query-params  {}
              :form-params   {"ingredientList" ingredientList "servings" servings "defaultCss" defaultCss "showBacklink" showBacklink }
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-recipe-nutrition string?
  "Visualize Recipe Nutrition
  Visualize a recipe's nutritional information as HTML including CSS. You can play around with that endpoint!"
  ([ingredientList string?, servings float?, ] (visualize-recipe-nutrition ingredientList servings nil))
  ([ingredientList string?, servings float?, optional-params any?]
   (let [res (:data (visualize-recipe-nutrition-with-http-info ingredientList servings optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-nutrition-by-id-with-http-info any?
  "Visualize Recipe Nutrition by ID
  Visualize a recipe's nutritional information as HTML including CSS."
  ([id float?, ] (visualize-recipe-nutrition-by-id-with-http-info id nil))
  ([id float?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/nutritionWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-recipe-nutrition-by-id string?
  "Visualize Recipe Nutrition by ID
  Visualize a recipe's nutritional information as HTML including CSS."
  ([id float?, ] (visualize-recipe-nutrition-by-id id nil))
  ([id float?, optional-params any?]
   (let [res (:data (visualize-recipe-nutrition-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-price-breakdown-by-id-with-http-info any?
  "Visualize Recipe Price Breakdown by ID
  Visualize a recipe's price breakdown."
  ([id float?, ] (visualize-recipe-price-breakdown-by-id-with-http-info id nil))
  ([id float?, {:keys [defaultCss]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/recipes/{id}/priceBreakdownWidget" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"defaultCss" defaultCss }
              :form-params   {}
              :content-types []
              :accepts       ["text/html"]
              :auth-names    []})))

(defn-spec visualize-recipe-price-breakdown-by-id string?
  "Visualize Recipe Price Breakdown by ID
  Visualize a recipe's price breakdown."
  ([id float?, ] (visualize-recipe-price-breakdown-by-id id nil))
  ([id float?, optional-params any?]
   (let [res (:data (visualize-recipe-price-breakdown-by-id-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode string? res st/string-transformer)
        res))))


(defn-spec visualize-recipe-taste-with-http-info any?
  "Visualize Recipe Taste
  Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!"
  [ingredientList string?]
  (check-required-params ingredientList)
  (call-api "/recipes/visualizeTaste" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {"ingredientList" ingredientList }
             :content-types ["application/x-www-form-urlencoded"]
             :accepts       ["text/html"]
             :auth-names    []}))

(defn-spec visualize-recipe-taste string?
  "Visualize Recipe Taste
  Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!"
  [ingredientList string?]
  (let [res (:data (visualize-recipe-taste-with-http-info ingredientList))]
    (if (:decode-models *api-context*)
       (st/decode string? res st/string-transformer)
       res)))


(defn-spec visualize-recipe-taste-by-id-with-http-info any?
  "Visualize Recipe Taste by ID
  Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty."
  [id float?]
  (check-required-params id)
  (call-api "/recipes/{id}/tasteWidget" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["text/html"]
             :auth-names    []}))

(defn-spec visualize-recipe-taste-by-id string?
  "Visualize Recipe Taste by ID
  Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty."
  [id float?]
  (let [res (:data (visualize-recipe-taste-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode string? res st/string-transformer)
       res)))


