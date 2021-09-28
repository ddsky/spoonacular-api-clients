(ns spoonacular-api.specs.inline-response-200-22
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.-recipes-parse-ingredients-estimated-cost :refer :all]
            [spoonacular-api.specs.inline-response-200-22-nutrition :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-22-data
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
   (ds/req :estimatedCost) -recipes-parse-ingredients-estimated-cost-spec
   (ds/req :consistency) string?
   (ds/req :shoppingListUnits) (s/coll-of string?)
   (ds/req :aisle) string?
   (ds/req :image) string?
   (ds/req :meta) (s/coll-of any?)
   (ds/req :nutrition) inline-response-200-22-nutrition-spec
   (ds/req :categoryPath) (s/coll-of string?)
   })

(def inline-response-200-22-spec
  (ds/spec
    {:name ::inline-response-200-22
     :spec inline-response-200-22-data}))
