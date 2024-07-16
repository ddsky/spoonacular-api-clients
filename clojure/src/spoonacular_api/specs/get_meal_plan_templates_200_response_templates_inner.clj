(ns spoonacular-api.specs.get-meal-plan-templates-200-response-templates-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-meal-plan-templates-200-response-templates-inner-data
  {
   (ds/req :id) int?
   (ds/req :name) string?
   })

(def get-meal-plan-templates-200-response-templates-inner-spec
  (ds/spec
    {:name ::get-meal-plan-templates-200-response-templates-inner
     :spec get-meal-plan-templates-200-response-templates-inner-data}))
