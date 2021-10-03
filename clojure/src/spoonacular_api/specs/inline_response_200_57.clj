(ns spoonacular-api.specs.inline-response-200-57
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-57-suggests :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-57-data
  {
   (ds/req :suggests) inline-response-200-57-suggests-spec
   (ds/req :words) (s/coll-of any?)
   })

(def inline-response-200-57-spec
  (ds/spec
    {:name ::inline-response-200-57
     :spec inline-response-200-57-data}))
