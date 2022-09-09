(ns spoonacular-api.specs.parse-ingredients-200-response-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-estimated-cost :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition :refer :all]
            )
  (:import (java.io File)))


(def parse-ingredients-200-response-inner-data
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
   (ds/req :aisle) string?
   (ds/req :image) string?
   (ds/req :meta) (s/coll-of string?)
   (ds/req :nutrition) parse-ingredients-200-response-inner-nutrition-spec
   })

(def parse-ingredients-200-response-inner-spec
  (ds/spec
    {:name ::parse-ingredients-200-response-inner
     :spec parse-ingredients-200-response-inner-data}))
