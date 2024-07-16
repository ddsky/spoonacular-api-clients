(ns spoonacular-api.specs.ingredient-information-nutrition
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition-nutrients-inner :refer :all]
            [spoonacular-api.specs.ingredient-information-nutrition-properties-inner :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition-caloric-breakdown :refer :all]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner-measures-original :refer :all]
            )
  (:import (java.io File)))


(def ingredient-information-nutrition-data
  {
   (ds/req :nutrients) (s/coll-of search-grocery-products-by-upc-200-response-nutrition-nutrients-inner-spec)
   (ds/req :properties) (s/coll-of ingredient-information-nutrition-properties-inner-spec)
   (ds/req :caloricBreakdown) search-grocery-products-by-upc-200-response-nutrition-caloric-breakdown-spec
   (ds/req :weightPerServing) get-shopping-list-200-response-aisles-inner-items-inner-measures-original-spec
   })

(def ingredient-information-nutrition-spec
  (ds/spec
    {:name ::ingredient-information-nutrition
     :spec ingredient-information-nutrition-data}))
