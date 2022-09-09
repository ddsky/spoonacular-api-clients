(ns spoonacular-api.specs.add-meal-plan-template-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.add-meal-plan-template-200-response-items-inner :refer :all]
            )
  (:import (java.io File)))


(def add-meal-plan-template-200-response-data
  {
   (ds/req :name) string?
   (ds/req :items) (s/coll-of add-meal-plan-template-200-response-items-inner-spec)
   (ds/req :publishAsPublic) boolean?
   })

(def add-meal-plan-template-200-response-spec
  (ds/spec
    {:name ::add-meal-plan-template-200-response
     :spec add-meal-plan-template-200-response-data}))
