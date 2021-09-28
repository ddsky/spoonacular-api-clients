(ns spoonacular-api.specs.inline-response-200-35-menu-items
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-28-servings :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-35-menu-items-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :restaurantChain) string?
   (ds/req :image) string?
   (ds/req :imageType) string?
   (ds/opt :servings) inline-response-200-28-servings-spec
   })

(def inline-response-200-35-menu-items-spec
  (ds/spec
    {:name ::inline-response-200-35-menu-items
     :spec inline-response-200-35-menu-items-data}))
