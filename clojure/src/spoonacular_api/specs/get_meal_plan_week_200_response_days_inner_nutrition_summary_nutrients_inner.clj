(ns spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-nutrition-summary-nutrients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-meal-plan-week-200-response-days-inner-nutrition-summary-nutrients-inner-data
  {
   (ds/req :name) string?
   (ds/req :amount) float?
   (ds/req :unit) string?
   (ds/req :percentDailyNeeds) float?
   })

(def get-meal-plan-week-200-response-days-inner-nutrition-summary-nutrients-inner-spec
  (ds/spec
    {:name ::get-meal-plan-week-200-response-days-inner-nutrition-summary-nutrients-inner
     :spec get-meal-plan-week-200-response-days-inner-nutrition-summary-nutrients-inner-data}))
