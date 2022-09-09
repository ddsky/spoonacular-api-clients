(ns spoonacular-api.specs.classify-cuisine-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def classify-cuisine-200-response-data
  {
   (ds/req :cuisine) string?
   (ds/req :cuisines) (s/coll-of string?)
   (ds/req :confidence) float?
   })

(def classify-cuisine-200-response-spec
  (ds/spec
    {:name ::classify-cuisine-200-response
     :spec classify-cuisine-200-response-data}))
