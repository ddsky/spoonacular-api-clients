(ns spoonacular-api.specs.inline-response-200-42-aisles
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-42-items :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-42-aisles-data
  {
   (ds/req :aisle) string?
   (ds/opt :items) (s/coll-of inline-response-200-42-items-spec)
   })

(def inline-response-200-42-aisles-spec
  (ds/spec
    {:name ::inline-response-200-42-aisles
     :spec inline-response-200-42-aisles-data}))
