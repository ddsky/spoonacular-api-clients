(ns spoonacular-api.specs.add-to-meal-plan-request-1
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.add-to-meal-plan-request-1-value :refer :all]
            )
  (:import (java.io File)))


(def add-to-meal-plan-request-1-data
  {
   (ds/req :date) float?
   (ds/req :slot) int?
   (ds/req :position) int?
   (ds/req :type) string?
   (ds/req :value) add-to-meal-plan-request-1-value-spec
   })

(def add-to-meal-plan-request-1-spec
  (ds/spec
    {:name ::add-to-meal-plan-request-1
     :spec add-to-meal-plan-request-1-data}))
