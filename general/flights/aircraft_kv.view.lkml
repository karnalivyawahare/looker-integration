view: aircraft_kv {
  sql_table_name: `cloud-training-demos.looker_flights.aircraft` ;;

  dimension: tail_num {
    type: string
    primary_key: yes
    sql: rtrim(${TABLE}.tail_num) ;;
  }



  dimension: address2 {
    type: string
    sql: ${TABLE}.address2 ;;
  }

  dimension_group: air_worth {
    type: time
    timeframes: [time, date, week, month, year, raw]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.air_worth_date ;;
  }
}
