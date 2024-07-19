(ns spoonacular-api.api.misc
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
             :auth-names    ["apiKeyScheme"]}))

(defn-spec detect-food-in-text detect-food-in-text-200-response-spec
  "Detect Food in Text
  Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds."
  [text string?]
  (let [res (:data (detect-food-in-text-with-http-info text))]
    (if (:decode-models *api-context*)
       (st/decode detect-food-in-text-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-a-random-food-joke-with-http-info any?
  "Random Food Joke
  Get a random joke that is related to food. Caution: this is an endpoint for adults!"
  []
  (call-api "/food/jokes/random" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-a-random-food-joke get-a-random-food-joke-200-response-spec
  "Random Food Joke
  Get a random joke that is related to food. Caution: this is an endpoint for adults!"
  []
  (let [res (:data (get-a-random-food-joke-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode get-a-random-food-joke-200-response-spec res st/string-transformer)
       res)))


(defn-spec get-conversation-suggests-with-http-info any?
  "Conversation Suggests
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
              :auth-names    ["apiKeyScheme"]})))

(defn-spec get-conversation-suggests get-conversation-suggests-200-response-spec
  "Conversation Suggests
  This endpoint returns suggestions for things the user can say or ask the chatbot."
  ([query string?, ] (get-conversation-suggests query nil))
  ([query string?, optional-params any?]
   (let [res (:data (get-conversation-suggests-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode get-conversation-suggests-200-response-spec res st/string-transformer)
        res))))


(defn-spec get-random-food-trivia-with-http-info any?
  "Random Food Trivia
  Returns random food trivia."
  []
  (call-api "/food/trivia/random" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec get-random-food-trivia get-a-random-food-joke-200-response-spec
  "Random Food Trivia
  Returns random food trivia."
  []
  (let [res (:data (get-random-food-trivia-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode get-a-random-food-joke-200-response-spec res st/string-transformer)
       res)))


(defn-spec image-analysis-by-url-with-http-info any?
  "Image Analysis by URL
  Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes."
  [imageUrl string?]
  (check-required-params imageUrl)
  (call-api "/food/images/analyze" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"imageUrl" imageUrl }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec image-analysis-by-url image-analysis-by-url-200-response-spec
  "Image Analysis by URL
  Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes."
  [imageUrl string?]
  (let [res (:data (image-analysis-by-url-with-http-info imageUrl))]
    (if (:decode-models *api-context*)
       (st/decode image-analysis-by-url-200-response-spec res st/string-transformer)
       res)))


(defn-spec image-classification-by-url-with-http-info any?
  "Image Classification by URL
  Classify a food image."
  [imageUrl string?]
  (check-required-params imageUrl)
  (call-api "/food/images/classify" :get
            {:path-params   {}
             :header-params {}
             :query-params  {"imageUrl" imageUrl }
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKeyScheme"]}))

(defn-spec image-classification-by-url image-classification-by-url-200-response-spec
  "Image Classification by URL
  Classify a food image."
  [imageUrl string?]
  (let [res (:data (image-classification-by-url-with-http-info imageUrl))]
    (if (:decode-models *api-context*)
       (st/decode image-classification-by-url-200-response-spec res st/string-transformer)
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
              :auth-names    ["apiKeyScheme"]})))

(defn-spec search-all-food search-all-food-200-response-spec
  "Search All Food
  Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos."
  ([query string?, ] (search-all-food query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-all-food-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-all-food-200-response-spec res st/string-transformer)
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
              :auth-names    ["apiKeyScheme"]})))

(defn-spec search-custom-foods search-custom-foods-200-response-spec
  "Search Custom Foods
  Search custom foods in a user's account."
  ([query string?, username string?, hash string?, ] (search-custom-foods query username hash nil))
  ([query string?, username string?, hash string?, optional-params any?]
   (let [res (:data (search-custom-foods-with-http-info query username hash optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-custom-foods-200-response-spec res st/string-transformer)
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
              :auth-names    ["apiKeyScheme"]})))

(defn-spec search-food-videos search-food-videos-200-response-spec
  "Search Food Videos
  Find recipe and other food related videos."
  ([query string?, ] (search-food-videos query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-food-videos-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-food-videos-200-response-spec res st/string-transformer)
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
             :auth-names    ["apiKeyScheme"]}))

(defn-spec search-site-content search-site-content-200-response-spec
  "Search Site Content
  Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries."
  [query string?]
  (let [res (:data (search-site-content-with-http-info query))]
    (if (:decode-models *api-context*)
       (st/decode search-site-content-200-response-spec res st/string-transformer)
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
              :auth-names    ["apiKeyScheme"]})))

(defn-spec talk-to-chatbot talk-to-chatbot-200-response-spec
  "Talk to Chatbot
  This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say."
  ([text string?, ] (talk-to-chatbot text nil))
  ([text string?, optional-params any?]
   (let [res (:data (talk-to-chatbot-with-http-info text optional-params))]
     (if (:decode-models *api-context*)
        (st/decode talk-to-chatbot-200-response-spec res st/string-transformer)
        res))))


