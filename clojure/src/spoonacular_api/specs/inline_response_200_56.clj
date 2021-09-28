(ns spoonacular-api.specs.inline-response-200-56
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-56-suggests :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-56-data
  {
   (ds/req :suggests) inline-response-200-56-suggests-spec
   (ds/req :words) (s/coll-of any?)
   })

(def inline-response-200-56-spec
  (ds/spec
    {:name ::inline-response-200-56
     :spec inline-response-200-56-data}))
