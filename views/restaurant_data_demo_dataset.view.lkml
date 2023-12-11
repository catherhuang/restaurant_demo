view: restaurant_data_demo_dataset {
  sql_table_name: `cat-looker-core-argolis-demo.cat_demo_data.restaurant_data_demo_dataset` ;;

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }
  dimension: dine_in {
    type: number
    sql: ${TABLE}.Dine_In ;;
  }
  dimension: dish_name {
    type: string
    sql: ${TABLE}.Dish_Name ;;
  }
  dimension: parcel {
    type: number
    sql: ${TABLE}.Parcel ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }
  dimension: total_customers {
    type: number
    sql: ${TABLE}.Total_Customers ;;
  }
  dimension: total_sales {
    type: number
    sql: ${TABLE}.Total_Sales ;;
  }
  measure: count {
    type: count
    drill_fields: [dish_name]
  }
}
