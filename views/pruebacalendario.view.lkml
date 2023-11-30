
view: pruebacalendario {
  derived_table: {
    sql: SELECT
          cast('2023-0'||malla_trafico_speed_delay_mes.mes||'-01' as date)  AS malla_trafico_speed_delay_mes_mes,
          COUNT(*) AS malla_trafico_speed_delay_mes_count
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

  dimension: malla_trafico_speed_delay_mes_mes {
    type: date
    datatype: date
    sql: ${TABLE}.malla_trafico_speed_delay_mes_mes ;;
  }

  dimension: malla_trafico_speed_delay_mes_count {
    type: number
    sql: ${TABLE}.malla_trafico_speed_delay_mes_count ;;
  }

  set: detail {
    fields: [
        malla_trafico_speed_delay_mes_mes,
	malla_trafico_speed_delay_mes_count
    ]
  }
}
