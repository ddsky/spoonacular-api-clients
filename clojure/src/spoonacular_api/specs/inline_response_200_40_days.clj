(ns spoonacular-api.specs.inline-response-200-40-days
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-38-nutrition-summary :refer :all]
            [spoonacular-api.specs.inline-response-200-38-nutrition-summary :refer :all]
            [spoonacular-api.specs.inline-response-200-38-nutrition-summary :refer :all]
            [spoonacular-api.specs.inline-response-200-38-nutrition-summary :refer :all]
            [spoonacular-api.specs.inline-response-200-40-items :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-40-days-data
  {
   (ds/opt :nutritionSummary) inline-response-200-38-nutrition-summary-spec
   (ds/opt :nutritionSummaryBreakfast) inline-response-200-38-nutrition-summary-spec
   (ds/opt :nutritionSummaryLunch) inline-response-200-38-nutrition-summary-spec
   (ds/opt :nutritionSummaryDinner) inline-response-200-38-nutrition-summary-spec
   (ds/req :day) string?
   (ds/opt :items) (s/coll-of inline-response-200-40-items-spec)
   })

(def inline-response-200-40-days-spec
  (ds/spec
    {:name ::inline-response-200-40-days
     :spec inline-response-200-40-days-data}))
