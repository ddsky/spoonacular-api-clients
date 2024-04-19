(ns spoonacular-api.specs.add-to-meal-plan-request-value-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def add-to-meal-plan-request-value-ingredients-inner-data
  {
   (ds/req :name) string?
   })

(def add-to-meal-plan-request-value-ingredients-inner-spec
  (ds/spec
    {:name ::add-to-meal-plan-request-value-ingredients-inner
     :spec add-to-meal-plan-request-value-ingredients-inner-data}))
