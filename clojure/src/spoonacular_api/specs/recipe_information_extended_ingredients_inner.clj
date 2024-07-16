(ns spoonacular-api.specs.recipe-information-extended-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.recipe-information-extended-ingredients-inner-measures :refer :all]
            )
  (:import (java.io File)))


(def recipe-information-extended-ingredients-inner-data
  {
   (ds/req :aisle) string?
   (ds/req :amount) float?
   (ds/req :consistency) string?
   (ds/req :id) int?
   (ds/req :image) string?
   (ds/opt :measures) recipe-information-extended-ingredients-inner-measures-spec
   (ds/opt :meta) (s/coll-of string?)
   (ds/req :name) string?
   (ds/req :original) string?
   (ds/req :originalName) string?
   (ds/req :unit) string?
   })

(def recipe-information-extended-ingredients-inner-spec
  (ds/spec
    {:name ::recipe-information-extended-ingredients-inner
     :spec recipe-information-extended-ingredients-inner-data}))
