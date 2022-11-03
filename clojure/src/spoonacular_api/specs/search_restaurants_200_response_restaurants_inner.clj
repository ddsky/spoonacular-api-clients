(ns spoonacular-api.specs.search-restaurants-200-response-restaurants-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-address :refer :all]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-local-hours :refer :all]
            )
  (:import (java.io File)))


(def search-restaurants-200-response-restaurants-inner-data
  {
   (ds/opt :_id) string?
   (ds/opt :name) string?
   (ds/opt :phone_number) int?
   (ds/opt :address) search-restaurants-200-response-restaurants-inner-address-spec
   (ds/opt :type) string?
   (ds/opt :description) string?
   (ds/opt :local_hours) search-restaurants-200-response-restaurants-inner-local-hours-spec
   (ds/opt :cuisines) (s/coll-of string?)
   (ds/opt :food_photos) (s/coll-of string?)
   (ds/opt :logo_photos) (s/coll-of string?)
   (ds/opt :store_photos) (s/coll-of any?)
   (ds/opt :dollar_signs) int?
   (ds/opt :pickup_enabled) boolean?
   (ds/opt :delivery_enabled) boolean?
   (ds/opt :is_open) boolean?
   (ds/opt :offers_first_party_delivery) boolean?
   (ds/opt :offers_third_party_delivery) boolean?
   (ds/opt :miles) float?
   (ds/opt :weighted_rating_value) float?
   (ds/opt :aggregated_rating_count) int?
   })

(def search-restaurants-200-response-restaurants-inner-spec
  (ds/spec
    {:name ::search-restaurants-200-response-restaurants-inner
     :spec search-restaurants-200-response-restaurants-inner-data}))
