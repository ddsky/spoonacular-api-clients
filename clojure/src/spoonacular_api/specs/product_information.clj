(ns spoonacular-api.specs.product-information
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.ingredient-basics :refer :all]
            [spoonacular-api.specs.product-information-credits :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-servings :refer :all]
            )
  (:import (java.io File)))


(def product-information-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/opt :upc) string?
   (ds/opt :usdaCode) string?
   (ds/req :breadcrumbs) (s/coll-of string?)
   (ds/req :imageType) string?
   (ds/req :badges) (s/coll-of string?)
   (ds/req :importantBadges) (s/coll-of string?)
   (ds/req :ingredientCount) int?
   (ds/opt :generatedText) string?
   (ds/req :ingredientList) string?
   (ds/req :ingredients) (s/coll-of ingredient-basics-spec)
   (ds/req :likes) float?
   (ds/req :aisle) string?
   (ds/opt :credits) product-information-credits-spec
   (ds/req :nutrition) search-grocery-products-by-upc-200-response-nutrition-spec
   (ds/req :price) float?
   (ds/req :servings) search-grocery-products-by-upc-200-response-servings-spec
   (ds/req :spoonacularScore) float?
   })

(def product-information-spec
  (ds/spec
    {:name ::product-information
     :spec product-information-data}))
