(ns spoonacular-api.specs.inline-response-200-55
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-55-data
  {
   (ds/req :answerText) string?
   (ds/req :media) (s/coll-of any?)
   })

(def inline-response-200-55-spec
  (ds/spec
    {:name ::inline-response-200-55
     :spec inline-response-200-55-data}))
