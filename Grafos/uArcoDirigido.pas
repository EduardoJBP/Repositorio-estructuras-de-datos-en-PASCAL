unit uArco;

interface
EN ARCOS NO DIRIGIDOS SE PILLA EXTREMO 1 Y EXTREMO2
uses  TalElemento;

type
	tArco= record
		origen,destino:telemento;
	end;
(-------------------------------------------------------)
implementation

procedure CrearArco(o,d:TEelemento; VAR a:TArco);
begin
	asignar(a.origen, o);
	asignar(a.destino, d);

end;
(-------------------------------------------------------)

procedure DevuelveDestino(a:TArco; VAR e:TElemento);
begin
	asignar(e, a.destino);
end
(-------------------------------------------------------)

procedure DevuelveOrigen(a:TArco; VAR e:TElemento);
begin
	asignar(e, a.origen);
end;
(-------------------------------------------------------)

function  Iguales(a1,a2:TArco): boolean;
begin
se usa op definida en tad elemento

	iguales:= (iguales(a1.origen,a2.origen) and iguales(a1.destino,a2.destino))

end;
(-------------------------------------------------------)

end.
