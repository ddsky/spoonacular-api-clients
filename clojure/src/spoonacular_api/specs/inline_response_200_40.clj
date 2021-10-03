(ns spoonacular-api.specs.inline-response-200-40
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-40-items :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-40-data
  {
   (ds/req :name) string?
   (ds/req :items) (s/coll-of inline-response-200-40-items-spec)
   (ds/req :publishAsPublic) boolean?
   })

(def inline-response-200-40-spec
  (ds/spec
    {:name ::inline-response-200-40
     :spec inline-response-200-40-data}))
