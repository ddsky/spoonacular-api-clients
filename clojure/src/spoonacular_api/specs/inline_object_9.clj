(ns spoonacular-api.specs.inline-object-9
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-object-9-data
  {
   (ds/req :username) string?
   (ds/req :hash) string?
   })

(def inline-object-9-spec
  (ds/spec
    {:name ::inline-object-9
     :spec inline-object-9-data}))
