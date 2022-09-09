(ns spoonacular-api.specs.get-menu-item-information-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-servings :refer :all]
            )
  (:import (java.io File)))


(def get-menu-item-information-200-response-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :restaurantChain) string?
   (ds/req :nutrition) search-grocery-products-by-upc-200-response-nutrition-spec
   (ds/req :badges) (s/coll-of string?)
   (ds/req :breadcrumbs) (s/coll-of string?)
   (ds/opt :generatedText) string?
   (ds/req :imageType) string?
   (ds/req :likes) float?
   (ds/req :servings) search-grocery-products-by-upc-200-response-servings-spec
   (ds/opt :price) float?
   (ds/opt :spoonacularScore) float?
   })

(def get-menu-item-information-200-response-spec
  (ds/spec
    {:name ::get-menu-item-information-200-response
     :spec get-menu-item-information-200-response-data}))
