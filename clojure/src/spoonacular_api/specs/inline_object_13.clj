(ns spoonacular-api.specs.inline-object-13
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-object-13-data
  {
   (ds/req :username) string?
   (ds/req :start-date) string?
   (ds/req :end-date) string?
   (ds/req :hash) string?
   })

(def inline-object-13-spec
  (ds/spec
    {:name ::inline-object-13
     :spec inline-object-13-data}))
