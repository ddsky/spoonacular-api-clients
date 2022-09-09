(ns spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-properties-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def parse-ingredients-200-response-inner-nutrition-properties-inner-data
  {
   (ds/req :name) string?
   (ds/req :amount) float?
   (ds/req :unit) string?
   })

(def parse-ingredients-200-response-inner-nutrition-properties-inner-spec
  (ds/spec
    {:name ::parse-ingredients-200-response-inner-nutrition-properties-inner
     :spec parse-ingredients-200-response-inner-nutrition-properties-inner-data}))
