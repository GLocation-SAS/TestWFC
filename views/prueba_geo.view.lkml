
view: prueba_geo {
  derived_table: {
    sql: SELECT * FROM `wfcservinformacion.datos_limpios.caso4_huecos`c1 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date {
    type: date
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitud ;;
    sql_longitude: ${TABLE}.longitud ;;
  }

  dimension: subtype {
    type: string
    sql: ${TABLE}.subtype ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: pluscode {
    type: string
    sql: ${TABLE}.PLUSCODE ;;
  }

  dimension: pluscode9 {
    type: string
    sql: ${TABLE}.PLUSCODE9 ;;
  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.Latitud ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.Longitud ;;
  }

  set: detail {
    fields: [
        date,
  city,
  street,
  type,
  subtype,
  geo,
  pluscode,
  pluscode9,
  latitud,
  longitud
    ]
  }
}
