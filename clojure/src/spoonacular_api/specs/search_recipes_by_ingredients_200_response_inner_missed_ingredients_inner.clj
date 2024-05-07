(ns spoonacular-api.specs.search-recipes-by-ingredients-200-response-inner-missed-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-recipes-by-ingredients-200-response-inner-missed-ingredients-inner-data
  {
   (ds/req :aisle) string?
   (ds/req :amount) float?
   (ds/req :id) int?
   (ds/req :image) string?
   (ds/opt :meta) (s/coll-of string?)
   (ds/req :name) string?
   (ds/opt :extendedName) string?
   (ds/req :original) string?
   (ds/req :originalName) string?
   (ds/req :unit) string?
   (ds/req :unitLong) string?
   (ds/req :unitShort) string?
   })

(def search-recipes-by-ingredients-200-response-inner-missed-ingredients-inner-spec
  (ds/spec
    {:name ::search-recipes-by-ingredients-200-response-inner-missed-ingredients-inner
     :spec search-recipes-by-ingredients-200-response-inner-missed-ingredients-inner-data}))
