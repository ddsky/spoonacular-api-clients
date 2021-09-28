(ns spoonacular-api.specs.inline-object-4
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-object-4-data
  {
   (ds/req :username) string?
   (ds/req :hash) string?
   })

(def inline-object-4-spec
  (ds/spec
    {:name ::inline-object-4
     :spec inline-object-4-data}))
