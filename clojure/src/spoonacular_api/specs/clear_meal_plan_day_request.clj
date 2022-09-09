(ns spoonacular-api.specs.clear-meal-plan-day-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def clear-meal-plan-day-request-data
  {
   (ds/req :username) string?
   (ds/req :date) string?
   (ds/req :hash) string?
   })

(def clear-meal-plan-day-request-spec
  (ds/spec
    {:name ::clear-meal-plan-day-request
     :spec clear-meal-plan-day-request-data}))
