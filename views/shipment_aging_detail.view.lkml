view: shipment_aging_detail {
  sql_table_name: Shipment_Aging_Dtl.Shipment_Aging_Detail ;;

  dimension: __units {
    type: number
    sql: ${TABLE}.__Units ;;
  }

  dimension: added_by_app_code {
    type: string
    sql: ${TABLE}.Added_By_App_Code ;;
  }

  dimension_group: confirm_or_exchange_create_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Confirm_or_Exchange_Create_TS ;;
  }

  dimension: dedicated_fulfillment_location {
    type: yesno
    sql: ${TABLE}.Dedicated_Fulfillment_Location ;;
  }

  dimension: delivery_process {
    type: string
    sql: ${TABLE}.Delivery_Process ;;
  }

  dimension: delivery_sub_type {
    type: string
    sql: ${TABLE}.Delivery_Sub_Type ;;
  }

  dimension: delivery_type {
    type: number
    sql: ${TABLE}.Delivery_Type ;;
  }

  dimension_group: estimated_delivery {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Estimated_Delivery_Date ;;
  }

  dimension: expedited_method {
    type: string
    sql: ${TABLE}.Expedited_Method ;;
  }

  dimension: hold_flag {
    type: string
    sql: ${TABLE}.Hold_Flag ;;
  }

  dimension_group: line_item_status {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Line_Item_Status_Date ;;
  }

  dimension: loc_sk {
    type: number
    sql: ${TABLE}.Loc_sk ;;
  }

  dimension: order_method_code {
    type: string
    sql: ${TABLE}.Order_Method_Code ;;
  }

  dimension: pick_ticket {
    type: number
    sql: ${TABLE}.Pick_Ticket ;;
  }

  dimension: reservation_number {
    type: number
    sql: ${TABLE}.Reservation_Number ;;
  }

  dimension: selling_division {
    type: number
    sql: ${TABLE}.Selling_Division ;;
  }

  dimension_group: ship_after {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Ship_After_Date ;;
  }

  dimension_group: ship_by {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Ship_By_Date ;;
  }

  dimension: shipment_number {
    type: number
    sql: ${TABLE}.Shipment_Number ;;
  }

  dimension: shipment_status {
    type: string
    sql: ${TABLE}.Shipment_Status ;;
  }

  dimension_group: shipment_status {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Shipment_Status_Date ;;
  }

  dimension: sp_manager_status {
    type: string
    sql: ${TABLE}.SP_Manager_Status ;;
  }

  dimension: status_date {
    type: string
    sql: ${TABLE}.Status_Date ;;
  }

  measure: units {
    type: sum
    sql: ${__units} ;;
    drill_fields: [location.sub_region_description,location.district_description,location.fulfillment_location,units]
}
}
