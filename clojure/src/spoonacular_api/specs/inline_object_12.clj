(ns spoonacular-api.specs.inline-object-12
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-object-12-data
  {
   (ds/req :username) string?
   (ds/req :hash) string?
   })

(def inline-object-12-spec
  (ds/spec
    {:name ::inline-object-12
     :spec inline-object-12-data}))
