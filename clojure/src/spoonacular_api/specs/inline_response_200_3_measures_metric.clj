(ns spoonacular-api.specs.inline-response-200-3-measures-metric
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-3-measures-metric-data
  {
   (ds/req :amount) float?
   (ds/req :unitLong) string?
   (ds/req :unitShort) string?
   })

(def inline-response-200-3-measures-metric-spec
  (ds/spec
    {:name ::inline-response-200-3-measures-metric
     :spec inline-response-200-3-measures-metric-data}))
