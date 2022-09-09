(ns spoonacular-api.specs.get-conversation-suggests-200-response-suggests
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-conversation-suggests-200-response-suggests-inner :refer :all]
            )
  (:import (java.io File)))


(def get-conversation-suggests-200-response-suggests-data
  {
   (ds/req :_) (s/coll-of get-conversation-suggests-200-response-suggests-inner-spec)
   })

(def get-conversation-suggests-200-response-suggests-spec
  (ds/spec
    {:name ::get-conversation-suggests-200-response-suggests
     :spec get-conversation-suggests-200-response-suggests-data}))
