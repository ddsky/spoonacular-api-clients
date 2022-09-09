(ns spoonacular-api.specs.image-classification-by-url-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def image-classification-by-url-200-response-data
  {
   (ds/req :category) string?
   (ds/req :probability) float?
   })

(def image-classification-by-url-200-response-spec
  (ds/spec
    {:name ::image-classification-by-url-200-response
     :spec image-classification-by-url-200-response-data}))
