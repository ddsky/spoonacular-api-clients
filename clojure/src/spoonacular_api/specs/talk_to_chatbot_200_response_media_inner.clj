(ns spoonacular-api.specs.talk-to-chatbot-200-response-media-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def talk-to-chatbot-200-response-media-inner-data
  {
   (ds/opt :title) string?
   (ds/opt :image) string?
   (ds/opt :link) string?
   })

(def talk-to-chatbot-200-response-media-inner-spec
  (ds/spec
    {:name ::talk-to-chatbot-200-response-media-inner
     :spec talk-to-chatbot-200-response-media-inner-data}))
