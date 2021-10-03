(ns spoonacular-api.specs.inline-response-200-41
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-41-days :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-41-data
  {
   (ds/req :id) int?
   (ds/req :name) string?
   (ds/req :days) (s/coll-of inline-response-200-41-days-spec)
   })

(def inline-response-200-41-spec
  (ds/spec
    {:name ::inline-response-200-41
     :spec inline-response-200-41-data}))
