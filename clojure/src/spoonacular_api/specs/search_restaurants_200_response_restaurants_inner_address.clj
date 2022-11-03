(ns spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-address
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-restaurants-200-response-restaurants-inner-address-data
  {
   (ds/opt :street_addr) string?
   (ds/opt :city) string?
   (ds/opt :state) string?
   (ds/opt :zipcode) string?
   (ds/opt :country) string?
   (ds/opt :lat) float?
   (ds/opt :lon) float?
   (ds/opt :street_addr_2) string?
   (ds/opt :latitude) float?
   (ds/opt :longitude) float?
   })

(def search-restaurants-200-response-restaurants-inner-address-spec
  (ds/spec
    {:name ::search-restaurants-200-response-restaurants-inner-address
     :spec search-restaurants-200-response-restaurants-inner-address-data}))
