(ns spoonacular-api.specs.inline-response-200-24
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-24-data
  {
   (ds/req :name) string?
   (ds/req :image) string?
   (ds/req :id) int?
   (ds/req :aisle) string?
   (ds/req :possibleUnits) (s/coll-of string?)
   })

(def inline-response-200-24-spec
  (ds/spec
    {:name ::inline-response-200-24
     :spec inline-response-200-24-data}))
