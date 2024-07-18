(ns spoonacular-api.specs.menu-item
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition :refer :all]
            [spoonacular-api.specs.menu-item-servings :refer :all]
            )
  (:import (java.io File)))


(def menu-item-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :restaurantChain) string?
   (ds/opt :nutrition) search-grocery-products-by-upc-200-response-nutrition-spec
   (ds/opt :badges) (s/coll-of string?)
   (ds/opt :breadcrumbs) (s/coll-of string?)
   (ds/opt :generatedText) string?
   (ds/opt :imageType) string?
   (ds/opt :likes) int?
   (ds/opt :servings) menu-item-servings-spec
   (ds/req :price) float?
   (ds/req :spoonacularScore) float?
   })

(def menu-item-spec
  (ds/spec
    {:name ::menu-item
     :spec menu-item-data}))
