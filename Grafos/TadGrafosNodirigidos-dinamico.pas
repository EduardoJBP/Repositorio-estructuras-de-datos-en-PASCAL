unit TADGrafoNODirigido;
interface


USES talelemento, tadConjuntoN, tadConjuntoA, TADLista, Tarco;
type

	tGrafo=^TNodoGrafo;
	TNodoGrafo= Record
		info:TElemento;
		adyacentes:TLista;
		sig:TGrafo;
	end;


implementation
(-------------------------------------------------------------------------------------------)
procedure CrearGrafoVacío(VAR g:TGrafo);
begin
g:=nil;
end;
(-------------------------------------------------------------------------------------------)
procedure InsertarNodo(VAR g:TGrafo, n:TVertice);
var
aux:TGrafo;
begin
if not Pertenece(n,g) then //pertenece es privada
 begin
 new(aux);
 asignar (aux^.info,n)
 CrearListaVacia(aux^.ady);
 aux^.sig :=g;
 g:= aux;
 end;
end;
(-------------------------------------------------------)
procedure InsertarArco(VAR a:Tarco, g:Tgrarco);
var
 n1,n2:TElemento;
 aux1,aux2:tGrafo;
begin
 origen(a,n1);
 destino(a,n2);
 if not pertenece(n1,g) then
   insertarNodo(g,n1);
 if not pertenece(n1,g) then
   insertarNodo(g,n2);
 Localiza(n1,g,aux1); //localiza el nodo en el grafo y pone un aux apuntando el cuál devuelve. es privado
 Localiza(n2,g,aux2);
 if not tadlista.pertenece(aux1^.adya,e2) and not tadlista.pertenece(aux2^.adya,e1) then
  begin
   construir(aux1^.adya,e2);
   construir(aux2^.adya,e1);
  end;
end;
(-------------------------------------------------------)
procedure Nodos(g:TGrafo; c:TConj_nodos);
VAR
aux:TGrafo;
begin
TConj_nodos.crearConjuntovacio(c);
if not esGrafoVacio(g) then
 begin
  aux:=g;
  while not esgrafovacio(aux) do
   begin
   TConj_nodos.Poner(aux^.info,c);
   aux:=aux^.sig;
   end;
 end;
end;
(-------------------------------------------------------------------------------------------)
procedure Arcos(g:TGrafo; c:TConj_arcos);
var
n1:Telem;
a:TArco;
aux:TGrafo;
aux_ady:tlista
begin
 TConj_arcos.CrearconjuntoVacio(c);
 aux:=g;
 while not EsgrafoVacio(aux) do
  begin
   aux_ady:=aux^.ady;
   while not eslistaVacia(aux_ady)do
    begin
    primero(aux_ady, n1);
    resto(aux_ady, aux_adya);
    ContruirArco(aux^.info, n1,a);
    TConj_arcos.poner(a, c);
    end;
  aux:=aux^.sig;
 end;
end;

(-------------------------------------------------------)
function EsGrafoVacío(a:TGrafo):boolean;
begin
esgrafovacio := a=nil ;
end;
(-------------------------------------------------------)
procedure Adyacentes(a)(g:TGrafo: n:Telemento;VAr c:TconjuntoNodos);
var
aux:Tgrafo;
auxAdya:Tlista;
n2:telem;
begin
 conj_nodos.CrearConjuntoVacio(c);
 localiza(g,n,aux);
 if not esgrafovacio(aux) then
 begin
  auxAdya:= aux^.ady;
  while not esListaVacia(auxadya) do
   begin
    Primero(auxadya,n2);
    resto(auxadya, auxadya);
    tconjuntonodos.Poner(c,n2);
   end;
 end;
end;
(-------------------------------------------------------)

procedure BorrarArco(a:TArco; VAR g:Tgrafo);
var
 n1,n2:Telemento;
 aux1:TGrafo;
 aux2:TGrafo;
 auxadya:Tlista;
begin
 Origen(a,n1);
 Destino(a,n2);
 Localiza(a,n1,aux1);
 Localiza(a,n2,aux2);
 if not esGrafoVacio(aux1) and notesgrafovacio(aux2)
  begin
   if tadlista.pertenece(AUX1^.adya,n2) and tadlista.pertenece(aux2^.adya,n1)
    begin
     borrarElemento(n2,aux1^.adya);
     borrarElemento(n1,aux2^.adya);
   end;
  end;
end;
(-------------------------------------------------------)
procedure BorrarNodo(n:TElemento; VAR g:Tgrafo);
var
aux:Tgrafo;
ant:Tgrafo;
begin
if NOT esgrafoVacio(g) then
 begin
  aux:=g; ant:=nil;
  while not esGrafovacio(aux) then
  begin
   if iguales(n,aux^.info) then
    EliminarLista(aux^.adya)
   else
     BorrarElemento(n,aux^.adya);
   aux:=aux^.sig;
  end;
 end;

aux:=g;
while not esgrafoVacio(aux) and not iguales(aux^.info,n) do
 begin
  ant:=aux;
  aux:=aux^.sig;
 end;

if not esgrafoVacio(aux) then
 if EsgrafoVacio(ant) then
  begin
   g:=g^.sig;
   dispose(aux);
  end
   else
    begin
     annt^.sig := aux^.sig;
     dispose (aux);
    end;
 end;
end;

(-------------------------------------------------------)


procedure localiza(g:Tgrado;e:Telemento;Var aux:TGrafo);

	begin

		aux:=g;
		while not EsgrafoVacio(aux) and not iguales(aux`.info,e) do
			aux:=aux`.sig;

	end;
(-------------------------------------------------------)

function Pertenece(g:Tgrafo; e:Telemento);boolean;

	begin

		while not EsgrafoVacio(g) and not iguales(g^.info,e) do
		 	g:=g`.sig
		 pertenece := notEsgrafoVacio(g);

	end;







end;






end.
