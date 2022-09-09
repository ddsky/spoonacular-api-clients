(ns spoonacular-api.specs.add-meal-plan-template-200-response-items-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.add-meal-plan-template-200-response-items-inner-value :refer :all]
            )
  (:import (java.io File)))


(def add-meal-plan-template-200-response-items-inner-data
  {
   (ds/req :day) int?
   (ds/req :slot) int?
   (ds/req :position) int?
   (ds/req :type) string?
   (ds/opt :value) add-meal-plan-template-200-response-items-inner-value-spec
   })

(def add-meal-plan-template-200-response-items-inner-spec
  (ds/spec
    {:name ::add-meal-plan-template-200-response-items-inner
     :spec add-meal-plan-template-200-response-items-inner-data}))
