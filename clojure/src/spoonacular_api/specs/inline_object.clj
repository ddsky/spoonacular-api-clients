(ns spoonacular-api.specs.inline-object
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-object-data
  {
   (ds/req :title) string?
   (ds/req :upc) string?
   (ds/req :plu_code) string?
   })

(def inline-object-spec
  (ds/spec
    {:name ::inline-object
     :spec inline-object-data}))
