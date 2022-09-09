(ns spoonacular-api.specs.get-product-information-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs. :refer :all]
            [spoonacular-api.specs.get-product-information-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-servings :refer :all]
            )
  (:import (java.io File)))


(def get-product-information-200-response-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :breadcrumbs) (s/coll-of string?)
   (ds/req :imageType) string?
   (ds/req :badges) (s/coll-of string?)
   (ds/req :importantBadges) (s/coll-of string?)
   (ds/req :ingredientCount) int?
   (ds/opt :generatedText) any-type-spec
   (ds/req :ingredientList) string?
   (ds/req :ingredients) (s/coll-of get-product-information-200-response-ingredients-inner-spec)
   (ds/req :likes) float?
   (ds/req :aisle) string?
   (ds/req :nutrition) search-grocery-products-by-upc-200-response-nutrition-spec
   (ds/req :price) float?
   (ds/req :servings) search-grocery-products-by-upc-200-response-servings-spec
   (ds/req :spoonacularScore) float?
   })

(def get-product-information-200-response-spec
  (ds/spec
    {:name ::get-product-information-200-response
     :spec get-product-information-200-response-data}))
