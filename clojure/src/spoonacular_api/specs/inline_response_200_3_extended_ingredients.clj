(ns spoonacular-api.specs.inline-response-200-3-extended-ingredients
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-3-measures :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-3-extended-ingredients-data
  {
   (ds/req :aisle) string?
   (ds/req :amount) float?
   (ds/req :consitency) string?
   (ds/req :id) int?
   (ds/req :image) string?
   (ds/opt :measures) inline-response-200-3-measures-spec
   (ds/opt :meta) (s/coll-of string?)
   (ds/req :name) string?
   (ds/req :original) string?
   (ds/req :originalName) string?
   (ds/req :unit) string?
   })

(def inline-response-200-3-extended-ingredients-spec
  (ds/spec
    {:name ::inline-response-200-3-extended-ingredients
     :spec inline-response-200-3-extended-ingredients-data}))
