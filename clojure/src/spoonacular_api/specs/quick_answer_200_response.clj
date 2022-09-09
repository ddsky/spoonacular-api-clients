(ns spoonacular-api.specs.quick-answer-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def quick-answer-200-response-data
  {
   (ds/req :answer) string?
   (ds/req :image) string?
   })

(def quick-answer-200-response-spec
  (ds/spec
    {:name ::quick-answer-200-response
     :spec quick-answer-200-response-data}))
