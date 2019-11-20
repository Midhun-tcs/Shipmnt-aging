connection: "poc_bigquery_db_ebi"

# include all the views
include: "/views/**/*.view"

datagroup: shipment_aging_detail_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 second"
}

persist_with: shipment_aging_detail_default_datagroup

explore: location {}

explore: shipment_aging_detail {
  join: location {
    type: left_outer
    sql_on: ${shipment_aging_detail.loc_sk}=${location.loc_sk} ;;
    relationship: many_to_one
    }
}
