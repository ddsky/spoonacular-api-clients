(ns spoonacular-api.specs.inline-response-200-21-calories
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-21-calories-confidence-range95-percent :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-21-calories-data
  {
   (ds/req :confidenceRange95Percent) inline-response-200-21-calories-confidence-range95-percent-spec
   (ds/req :standardDeviation) float?
   (ds/req :unit) string?
   (ds/req :value) float?
   })

(def inline-response-200-21-calories-spec
  (ds/spec
    {:name ::inline-response-200-21-calories
     :spec inline-response-200-21-calories-data}))
