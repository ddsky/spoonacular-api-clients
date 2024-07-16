(ns spoonacular-api.specs.ingredient-information
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.ingredient-information-estimated-cost :refer :all]
            [spoonacular-api.specs.ingredient-information-nutrition :refer :all]
            )
  (:import (java.io File)))


(def ingredient-information-data
  {
   (ds/req :id) int?
   (ds/req :original) string?
   (ds/req :originalName) string?
   (ds/req :name) string?
   (ds/req :amount) float?
   (ds/req :unit) string?
   (ds/req :unitShort) string?
   (ds/req :unitLong) string?
   (ds/req :possibleUnits) (s/coll-of string?)
   (ds/req :estimatedCost) ingredient-information-estimated-cost-spec
   (ds/req :consistency) string?
   (ds/opt :shoppingListUnits) (s/coll-of string?)
   (ds/req :aisle) string?
   (ds/req :image) string?
   (ds/req :meta) (s/coll-of string?)
   (ds/opt :nutrition) ingredient-information-nutrition-spec
   (ds/opt :categoryPath) (s/coll-of string?)
   })

(def ingredient-information-spec
  (ds/spec
    {:name ::ingredient-information
     :spec ingredient-information-data}))
