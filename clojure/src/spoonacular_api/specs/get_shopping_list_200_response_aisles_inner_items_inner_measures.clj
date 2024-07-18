(ns spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner-measures
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner-measures-original :refer :all]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner-measures-original :refer :all]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner-measures-original :refer :all]
            )
  (:import (java.io File)))


(def get-shopping-list-200-response-aisles-inner-items-inner-measures-data
  {
   (ds/req :original) get-shopping-list-200-response-aisles-inner-items-inner-measures-original-spec
   (ds/req :metric) get-shopping-list-200-response-aisles-inner-items-inner-measures-original-spec
   (ds/req :us) get-shopping-list-200-response-aisles-inner-items-inner-measures-original-spec
   })

(def get-shopping-list-200-response-aisles-inner-items-inner-measures-spec
  (ds/spec
    {:name ::get-shopping-list-200-response-aisles-inner-items-inner-measures
     :spec get-shopping-list-200-response-aisles-inner-items-inner-measures-data}))
