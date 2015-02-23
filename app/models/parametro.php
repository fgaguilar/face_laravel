<?php

class Parametro extends \Eloquent {
      protected $fillable = array(
      'humedad',
      'merma',
      'leyesZn',
      'leyesPb',
      'leyesAg',
      'cotizacionesZn',
      'cotizacionesPb',
      'cotizacionesAg',
      'alicuotasZn',
      'alicuotasPb',
      'alicuotasAg',
      'tipoCambioANB',
      'tipoCambioOficial',             
      'puertoDestino',
      'paisDestino',
      'factorKg1',
      'factorKg2',
      'externo',
      'comprador',
      'direccion',
      'puerto',
      'origen'
    );
}
