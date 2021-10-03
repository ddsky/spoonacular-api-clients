(ns spoonacular-api.specs.inline-response-200-46
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-46-data
  {
   (ds/req :wineDescription) string?
   })

(def inline-response-200-46-spec
  (ds/spec
    {:name ::inline-response-200-46
     :spec inline-response-200-46-data}))
