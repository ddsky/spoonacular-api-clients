(ns spoonacular-api.specs.-recipes-parse-ingredients-nutrition-weight-per-serving
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def -recipes-parse-ingredients-nutrition-weight-per-serving-data
  {
   (ds/req :amount) float?
   (ds/req :unit) string?
   })

(def -recipes-parse-ingredients-nutrition-weight-per-serving-spec
  (ds/spec
    {:name ::-recipes-parse-ingredients-nutrition-weight-per-serving
     :spec -recipes-parse-ingredients-nutrition-weight-per-serving-data}))
