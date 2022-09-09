(ns spoonacular-api.specs.get-recipe-taste-by-id-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-recipe-taste-by-id-200-response-data
  {
   (ds/req :sweetness) float?
   (ds/req :saltiness) float?
   (ds/req :sourness) float?
   (ds/req :bitterness) float?
   (ds/req :savoriness) float?
   (ds/req :fattiness) float?
   (ds/req :spiciness) float?
   })

(def get-recipe-taste-by-id-200-response-spec
  (ds/spec
    {:name ::get-recipe-taste-by-id-200-response
     :spec get-recipe-taste-by-id-200-response-data}))
