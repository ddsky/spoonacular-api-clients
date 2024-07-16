(ns spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner-measures-original
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-shopping-list-200-response-aisles-inner-items-inner-measures-original-data
  {
   (ds/req :amount) float?
   (ds/req :unit) string?
   })

(def get-shopping-list-200-response-aisles-inner-items-inner-measures-original-spec
  (ds/spec
    {:name ::get-shopping-list-200-response-aisles-inner-items-inner-measures-original
     :spec get-shopping-list-200-response-aisles-inner-items-inner-measures-original-data}))
