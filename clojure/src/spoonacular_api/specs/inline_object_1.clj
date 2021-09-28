(ns spoonacular-api.specs.inline-object-1
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-object-1-data
  {
   (ds/req :title) string?
   (ds/req :upc) string?
   (ds/req :plu_code) string?
   })

(def inline-object-1-spec
  (ds/spec
    {:name ::inline-object-1
     :spec inline-object-1-data}))
