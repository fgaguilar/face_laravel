<?php

class Planilla extends \Eloquent {
      protected $fillable = array(
		'planilla',
		'pesoKilosNetosHumedosPeso',
		'pesoKilosNetosHumedosFactores',
		'pesoHumedadPesos',
		'pesoHumedadPeso',
		'pesoHumedadFactores',
		'pesoMermaPesos',
		'pesoMermaPeso',
		'pesoMermaFactores',
		'pesoKilosNetosSecosPeso',
		'pesoKilosNetosSecosFactores',
		'pesoLoteFactores',
		'contenidoListaEmpaqueFactores',
		'contenidoZnLeyes',
		'contenidoZnPesokg',
		'contenidoZnTipoDeCambioFactores',
		'contenidoZnPesolf',
		'contenidoAgLeyes',
		'contenidoAgPesokg',
		'contenidoAgFleteTotalFactores',
		'contenidoAgPesoot',
		'contenidoAgInternoFactores',
		'contenidoAgExternoFactores',
		'baseZnCotizaciones',
		'baseZnSus',
		'baseZnContenedoresFactores',
		'baseAgCotizaciones',
		'baseAgSus',
		'baseAgTaraTotalFactores',
		'baseTotalSus',
		'baseTotalPesoBrutoFactores',
		'basePromedioSus',
		'baseDiferenciaSus',
		'baseDiferenciaDueFactores',
		'impuestoFacturaFactores',
		'impuestoZnAlicuota',
		'impuestoZnSus',
		'impuestoZnValorConcentradoFactores',
		'impuestoAgAlicuota',
		'impuestoAgSus',
		'impuestoTotalSusSus',
		'impuestoTotalBsSus',
		'puertoDestino',
		'paisDestino'
      );
      public function factura(){
            return $this->hasOne('Factura');
      }
}