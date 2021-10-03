(ns spoonacular-api.specs.inline-response-200-51
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-51-data
  {
   (ds/req :annotations) (s/coll-of any?)
   })

(def inline-response-200-51-spec
  (ds/spec
    {:name ::inline-response-200-51
     :spec inline-response-200-51-data}))
