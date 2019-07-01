(ns spoonacular-api.specs.inline-object-8
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-object-8-data
  {
   (ds/opt :locale) string?
   })

(def inline-object-8-spec
  (ds/spec
    {:name ::inline-object-8
     :spec inline-object-8-data}))
