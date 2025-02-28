
view:alertas_upl{

   sql_table_name: `wfcservinformacion.datos_limpios.alertas_upl_view` ;;

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }
  measure: cantidad_total_alertas{
    type: sum
    sql: ${total} ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.`type` ;;
  }
  dimension: subtype {
    type: string
    sql: ${TABLE}.subtype ;;
  }




  dimension_group: fecha{
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.f0_ ;;
  }
   dimension: geometria {
    label: "Geos"
    type: string
    sql: ST_AsText(${TABLE}.Geometria) ;;
  }
  dimension: longitud {
    label: "Longitud"
    type: number
    sql: longitud ;;
  }

  dimension: latitud {
    label: "Latitud"
    type: number
    sql:latitud ;;
  }


  dimension: road_type {
    type: number
    sql: ${TABLE}.roadType ;;
  }
  measure: total_road_type {
    type: sum
    sql: ${road_type} ;;  }

  measure: average_road_type {
    type: average
    sql: ${road_type} ;;  }

  dimension: road_type_name {
    type: string
    sql: ${TABLE}.roadTypeName ;;
  }

  dimension: semana {
    type: string
    sql: ${TABLE}.Semana ;;
  }



  dimension: upl {
    type: string
    sql: ${TABLE}.UPL ;;
  }

  dimension: upl_codigo {
    type: string
    sql: ${TABLE}.UPL_Codigo ;;
  }
  measure: count {
    type: count

  }
}
