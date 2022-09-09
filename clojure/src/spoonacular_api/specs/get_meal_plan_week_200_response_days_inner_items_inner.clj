(ns spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-items-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-meal-plan-week-200-response-days-inner-items-inner-value :refer :all]
            )
  (:import (java.io File)))


(def get-meal-plan-week-200-response-days-inner-items-inner-data
  {
   (ds/req :id) int?
   (ds/req :slot) int?
   (ds/req :position) int?
   (ds/req :type) string?
   (ds/opt :value) get-meal-plan-week-200-response-days-inner-items-inner-value-spec
   })

(def get-meal-plan-week-200-response-days-inner-items-inner-spec
  (ds/spec
    {:name ::get-meal-plan-week-200-response-days-inner-items-inner
     :spec get-meal-plan-week-200-response-days-inner-items-inner-data}))
