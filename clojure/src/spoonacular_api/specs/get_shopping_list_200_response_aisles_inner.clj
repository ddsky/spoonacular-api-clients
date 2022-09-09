(ns spoonacular-api.specs.get-shopping-list-200-response-aisles-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner-items-inner :refer :all]
            )
  (:import (java.io File)))


(def get-shopping-list-200-response-aisles-inner-data
  {
   (ds/req :aisle) string?
   (ds/opt :items) (s/coll-of get-shopping-list-200-response-aisles-inner-items-inner-spec)
   })

(def get-shopping-list-200-response-aisles-inner-spec
  (ds/spec
    {:name ::get-shopping-list-200-response-aisles-inner
     :spec get-shopping-list-200-response-aisles-inner-data}))
