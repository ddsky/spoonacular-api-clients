(ns spoonacular-api.specs.inline-response-200-49-nutrition-calories-confidence-range95-percent
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-49-nutrition-calories-confidence-range95-percent-data
  {
   (ds/req :min) float?
   (ds/req :max) float?
   })

(def inline-response-200-49-nutrition-calories-confidence-range95-percent-spec
  (ds/spec
    {:name ::inline-response-200-49-nutrition-calories-confidence-range95-percent
     :spec inline-response-200-49-nutrition-calories-confidence-range95-percent-data}))
