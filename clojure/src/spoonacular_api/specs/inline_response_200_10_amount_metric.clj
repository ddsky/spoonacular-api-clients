(ns spoonacular-api.specs.inline-response-200-10-amount-metric
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-10-amount-metric-data
  {
   (ds/req :unit) string?
   (ds/req :value) float?
   })

(def inline-response-200-10-amount-metric-spec
  (ds/spec
    {:name ::inline-response-200-10-amount-metric
     :spec inline-response-200-10-amount-metric-data}))
