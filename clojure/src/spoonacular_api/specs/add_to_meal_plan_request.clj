(ns spoonacular-api.specs.add-to-meal-plan-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def add-to-meal-plan-request-data
  {
   (ds/req :username) string?
   (ds/req :hash) string?
   })

(def add-to-meal-plan-request-spec
  (ds/spec
    {:name ::add-to-meal-plan-request
     :spec add-to-meal-plan-request-data}))
