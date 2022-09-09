(ns spoonacular-api.specs.generate-meal-plan-200-response-nutrients
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def generate-meal-plan-200-response-nutrients-data
  {
   (ds/req :calories) float?
   (ds/req :carbohydrates) float?
   (ds/req :fat) float?
   (ds/req :protein) float?
   })

(def generate-meal-plan-200-response-nutrients-spec
  (ds/spec
    {:name ::generate-meal-plan-200-response-nutrients
     :spec generate-meal-plan-200-response-nutrients-data}))
