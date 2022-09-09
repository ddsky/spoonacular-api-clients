(ns spoonacular-api.specs.guess-nutrition-by-dish-name-200-response-calories
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.guess-nutrition-by-dish-name-200-response-calories-confidence-range95-percent :refer :all]
            )
  (:import (java.io File)))


(def guess-nutrition-by-dish-name-200-response-calories-data
  {
   (ds/req :confidenceRange95Percent) guess-nutrition-by-dish-name-200-response-calories-confidence-range95-percent-spec
   (ds/req :standardDeviation) float?
   (ds/req :unit) string?
   (ds/req :value) float?
   })

(def guess-nutrition-by-dish-name-200-response-calories-spec
  (ds/spec
    {:name ::guess-nutrition-by-dish-name-200-response-calories
     :spec guess-nutrition-by-dish-name-200-response-calories-data}))
