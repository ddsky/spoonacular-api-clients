(ns spoonacular-api.specs.recipe-information-extended-ingredients-inner-measures
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.recipe-information-extended-ingredients-inner-measures-metric :refer :all]
            [spoonacular-api.specs.recipe-information-extended-ingredients-inner-measures-metric :refer :all]
            )
  (:import (java.io File)))


(def recipe-information-extended-ingredients-inner-measures-data
  {
   (ds/req :metric) recipe-information-extended-ingredients-inner-measures-metric-spec
   (ds/req :us) recipe-information-extended-ingredients-inner-measures-metric-spec
   })

(def recipe-information-extended-ingredients-inner-measures-spec
  (ds/spec
    {:name ::recipe-information-extended-ingredients-inner-measures
     :spec recipe-information-extended-ingredients-inner-measures-data}))
