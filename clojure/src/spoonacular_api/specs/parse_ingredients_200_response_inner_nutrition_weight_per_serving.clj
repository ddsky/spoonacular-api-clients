(ns spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-weight-per-serving
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def parse-ingredients-200-response-inner-nutrition-weight-per-serving-data
  {
   (ds/req :amount) float?
   (ds/req :unit) string?
   })

(def parse-ingredients-200-response-inner-nutrition-weight-per-serving-spec
  (ds/spec
    {:name ::parse-ingredients-200-response-inner-nutrition-weight-per-serving
     :spec parse-ingredients-200-response-inner-nutrition-weight-per-serving-data}))
