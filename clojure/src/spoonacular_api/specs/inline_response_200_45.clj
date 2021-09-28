(ns spoonacular-api.specs.inline-response-200-45
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-45-data
  {
   (ds/req :wineDescription) string?
   })

(def inline-response-200-45-spec
  (ds/spec
    {:name ::inline-response-200-45
     :spec inline-response-200-45-data}))
