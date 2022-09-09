(ns spoonacular-api.specs.convert-amounts-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def convert-amounts-200-response-data
  {
   (ds/req :sourceAmount) float?
   (ds/req :sourceUnit) string?
   (ds/req :targetAmount) float?
   (ds/req :targetUnit) string?
   (ds/req :answer) string?
   })

(def convert-amounts-200-response-spec
  (ds/spec
    {:name ::convert-amounts-200-response
     :spec convert-amounts-200-response-data}))
