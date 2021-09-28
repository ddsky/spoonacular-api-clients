(ns spoonacular-api.specs.inline-response-200-42
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-42-data
  {
   (ds/req :username) string?
   (ds/req :hash) string?
   })

(def inline-response-200-42-spec
  (ds/spec
    {:name ::inline-response-200-42
     :spec inline-response-200-42-data}))
