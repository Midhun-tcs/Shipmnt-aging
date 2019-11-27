view: location {
  sql_table_name: Shipment_Aging_Dtl.Location ;;

  dimension: district_description {
    type: string
    sql: ${TABLE}.District_Description ;;
  }

  dimension: division_name {
    type: string
    sql: ${TABLE}.Division_Name ;;
  }

  dimension: fullfillment_location {
    type: string
    sql: ${TABLE}.Fullfillment_Location ;;
  }

  dimension: loc_sk {
    type: number
    primary_key: yes
    sql: ${TABLE}.Loc_SK ;;
  }

  dimension: sub_region_description {
    type: string
    sql: ${TABLE}.Sub_Region_Description ;;
  }

  measure: count {
    type: count
    drill_fields: [division_name]
  }
}
