(ns spoonacular-api.specs.connect-user-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def connect-user-request-data
  {
   (ds/req :username) string?
   (ds/req :firstName) string?
   (ds/req :lastName) string?
   (ds/req :email) string?
   })

(def connect-user-request-spec
  (ds/spec
    {:name ::connect-user-request
     :spec connect-user-request-data}))
