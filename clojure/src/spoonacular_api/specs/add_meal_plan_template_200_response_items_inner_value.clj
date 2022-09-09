(ns spoonacular-api.specs.add-meal-plan-template-200-response-items-inner-value
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def add-meal-plan-template-200-response-items-inner-value-data
  {
   (ds/opt :id) int?
   (ds/opt :servings) float?
   (ds/opt :title) string?
   (ds/opt :imageType) string?
   })

(def add-meal-plan-template-200-response-items-inner-value-spec
  (ds/spec
    {:name ::add-meal-plan-template-200-response-items-inner-value
     :spec add-meal-plan-template-200-response-items-inner-value-data}))
