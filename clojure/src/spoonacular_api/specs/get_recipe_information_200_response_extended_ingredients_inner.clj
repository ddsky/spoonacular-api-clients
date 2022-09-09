(ns spoonacular-api.specs.get-recipe-information-200-response-extended-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-recipe-information-200-response-extended-ingredients-inner-measures :refer :all]
            )
  (:import (java.io File)))


(def get-recipe-information-200-response-extended-ingredients-inner-data
  {
   (ds/req :aisle) string?
   (ds/req :amount) float?
   (ds/req :consitency) string?
   (ds/req :id) int?
   (ds/req :image) string?
   (ds/opt :measures) get-recipe-information-200-response-extended-ingredients-inner-measures-spec
   (ds/opt :meta) (s/coll-of string?)
   (ds/req :name) string?
   (ds/req :original) string?
   (ds/req :originalName) string?
   (ds/req :unit) string?
   })

(def get-recipe-information-200-response-extended-ingredients-inner-spec
  (ds/spec
    {:name ::get-recipe-information-200-response-extended-ingredients-inner
     :spec get-recipe-information-200-response-extended-ingredients-inner-data}))
