(ns spoonacular-api.specs.image-analysis-by-url-200-response-category
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def image-analysis-by-url-200-response-category-data
  {
   (ds/req :name) string?
   (ds/req :probability) float?
   })

(def image-analysis-by-url-200-response-category-spec
  (ds/spec
    {:name ::image-analysis-by-url-200-response-category
     :spec image-analysis-by-url-200-response-category-data}))
