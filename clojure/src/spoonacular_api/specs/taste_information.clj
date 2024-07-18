(ns spoonacular-api.specs.taste-information
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def taste-information-data
  {
   (ds/req :sweetness) float?
   (ds/req :saltiness) float?
   (ds/req :sourness) float?
   (ds/req :bitterness) float?
   (ds/req :savoriness) float?
   (ds/req :fattiness) float?
   (ds/req :spiciness) float?
   })

(def taste-information-spec
  (ds/spec
    {:name ::taste-information
     :spec taste-information-data}))
