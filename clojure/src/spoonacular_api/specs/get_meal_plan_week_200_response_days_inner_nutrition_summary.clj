(ns spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-nutrition-summary
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-nutrition-summary-nutrients-inner :refer :all]
            )
  (:import (java.io File)))


(def get-meal-plan-week-200-response-days-inner-nutrition-summary-data
  {
   (ds/req :nutrients) (s/coll-of get-meal-plan-week-200-response-days-inner-nutrition-summary-nutrients-inner-spec)
   })

(def get-meal-plan-week-200-response-days-inner-nutrition-summary-spec
  (ds/spec
    {:name ::get-meal-plan-week-200-response-days-inner-nutrition-summary
     :spec get-meal-plan-week-200-response-days-inner-nutrition-summary-data}))
