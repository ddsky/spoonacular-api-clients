(ns spoonacular-api.specs.add-to-meal-plan-request-1-value
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.add-to-meal-plan-request-1-value-ingredients-inner :refer :all]
            )
  (:import (java.io File)))


(def add-to-meal-plan-request-1-value-data
  {
   (ds/req :ingredients) (s/coll-of add-to-meal-plan-request-1-value-ingredients-inner-spec)
   })

(def add-to-meal-plan-request-1-value-spec
  (ds/spec
    {:name ::add-to-meal-plan-request-1-value
     :spec add-to-meal-plan-request-1-value-data}))
