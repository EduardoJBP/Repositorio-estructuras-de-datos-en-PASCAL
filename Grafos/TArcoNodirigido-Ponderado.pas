uses  TalElemento;

type
	tArco= record
		origen,destino:telemento;
		coste:Tpeso
	end;
(-------------------------------------------------------)
procedure CrearArco(o,d:TEelemento;p:TPeso ;c VAR a:TArco);
begin
	asignar(a.origen, o);
	asignar(a.destino, d);
	asignar(a.coste,c);
end;
(-------------------------------------------------------)
function Peso(a1:tarco):integer;
begin

peso:= a1.coste;

end;
(-------------------------------------------------------)
procedure Destino(a:TArco; VAR e:TElemento);
begin
	asignar(e, a.destino);
end

(-------------------------------------------------------)
procedure Origen(a:TArco; VAR e:TElemento);
begin
	asignar(e, a.origen);
end;
(-------------------------------------------------------)

function  Iguales(a1,a2:TArco): boolean;
begin
se usa op definida en tad elemento

	iguales:= (( (iguales(a1.origen,a2.origen) and iguales(a1.destino,a2.destino)) or (iguales(a1.origen,a2.destino) and iguales(a1.destino,a2.origen)) ) and a1.peso=a2.peso))

end;
(-------------------------------------------------------)
function Menor(a1,a2:Tarco):boolean
	begin
		menor:= ucoste.menor(a1.coste,a2.coste);
	end;


end.
