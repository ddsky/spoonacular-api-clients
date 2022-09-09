(ns spoonacular-api.specs.connect-user-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def connect-user-200-response-data
  {
   (ds/req :username) string?
   (ds/req :hash) string?
   })

(def connect-user-200-response-spec
  (ds/spec
    {:name ::connect-user-200-response
     :spec connect-user-200-response-data}))
