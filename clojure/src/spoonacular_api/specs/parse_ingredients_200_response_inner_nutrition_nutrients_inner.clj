(ns spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-nutrients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def parse-ingredients-200-response-inner-nutrition-nutrients-inner-data
  {
   (ds/req :name) string?
   (ds/req :amount) float?
   (ds/req :unit) string?
   (ds/req :percentOfDailyNeeds) float?
   })

(def parse-ingredients-200-response-inner-nutrition-nutrients-inner-spec
  (ds/spec
    {:name ::parse-ingredients-200-response-inner-nutrition-nutrients-inner
     :spec parse-ingredients-200-response-inner-nutrition-nutrients-inner-data}))
