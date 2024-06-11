(ns spoonacular-api.specs.get-conversation-suggests-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-conversation-suggests-200-response-suggests :refer :all]
            )
  (:import (java.io File)))


(def get-conversation-suggests-200-response-data
  {
   (ds/req :suggests) get-conversation-suggests-200-response-suggests-spec
   (ds/req :words) (s/coll-of string?)
   })

(def get-conversation-suggests-200-response-spec
  (ds/spec
    {:name ::get-conversation-suggests-200-response
     :spec get-conversation-suggests-200-response-data}))
