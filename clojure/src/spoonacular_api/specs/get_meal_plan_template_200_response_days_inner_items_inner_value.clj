(ns spoonacular-api.specs.get-meal-plan-template-200-response-days-inner-items-inner-value
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-meal-plan-template-200-response-days-inner-items-inner-value-data
  {
   (ds/req :id) float?
   (ds/req :title) string?
   (ds/req :imageType) string?
   })

(def get-meal-plan-template-200-response-days-inner-items-inner-value-spec
  (ds/spec
    {:name ::get-meal-plan-template-200-response-days-inner-items-inner-value
     :spec get-meal-plan-template-200-response-days-inner-items-inner-value-data}))
