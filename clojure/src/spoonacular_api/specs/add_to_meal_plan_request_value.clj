(ns spoonacular-api.specs.add-to-meal-plan-request-value
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.add-to-meal-plan-request-value-ingredients-inner :refer :all]
            )
  (:import (java.io File)))


(def add-to-meal-plan-request-value-data
  {
   (ds/req :ingredients) (s/coll-of add-to-meal-plan-request-value-ingredients-inner-spec)
   })

(def add-to-meal-plan-request-value-spec
  (ds/spec
    {:name ::add-to-meal-plan-request-value
     :spec add-to-meal-plan-request-value-data}))
