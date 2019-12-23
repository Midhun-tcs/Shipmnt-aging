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
  dimension: locn_nm {
    type: string
    sql: ${TABLE}.locn_nm ;;
  }
  dimension: divn_nbr {
    type: string
    sql: ${TABLE}.divn_nbr ;;
  }
  dimension: divn_abbr {
    type: string
    sql: ${TABLE}.divn_abbr ;;
  }
  dimension: oper_divn_nm {
    type: string
    sql: ${TABLE}.oper_divn_nm ;;
  }
  dimension: zl_divn_nbr {
    type: string
    sql: ${TABLE}.zl_divn_nbr ;;
  }
  dimension: zl_str_nbr {
    type: string
    sql: ${TABLE}.zl_str_nbr ;;
  }
  dimension: locn_nbr {
    type: string
    sql: ${TABLE}.locn_nbr ;;
  }
  dimension: state_cd {
    type: string
    sql: ${TABLE}.state_cd ;;
  }
  dimension: sub_rgn_id {
    type: string
    sql: ${TABLE}.sub_rgn_id ;;
  }
  dimension: max_picks {
    type: string
    sql: ${TABLE}.max_picks ;;
  }
  dimension: ops_max_picks {
    type: string
    sql: ${TABLE}.ops_max_picks ;;
  }
  measure: count {
    type: count
    drill_fields: [division_name]
  }
}
