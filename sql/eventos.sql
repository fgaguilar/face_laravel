CREATE DEFINER=`root`@`localhost` EVENT `parametros1` ON SCHEDULE EVERY 15 SECOND STARTS '2015-04-05 20:00:18' ON COMPLETION NOT PRESERVE ENABLE DO update parametros 
   set humedad=NULL,
       merma=NULL,
       leyes=NULL,
       leyesAg=NULL,
       tipoCambioANB=NULL,
       tipoCambioOficial=NULL,
       puertoDestino=NULL,
       paisDestino=NULL,
       factorKg1=NULL,
       factorKg2=NULL,
       externo=NULL,
       comprador=NULL,
       direccion=NULL,
       puerto=NULL,
       origen=NULL,
       concentrado=NULL,
       partida1=NULL,
       partida2=NULL
where DAY(NOW())=1

CREATE DEFINER=`root`@`localhost` EVENT `parametros2` ON SCHEDULE EVERY 15 SECOND STARTS '2015-04-05 20:00:18' ON COMPLETION NOT PRESERVE ENABLE DO update parametros 
   set cotizaciones=null,
       cotizacionesAg=null,
       alicuotas=null,
       alicuotasAg=NULL
where DAY(NOW())=1 or DAY(NOW())=15