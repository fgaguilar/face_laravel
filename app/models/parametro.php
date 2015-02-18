<?php

class Parametro extends \Eloquent {
      protected $fillable = array(
      'humedad',
      'merma',
      'leyesZn',
      'leyesAg',
      'cotizacionesZn',
      'cotizacionesAg',
      'alicuotasZn',
      'alicuotasAg',
      'tipoCambioANB',
      'tipoCambioOficial',             
      'puertoDestino',
      'paisDestino',
      'factorKg1',
      'factorKg2',
      'externo'
    );
}
