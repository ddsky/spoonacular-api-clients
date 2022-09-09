(ns spoonacular-api.specs.talk-to-chatbot-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.any-type :refer :all]
            )
  (:import (java.io File)))


(def talk-to-chatbot-200-response-data
  {
   (ds/req :answerText) string?
   (ds/req :media) (s/coll-of any-type-spec)
   })

(def talk-to-chatbot-200-response-spec
  (ds/spec
    {:name ::talk-to-chatbot-200-response
     :spec talk-to-chatbot-200-response-data}))
