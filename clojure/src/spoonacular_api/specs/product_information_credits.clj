(ns spoonacular-api.specs.product-information-credits
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def product-information-credits-data
  {
   (ds/opt :text) string?
   (ds/opt :link) string?
   (ds/opt :image) string?
   (ds/opt :imageLink) string?
   })

(def product-information-credits-spec
  (ds/spec
    {:name ::product-information-credits
     :spec product-information-credits-data}))
