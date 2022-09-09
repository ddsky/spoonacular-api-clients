(ns spoonacular-api.specs.get-meal-plan-template-200-response-days-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-nutrition-summary :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-nutrition-summary :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-nutrition-summary :refer :all]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-nutrition-summary :refer :all]
            [spoonacular-api.specs.get-meal-plan-template-200-response-days-inner-items-inner :refer :all]
            )
  (:import (java.io File)))


(def get-meal-plan-template-200-response-days-inner-data
  {
   (ds/opt :nutritionSummary) get-meal-plan-week-200-response-days-inner-nutrition-summary-spec
   (ds/opt :nutritionSummaryBreakfast) get-meal-plan-week-200-response-days-inner-nutrition-summary-spec
   (ds/opt :nutritionSummaryLunch) get-meal-plan-week-200-response-days-inner-nutrition-summary-spec
   (ds/opt :nutritionSummaryDinner) get-meal-plan-week-200-response-days-inner-nutrition-summary-spec
   (ds/req :day) string?
   (ds/opt :items) (s/coll-of get-meal-plan-template-200-response-days-inner-items-inner-spec)
   })

(def get-meal-plan-template-200-response-days-inner-spec
  (ds/spec
    {:name ::get-meal-plan-template-200-response-days-inner
     :spec get-meal-plan-template-200-response-days-inner-data}))
