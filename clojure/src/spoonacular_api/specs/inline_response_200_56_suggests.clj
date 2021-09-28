(ns spoonacular-api.specs.inline-response-200-56-suggests
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-56-suggests-data
  {
   (ds/req :_) (s/coll-of any?)
   })

(def inline-response-200-56-suggests-spec
  (ds/spec
    {:name ::inline-response-200-56-suggests
     :spec inline-response-200-56-suggests-data}))
