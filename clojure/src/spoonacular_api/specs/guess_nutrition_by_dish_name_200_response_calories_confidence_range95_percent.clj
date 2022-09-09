(ns spoonacular-api.specs.guess-nutrition-by-dish-name-200-response-calories-confidence-range95-percent
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def guess-nutrition-by-dish-name-200-response-calories-confidence-range95-percent-data
  {
   (ds/req :max) float?
   (ds/req :min) float?
   })

(def guess-nutrition-by-dish-name-200-response-calories-confidence-range95-percent-spec
  (ds/spec
    {:name ::guess-nutrition-by-dish-name-200-response-calories-confidence-range95-percent
     :spec guess-nutrition-by-dish-name-200-response-calories-confidence-range95-percent-data}))
