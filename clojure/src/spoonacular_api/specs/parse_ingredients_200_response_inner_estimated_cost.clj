(ns spoonacular-api.specs.parse-ingredients-200-response-inner-estimated-cost
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def parse-ingredients-200-response-inner-estimated-cost-data
  {
   (ds/req :value) float?
   (ds/req :unit) string?
   })

(def parse-ingredients-200-response-inner-estimated-cost-spec
  (ds/spec
    {:name ::parse-ingredients-200-response-inner-estimated-cost
     :spec parse-ingredients-200-response-inner-estimated-cost-data}))
