(ns spoonacular-api.api.misc
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


(defn-spec detect-food-in-text-with-http-info any?
  "Detect Food in Text
  Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds."
  ([] (detect-food-in-text-with-http-info nil))
  ([{:keys [Content-Type]} (s/map-of keyword? any?)]
   (call-api "/food/detect" :post
             {:path-params   {}
              :header-params {"Content-Type" Content-Type }
              :query-params  {}
              :form-params   {}
              :content-types ["application/x-www-form-urlencoded"]
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec detect-food-in-text inline-response-200-51-spec
  "Detect Food in Text
  Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds."
  ([] (detect-food-in-text nil))
  ([optional-params any?]
   (let [res (:data (detect-food-in-text-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-51-spec res st/string-transformer)
        res))))


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

(defn-spec get-a-random-food-joke inline-response-200-55-spec
  "Random Food Joke
  Get a random joke that is related to food. Caution: this is an endpoint for adults!"
  []
  (let [res (:data (get-a-random-food-joke-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-55-spec res st/string-transformer)
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

(defn-spec get-conversation-suggests inline-response-200-57-spec
  "Conversation Suggests
  This endpoint returns suggestions for things the user can say or ask the chatbot."
  ([query string?, ] (get-conversation-suggests query nil))
  ([query string?, optional-params any?]
   (let [res (:data (get-conversation-suggests-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-57-spec res st/string-transformer)
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

(defn-spec get-random-food-trivia inline-response-200-55-spec
  "Random Food Trivia
  Returns random food trivia."
  []
  (let [res (:data (get-random-food-trivia-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-55-spec res st/string-transformer)
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

(defn-spec image-analysis-by-url inline-response-200-49-spec
  "Image Analysis by URL
  Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes."
  [imageUrl string?]
  (let [res (:data (image-analysis-by-url-with-http-info imageUrl))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-49-spec res st/string-transformer)
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

(defn-spec image-classification-by-url inline-response-200-48-spec
  "Image Classification by URL
  Classify a food image."
  [imageUrl string?]
  (let [res (:data (image-classification-by-url-with-http-info imageUrl))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-48-spec res st/string-transformer)
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

(defn-spec search-all-food inline-response-200-53-spec
  "Search All Food
  Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos."
  ([query string?, ] (search-all-food query nil))
  ([query string?, optional-params any?]
   (let [res (:data (search-all-food-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-53-spec res st/string-transformer)
        res))))


(defn-spec search-custom-foods-with-http-info any?
  "Search Custom Foods
  Search custom foods in a user's account."
  ([username string?, hash string?, ] (search-custom-foods-with-http-info username hash nil))
  ([username string?, hash string?, {:keys [query offset number]} (s/map-of keyword? any?)]
   (check-required-params username hash)
   (call-api "/food/customFoods/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "username" username "hash" hash "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec search-custom-foods inline-response-200-29-spec
  "Search Custom Foods
  Search custom foods in a user's account."
  ([username string?, hash string?, ] (search-custom-foods username hash nil))
  ([username string?, hash string?, optional-params any?]
   (let [res (:data (search-custom-foods-with-http-info username hash optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-29-spec res st/string-transformer)
        res))))


(defn-spec search-food-videos-with-http-info any?
  "Search Food Videos
  Find recipe and other food related videos."
  ([] (search-food-videos-with-http-info nil))
  ([{:keys [query type cuisine diet includeIngredients excludeIngredients minLength maxLength offset number]} (s/map-of keyword? any?)]
   (call-api "/food/videos/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "type" type "cuisine" cuisine "diet" diet "includeIngredients" includeIngredients "excludeIngredients" excludeIngredients "minLength" minLength "maxLength" maxLength "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyScheme"]})))

(defn-spec search-food-videos inline-response-200-54-spec
  "Search Food Videos
  Find recipe and other food related videos."
  ([] (search-food-videos nil))
  ([optional-params any?]
   (let [res (:data (search-food-videos-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-54-spec res st/string-transformer)
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

(defn-spec search-site-content inline-response-200-52-spec
  "Search Site Content
  Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries."
  [query string?]
  (let [res (:data (search-site-content-with-http-info query))]
    (if (:decode-models *api-context*)
       (st/decode inline-response-200-52-spec res st/string-transformer)
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

(defn-spec talk-to-chatbot inline-response-200-56-spec
  "Talk to Chatbot
  This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say."
  ([text string?, ] (talk-to-chatbot text nil))
  ([text string?, optional-params any?]
   (let [res (:data (talk-to-chatbot-with-http-info text optional-params))]
     (if (:decode-models *api-context*)
        (st/decode inline-response-200-56-spec res st/string-transformer)
        res))))


