(-------------------------------------------------------)
PROFUNDIDAD:RECURSIVO
procedure rp (g:tGrafo; var visitados:tConjNodos; n:TElem;VAR lista:Tlista);
var
w:tElem;
ady:tConjNodos;
begin
if not EsGrafoVacio(g) then
 if Pertenece(g, n) then
  begin
   Poner(visitados,n);
   insertarFinal(n,lista);
   Adyacentes(g, ady, n);
   while not EsConjuntoVacio(ady) do
    begin
     Elegir(ady,w);
     Quitar(ady,w);
     IF not Pertenece(visitados,w) then
      rp(g,visitados, w,lista);
    end;
  end;
end;
(-------------------------------------------------------)
PROFUNDIDAD CON PILA
procedure PR (g:tGrafo; n:TElem;var lRec: TLista);
var
w,i:tElem;
ady:tConjNodos;
P:tPila;
visitados:TConjNodos
begin

CrearCjtoVacio(visitados)
crearVacia(lrec);
CrearPilaVacia(P);

Poner(visitados, n);
insertarAlfinal(lrec,n);
Apilar(P,n);
while not esPilaVacia(P) do
  begin
   Cima(p,w);
   Desapilar(p);
   Adyacentes(g,ady,w);
   while not EsConjVacio(ady) do
   begin
     Elegir(ady,i);
     Eliminar(ady,i);
     if not Pertenece (i,visitados) then
       begin
        poner(visitados,i);
	insertarFinal(lrec,i);
	Apilar(q,i);
       end;
   end;
  end;
end;
(-------------------------------------------------------)

ANCHURA CON COLA
procedure ra (g:tGrafo; n:TElem;var lRec: TLista);
var
w,i:tElem;
ady:tConjNodos;
q:tCola;
visitados:TConjNodos
begin

CrearCjtoVacio(visitados)
crearVacia(lrec);
CrearColaVacia(q);

Poner(visitados, n);
insertarAlfinal(lrec,n);
Encolar(q,n);
while not esColaVacia(q) do
begin
 Primero(q,w);
 Desencolar(q);
 Adyacentes(g,ady,w);
 while not EsConjVacio(ady) do
  begin
   Elegir(ady,i);
   Eliminar(ady,i);
   if not Pertenece (i,visitados) then
    begin
      poner(visitados,i);
      insertarFinal(lrec,i);
      Insertar(q,i);
    end;
  end;
end;
end;
