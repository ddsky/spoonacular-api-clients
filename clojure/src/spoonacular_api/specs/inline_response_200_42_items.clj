(ns spoonacular-api.specs.inline-response-200-42-items
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-42-measures :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-42-items-data
  {
   (ds/req :id) int?
   (ds/req :name) string?
   (ds/opt :measures) inline-response-200-42-measures-spec
   (ds/req :pantryItem) boolean?
   (ds/req :aisle) string?
   (ds/req :cost) float?
   (ds/req :ingredientId) int?
   })

(def inline-response-200-42-items-spec
  (ds/spec
    {:name ::inline-response-200-42-items
     :spec inline-response-200-42-items-data}))
