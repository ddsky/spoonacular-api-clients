(ns spoonacular-api.specs.inline-response-200-44
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-44-data
  {
   (ds/req :pairings) (s/coll-of string?)
   (ds/req :text) string?
   })

(def inline-response-200-44-spec
  (ds/spec
    {:name ::inline-response-200-44
     :spec inline-response-200-44-data}))
