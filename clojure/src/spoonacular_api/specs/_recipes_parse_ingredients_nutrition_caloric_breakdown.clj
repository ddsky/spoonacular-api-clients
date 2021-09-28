(ns spoonacular-api.specs.-recipes-parse-ingredients-nutrition-caloric-breakdown
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def -recipes-parse-ingredients-nutrition-caloric-breakdown-data
  {
   (ds/req :percentProtein) float?
   (ds/req :percentFat) float?
   (ds/req :percentCarbs) float?
   })

(def -recipes-parse-ingredients-nutrition-caloric-breakdown-spec
  (ds/spec
    {:name ::-recipes-parse-ingredients-nutrition-caloric-breakdown
     :spec -recipes-parse-ingredients-nutrition-caloric-breakdown-data}))
