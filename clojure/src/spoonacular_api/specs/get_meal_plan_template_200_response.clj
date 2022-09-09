(ns spoonacular-api.specs.get-meal-plan-template-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-meal-plan-template-200-response-days-inner :refer :all]
            )
  (:import (java.io File)))


(def get-meal-plan-template-200-response-data
  {
   (ds/req :id) int?
   (ds/req :name) string?
   (ds/req :days) (s/coll-of get-meal-plan-template-200-response-days-inner-spec)
   })

(def get-meal-plan-template-200-response-spec
  (ds/spec
    {:name ::get-meal-plan-template-200-response
     :spec get-meal-plan-template-200-response-data}))
