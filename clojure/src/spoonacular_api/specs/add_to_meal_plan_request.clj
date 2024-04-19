(ns spoonacular-api.specs.add-to-meal-plan-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.add-to-meal-plan-request-value :refer :all]
            )
  (:import (java.io File)))


(def add-to-meal-plan-request-data
  {
   (ds/req :date) float?
   (ds/req :slot) int?
   (ds/req :position) int?
   (ds/req :type) string?
   (ds/req :value) add-to-meal-plan-request-value-spec
   })

(def add-to-meal-plan-request-spec
  (ds/spec
    {:name ::add-to-meal-plan-request
     :spec add-to-meal-plan-request-data}))
