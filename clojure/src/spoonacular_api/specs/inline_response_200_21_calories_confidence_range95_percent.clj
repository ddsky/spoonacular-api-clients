(ns spoonacular-api.specs.inline-response-200-21-calories-confidence-range95-percent
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-21-calories-confidence-range95-percent-data
  {
   (ds/req :max) float?
   (ds/req :min) float?
   })

(def inline-response-200-21-calories-confidence-range95-percent-spec
  (ds/spec
    {:name ::inline-response-200-21-calories-confidence-range95-percent
     :spec inline-response-200-21-calories-confidence-range95-percent-data}))
