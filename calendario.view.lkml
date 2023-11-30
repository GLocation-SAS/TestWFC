
view: calendario {
  derived_table: {
    sql: SELECT
          cast("2023-"||malla_trafico_speed_delay_mes.mes||"-01"  AS date) fecha,
          AVG(malla_trafico_speed_delay_mes.delay ) AS malla_trafico_speed_delay_mes_average_delay
      FROM `datos_limpios.malla_trafico_speed_delay_mes`  AS malla_trafico_speed_delay_mes
      GROUP BY
          1
      ORDER BY
          2 DESC
      LIMIT 500 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: fecha {
    type: date
    datatype: date
    sql: ${TABLE}.fecha ;;
  }

  dimension: malla_trafico_speed_delay_mes_average_delay {
    type: number
    sql: ${TABLE}.malla_trafico_speed_delay_mes_average_delay ;;
  }

  set: detail {
    fields: [
        fecha,
	malla_trafico_speed_delay_mes_average_delay
    ]
  }
}
