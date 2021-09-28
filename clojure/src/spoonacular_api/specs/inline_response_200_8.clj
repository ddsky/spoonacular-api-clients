(ns spoonacular-api.specs.inline-response-200-8
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-8-data
  {
   (ds/req :sweetness) float?
   (ds/req :saltiness) float?
   (ds/req :sourness) float?
   (ds/req :bitterness) float?
   (ds/req :savoriness) float?
   (ds/req :fattiness) float?
   (ds/req :spiciness) float?
   })

(def inline-response-200-8-spec
  (ds/spec
    {:name ::inline-response-200-8
     :spec inline-response-200-8-data}))
