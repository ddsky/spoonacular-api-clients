(ns spoonacular-api.specs.inline-response-200-49-nutrition-calories
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-49-nutrition-calories-confidence-range95-percent :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-49-nutrition-calories-data
  {
   (ds/req :value) float?
   (ds/req :unit) string?
   (ds/req :confidenceRange95Percent) inline-response-200-49-nutrition-calories-confidence-range95-percent-spec
   (ds/req :standardDeviation) float?
   })

(def inline-response-200-49-nutrition-calories-spec
  (ds/spec
    {:name ::inline-response-200-49-nutrition-calories
     :spec inline-response-200-49-nutrition-calories-data}))
