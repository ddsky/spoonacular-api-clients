(ns spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner-measures :refer :all]
            )
  (:import (java.io File)))


(def get-shopping-list-200-response-aisles-inner-items-inner-data
  {
   (ds/req :id) int?
   (ds/req :name) string?
   (ds/opt :measures) get-shopping-list-200-response-aisles-inner-items-inner-measures-spec
   (ds/req :pantryItem) boolean?
   (ds/req :aisle) string?
   (ds/req :cost) float?
   (ds/req :ingredientId) int?
   })

(def get-shopping-list-200-response-aisles-inner-items-inner-spec
  (ds/spec
    {:name ::get-shopping-list-200-response-aisles-inner-items-inner
     :spec get-shopping-list-200-response-aisles-inner-items-inner-data}))
