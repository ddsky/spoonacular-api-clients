(ns spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-caloric-breakdown
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def parse-ingredients-200-response-inner-nutrition-caloric-breakdown-data
  {
   (ds/req :percentProtein) float?
   (ds/req :percentFat) float?
   (ds/req :percentCarbs) float?
   })

(def parse-ingredients-200-response-inner-nutrition-caloric-breakdown-spec
  (ds/spec
    {:name ::parse-ingredients-200-response-inner-nutrition-caloric-breakdown
     :spec parse-ingredients-200-response-inner-nutrition-caloric-breakdown-data}))
