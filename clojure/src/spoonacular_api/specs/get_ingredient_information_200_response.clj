(ns spoonacular-api.specs.get-ingredient-information-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-estimated-cost :refer :all]
            [spoonacular-api.specs.get-ingredient-information-200-response-nutrition :refer :all]
            )
  (:import (java.io File)))


(def get-ingredient-information-200-response-data
  {
   (ds/req :id) int?
   (ds/req :original) string?
   (ds/req :originalName) string?
   (ds/req :name) string?
   (ds/req :nameClean) string?
   (ds/req :amount) float?
   (ds/req :unit) string?
   (ds/req :unitShort) string?
   (ds/req :unitLong) string?
   (ds/req :possibleUnits) (s/coll-of string?)
   (ds/req :estimatedCost) parse-ingredients-200-response-inner-estimated-cost-spec
   (ds/req :consistency) string?
   (ds/req :shoppingListUnits) (s/coll-of string?)
   (ds/req :aisle) string?
   (ds/req :image) string?
   (ds/req :meta) (s/coll-of any?)
   (ds/req :nutrition) get-ingredient-information-200-response-nutrition-spec
   (ds/req :categoryPath) (s/coll-of string?)
   })

(def get-ingredient-information-200-response-spec
  (ds/spec
    {:name ::get-ingredient-information-200-response
     :spec get-ingredient-information-200-response-data}))
