(ns spoonacular-api.specs.search-grocery-products-by-upc-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.ingredient-basics :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-servings :refer :all]
            )
  (:import (java.io File)))


(def search-grocery-products-by-upc-200-response-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :badges) (s/coll-of string?)
   (ds/req :importantBadges) (s/coll-of string?)
   (ds/req :breadcrumbs) (s/coll-of string?)
   (ds/req :generatedText) string?
   (ds/req :imageType) string?
   (ds/opt :ingredientCount) int?
   (ds/req :ingredientList) string?
   (ds/req :ingredients) (s/coll-of ingredient-basics-spec)
   (ds/req :likes) float?
   (ds/req :nutrition) search-grocery-products-by-upc-200-response-nutrition-spec
   (ds/req :price) float?
   (ds/req :servings) search-grocery-products-by-upc-200-response-servings-spec
   (ds/req :spoonacularScore) float?
   })

(def search-grocery-products-by-upc-200-response-spec
  (ds/spec
    {:name ::search-grocery-products-by-upc-200-response
     :spec search-grocery-products-by-upc-200-response-data}))
