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
            'planilla_id',
            'control',
            'autorizacion',
            'vencimiento',
            'literal1',
            'literal2',
            'concentrado',
            'partida1',
            'partida2',
            'baseDiferenciaBs',
            'literal3'
      );
      public function planilla(){
            return $this->belongsTo ('Planilla');
      }
}
