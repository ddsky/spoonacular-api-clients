(ns spoonacular-api.specs.inline-response-200-40
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-40-days :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-40-data
  {
   (ds/req :id) int?
   (ds/req :name) string?
   (ds/req :days) (s/coll-of inline-response-200-40-days-spec)
   })

(def inline-response-200-40-spec
  (ds/spec
    {:name ::inline-response-200-40
     :spec inline-response-200-40-data}))
