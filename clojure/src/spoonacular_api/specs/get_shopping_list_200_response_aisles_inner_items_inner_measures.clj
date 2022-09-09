(ns spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner-measures
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-weight-per-serving :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-weight-per-serving :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-weight-per-serving :refer :all]
            )
  (:import (java.io File)))


(def get-shopping-list-200-response-aisles-inner-items-inner-measures-data
  {
   (ds/req :original) parse-ingredients-200-response-inner-nutrition-weight-per-serving-spec
   (ds/req :metric) parse-ingredients-200-response-inner-nutrition-weight-per-serving-spec
   (ds/req :us) parse-ingredients-200-response-inner-nutrition-weight-per-serving-spec
   })

(def get-shopping-list-200-response-aisles-inner-items-inner-measures-spec
  (ds/spec
    {:name ::get-shopping-list-200-response-aisles-inner-items-inner-measures
     :spec get-shopping-list-200-response-aisles-inner-items-inner-measures-data}))
