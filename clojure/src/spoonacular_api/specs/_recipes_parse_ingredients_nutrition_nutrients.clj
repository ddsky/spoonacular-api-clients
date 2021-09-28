(ns spoonacular-api.specs.-recipes-parse-ingredients-nutrition-nutrients
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def -recipes-parse-ingredients-nutrition-nutrients-data
  {
   (ds/req :name) string?
   (ds/req :amount) float?
   (ds/req :unit) string?
   (ds/req :percentOfDailyNeeds) float?
   })

(def -recipes-parse-ingredients-nutrition-nutrients-spec
  (ds/spec
    {:name ::-recipes-parse-ingredients-nutrition-nutrients
     :spec -recipes-parse-ingredients-nutrition-nutrients-data}))
