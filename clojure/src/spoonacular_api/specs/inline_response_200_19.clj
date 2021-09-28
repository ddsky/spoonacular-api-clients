(ns spoonacular-api.specs.inline-response-200-19
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-19-data
  {
   (ds/req :sourceAmount) float?
   (ds/req :sourceUnit) string?
   (ds/req :targetAmount) float?
   (ds/req :targetUnit) string?
   (ds/req :answer) string?
   })

(def inline-response-200-19-spec
  (ds/spec
    {:name ::inline-response-200-19
     :spec inline-response-200-19-data}))
