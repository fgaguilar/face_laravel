<?php

class Factura extends \Eloquent {
      protected $fillable = array(
            'fecha',
            'factura',
            'nit',
            'comprador',
            'direccion',
            'puertoTransito',
            'puertoDestino',
            'paisDestino',
            'origen',
            'numeroLote',
            'pesoKilosNetosHumedosPeso',
            'pesoHumedadPesos',
            'pesoHumedadPeso',
            'pesoMermaPesos',
            'pesoMermaPeso',
            'contenidoZnLeyes',
            'contenidoZnPesokg',
            'baseZnCotizaciones',
            'contenidoZnPesolf',
            'pesoKilosNetosSecosPeso',
            'contenidoAgLeyes',
            'contenidoAgPesokg',
            'baseAgCotizaciones',
            'contenidoAgPesoot',
            'baseZnSus',
            'baseAgSus',
            'baseTotalSus',
            'basePromedioSus',
            'baseDiferenciaSus',
            'tipoCambio',
            'planilla_id'
      );
      public function factura(){
            return $this->belongsTo ('Planilla');
      }
}
