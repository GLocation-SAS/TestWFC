
view: tabla_malla {
  derived_table: {
    sql: SELECT
          malla_trafico_speed_delay_mes.NOMBRE_VIA  AS nombre_via,
          malla_trafico_speed_delay_mes.street  AS tramo,
          st_astext(malla_trafico_speed_delay_mes.geom) AS geom
      FROM `datos_limpios.malla_trafico_speed_delay_mes`  AS malla_trafico_speed_delay_mes ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: nombre_via {
    type: string
    sql: ${TABLE}.nombre_via ;;
  }

  dimension: tramo {
    type: string
    sql: ${TABLE}.tramo ;;
  }

  dimension: geom {
    type: string
    sql: ${TABLE}.geom ;;
  }

  set: detail {
    fields: [
        nombre_via,
  tramo,
  geom
    ]
  }
}
