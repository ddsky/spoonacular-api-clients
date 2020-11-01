(ns spoonacular-api.specs.inline-object-16
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-object-16-data
  {
   (ds/req :text) string?
   })

(def inline-object-16-spec
  (ds/spec
    {:name ::inline-object-16
     :spec inline-object-16-data}))
