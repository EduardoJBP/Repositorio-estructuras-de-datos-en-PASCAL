(-------------------------------------------------------------------------------------------)
CAMINO PROFUNDIDAD, RECURSIVO
procedure camino(g:tGrafo; var visitados:tConjNodos; origen,destino:TElem;VAR lista:Tlista);
var
w:tElem;
ady:tConjNodos;
begin
if not EsGrafoVacio(g) then
if Pertenece(g, origen) then
begin
 Poner(visitados,origen);
 insertarFinal(origen,lista);
 Adyacentes(g, ady, origen);
 Elegir(ady,w);
 while not EsConjuntoVacio(ady) and not iguales(w,destino) do
  begin
   Quitar(ady,w);
   IF not Pertenece(visitados,w)  then
   camino(g,visitados, w,destino,lista);
   else
   elegir(adya,w)
   if iguales(w,origen)then
    insertaFinal(w,lrec);
 end;
end;
end;
(-------------------------------------------------------------------------------------------)
CAMINO PROFUNDIDAD, ITERATIVO
procedure camino (g:tGrafo; origen,destino:TElem;var lRec: TLista);

VAR
w,i:tElem;
ady:tConjNodos;
P:tPila;
visitados:TConjNodos
encontrado:boolean;

BEGIN
encontrado:=false;
CrearCjtoVacio(visitados)
crearVacia(lrec);
CrearPilaVacia(P);

Poner(visitados, origen);
insertarAlfinal(lrec,origen);
Apilar(P,origen);

if not iguales(origen,destino)then
while not esPilaVacia(P) and not encontrado do
begin
 Cima(p,w);
 Desapilar(p);
 encontrado:=iguales(w,destino)
 Adyacentes(g,ady,w);
 while not EsConjVacio(ady)and not encontrado do
  begin
   Elegir(ady,i);
   Eliminar(ady,i);
   if not Pertenece (i,visitados) then
    begin
     poner(visitados,i);
     insertarFinal(lrec,i);
     encontrado:=iguales(i,destino)
     Apilar(q,i);
    end;
   end;
end;
end;
(-------------------------------------------------------------------------------------------)
CAMINO ANCHURA
procedure camino (g:tGrafo; origen,destino:TElem;var lRec: TLista);
VAR

w,i:tElem;
ady:tConjNodos;
C:tCola;
visitados:TConjNodos
encontrado:boolean;

BEGIN
encontrado:=false;
CrearConjtoVacio(visitados)
crearVacia(lrec);
CrearColaVacia(q);

Poner(visitados, origen);
insertarAlfinal(lrec,origen);
ENCOLAR(q,origen);

if not iguales(origen,destino)then
while not esColaVacia(q) and not encontrado do
begin
 Primero(q,w);
 Desencolar(q);
 encontrado:=iguales(w,destino)
 Adyacentes(g,ady,w);
 while not EsConjVacio(ady)and not encontrado do
  begin
   Elegir(ady,i);
   Eliminar(ady,i);
   if not Pertenece (i,visitados) then
    begin
     poner(visitados,i);
     insertarFinal(lrec,i);
     encontrado:=iguales(i,destino)
     Encolar(q,i);
    end;
   end;
end;
end;

(-------------------------------------------------------------------------------------------)
function longitud(origen,destino:Tvertices;g:tgrafo):integer;
var:
lista:tlista
begin
camino(g,origen,destino,lista)
longitud:=ulista.longitud(lista)-1;
end;
(-------------------------------------------------------------------------------------------)
function bucle (g:tGrafo; var visitados:tConjNodos; n:TElem):boolean;
var
w:tElem;
ady:tConjNodos;
begin
if not EsGrafoVacio(g) then
 if Pertenece(g, n) then
  begin
  Poner(visitados,n);
  Adyacentes(g, ady, n);
  while not EsConjuntoVacio(ady) and not pertenece(n,ady)do
   begin
     Elegir(ady,w);
     Quitar(ady,w);
     IF not Pertenece(visitados,w) then
      bucle:=bucle(g,visitados, w,lista);
   end;
  bucle:=pertenece(n,ady)
end;
end;
(-------------------------------------------------------------------------------------------)
function conexo(g:Tgrafo):boolean;
var
l:tlista;
n:tConjuntoNodo;
nodo:Tnodo;
begin
crearconjuntoVacio(n);
Damenodos(g,n);
elegir(n,nodo);
recorridoAnchura(g,nodo,l);
conexo:= longitud(l)=cardinalidad(n)
end;
(-------------------------------------------------------------------------------------------)
function completo(g:Tgrafo):boolean;
var
cardinalidad_Adya:integer;
ConjuntoNodos:TconjuntoNodos;
cardinalidad_grafo:integer;
ConjuntoAdyacentes:TconjuntoNodos;
aux:TGrafo;
valor:boolean;
begin
   crearConjuntoVacio(ConjuntoNodos);
   crearConjuntoVacio(ConjuntoAdyacentes)
   valor:=not esGrafoVacio(g);
   nodos(g,ConjuntoNodos);
   cardinalidad_grafops:=cardinalidad(ConjuntoNodos)-1
   aux:=g;
    while not esGrafoVacio(aux) and Valor do
     begin
     adyacentes(aux,aux^.info,ConjuntoAdyacentes);
     if pertenece(aux^.info,aux^.listaadya) then
      cardinalidad_adya:=cardinalidad(ConAyacentes)-1
     else 
      cardinalidad_adya:=cardinalidad(ConjuntoNodos)
     valor:= Cardinalidad_grafo=Cardinalidad_Adya;
     aux:=aux^.sig;
     end;
   completo:=valor;
end;
(-------------------------------------------------------------------------------------------)

function FuertementeConexo(g:tgrafo):boolean
var
conjuntoNodos:TconjuntoNodos;
cardinalNodos:integer;

longitudLista:integer;
listarecorrido:Tlista;
n1:TVertice;

valor:boolean

begin
valor:=true;
aux:=g
DameNodos(g,conjuntoNodos);
cardinalNodos:=cardinal(conjuntoNodos);
while not EsgrafoVacio(aux) and valor do
begin
recorrido(g,aux^.info,listarecorrido);
valor:= longitudLista(listarecorrido)=cardinalNodos;
aux:=aux^.sig;
while not esListaVacia(listarecorrido) do
 begin
 primero(listaRecorrido,n1);
 ulista.borrarelemento(listaRecorrido,n1);
 
 end;
end;
FuertementeConexo:=valor;
end;



















