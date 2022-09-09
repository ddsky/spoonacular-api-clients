(ns spoonacular-api.specs.delete-from-meal-plan-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def delete-from-meal-plan-request-data
  {
   (ds/req :username) string?
   (ds/req :id) float?
   (ds/req :hash) string?
   })

(def delete-from-meal-plan-request-spec
  (ds/spec
    {:name ::delete-from-meal-plan-request
     :spec delete-from-meal-plan-request-data}))
