(ns spoonacular-api.specs.get-conversation-suggests-200-response-suggests-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-conversation-suggests-200-response-suggests-inner-data
  {
   (ds/req :name) string?
   })

(def get-conversation-suggests-200-response-suggests-inner-spec
  (ds/spec
    {:name ::get-conversation-suggests-200-response-suggests-inner
     :spec get-conversation-suggests-200-response-suggests-inner-data}))
