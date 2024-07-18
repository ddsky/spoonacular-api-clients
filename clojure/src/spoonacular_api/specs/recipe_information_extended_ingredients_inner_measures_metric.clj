(ns spoonacular-api.specs.recipe-information-extended-ingredients-inner-measures-metric
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def recipe-information-extended-ingredients-inner-measures-metric-data
  {
   (ds/req :amount) float?
   (ds/req :unitLong) string?
   (ds/req :unitShort) string?
   })

(def recipe-information-extended-ingredients-inner-measures-metric-spec
  (ds/spec
    {:name ::recipe-information-extended-ingredients-inner-measures-metric
     :spec recipe-information-extended-ingredients-inner-measures-metric-data}))
