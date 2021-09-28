(ns spoonacular-api.specs.-recipes-find-by-ingredients-missed-ingredients
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def -recipes-find-by-ingredients-missed-ingredients-data
  {
   (ds/req :aisle) string?
   (ds/req :amount) float?
   (ds/req :id) int?
   (ds/req :image) string?
   (ds/opt :meta) (s/coll-of string?)
   (ds/req :name) string?
   (ds/req :original) string?
   (ds/req :originalName) string?
   (ds/req :unit) string?
   (ds/req :unitLong) string?
   (ds/req :unitShort) string?
   })

(def -recipes-find-by-ingredients-missed-ingredients-spec
  (ds/spec
    {:name ::-recipes-find-by-ingredients-missed-ingredients
     :spec -recipes-find-by-ingredients-missed-ingredients-data}))
