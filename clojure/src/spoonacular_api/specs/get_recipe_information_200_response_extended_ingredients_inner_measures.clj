(ns spoonacular-api.specs.get-recipe-information-200-response-extended-ingredients-inner-measures
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-recipe-information-200-response-extended-ingredients-inner-measures-metric :refer :all]
            [spoonacular-api.specs.get-recipe-information-200-response-extended-ingredients-inner-measures-metric :refer :all]
            )
  (:import (java.io File)))


(def get-recipe-information-200-response-extended-ingredients-inner-measures-data
  {
   (ds/req :metric) get-recipe-information-200-response-extended-ingredients-inner-measures-metric-spec
   (ds/req :us) get-recipe-information-200-response-extended-ingredients-inner-measures-metric-spec
   })

(def get-recipe-information-200-response-extended-ingredients-inner-measures-spec
  (ds/spec
    {:name ::get-recipe-information-200-response-extended-ingredients-inner-measures
     :spec get-recipe-information-200-response-extended-ingredients-inner-measures-data}))
