(ns spoonacular-api.specs.-recipes-parse-ingredients-nutrition-properties
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def -recipes-parse-ingredients-nutrition-properties-data
  {
   (ds/req :name) string?
   (ds/req :amount) float?
   (ds/req :unit) string?
   })

(def -recipes-parse-ingredients-nutrition-properties-spec
  (ds/spec
    {:name ::-recipes-parse-ingredients-nutrition-properties
     :spec -recipes-parse-ingredients-nutrition-properties-data}))
