UNIT GRAFOSM; {Grafo No Ponderado}
INTERFACE
	USES ELEMTAD, NODOS, ARCOS, CONJ_N, CONJ_A;
	CONST MAX_NUM = …;
	TYPE
		TipoGrafo = RECORD
			matriz: ARRAY[1..MAX_NUM, 1..MAX_NUM] OF BOOLEAN;
			nodos: TipoConjuntoNodos
		END;


IMPLEMENTATION
(-------------------------------------------------------------------------------------------)
PROCEDURE CrearGrafoVacio(VAR g: TipoGrafo);
(* COMPLEJIDAD: O(n^2) *)
VAR i, j: 1..MAX_NUM;
BEGIN
	CrearConjuntoVacio(g.nodos);
	FOR i:=1 TO MAX_NUM DO
	FOR j:=1 TO MAX_NUM DO
		g.matriz[i, j] := FALSE;
END;
(-------------------------------------------------------------------------------------------)

PROCEDURE InsertarNodo(VAR g: TipoGrafo; n: TipoNodo);
(* COMPLEJIDAD: O(1) *)
BEGIN
Poner(g.nodos, n);
END;
(-------------------------------------------------------------------------------------------)

PROCEDURE InsertarArco(VAR g: TipoGrafo; a: TipoArco);
(* COMPLEJIDAD: O(1) *)
VAR
i, j: TipoNodo;
BEGIN
Origen(a, i); (*operación auxiliar de TADArcos*)
Destino(a, j); (*operación auxiliar de TADArcos*)
if not pertenece(i,g.nodos) then
 poner(i,g.nodos);
if not pertenece(j,g.nodos) then
 poner(j,g.nodos);
g.matriz[i, j]:=TRUE;
END;
(-------------------------------------------------------------------------------------------)

FUNCTION EsGrafoVacio(VAR g: TipoGrafo): Boolean;
(* COMPLEJIDAD: O(1) *)
BEGIN
EsGrafoVacio:= EsConjuntoVacio(g.nodos)
END;

(-------------------------------------------------------------------------------------------)
PROCEDURE Adyacentes(VAR g: TipoGrafo; VAR a: TipoConjuntoNodos; n: TipoNodo); {aqui creo que hace todos los que estan conecatados a el}
(* COMPLEJIDAD: O(n) *)
VAR
aux: 1..MAX_NUM;
BEGIN
CrearConjuntoVacio(a);
FOR aux:=1 TO MAX_NUM DO
 IF g.matriz[n, aux] THEN
 Poner(a, aux);
END;
(-------------------------------------------------------------------------------------------)
PROCEDURE Adyacentes(VAR g: TipoGrafo; VAR a: TipoConjuntoNodos; n: TipoNodo); {CREADO POR MÍ, AQUELLOS NODOS CON LOS QUE SE CONECTAN TANTO CON ENTRADA COMO CON SALIDA}
(* COMPLEJIDAD: O(n) *)
VAR
aux: 1..MAX_NUM;
BEGIN
CrearConjuntoVacio(a);
FOR aux:=1 TO MAX_NUM DO
 IF g.matriz[n, aux] and g.matriz[aux, n]  THEN {fila n-ésima de la Matriz Ady.}
  Poner(a, aux);
END;
(-------------------------------------------------------------------------------------------)
PROCEDURE DameNodos(VAR g: TipoGrafo; VAR c: TipoConjuntoNodos);
(* COMPLEJIDAD: O(n) *)
VAR
i: 1..MAX_NUM;
BEGIN
 CrearConjuntoVacio(c);
 FOR i:=1 TO MAX_NUM DO
 IF Pertenece(g.nodos, i) THEN
 Poner(c, i)
 hacer una unión(c1,g.nodos,c)
 crerconjuntvacio(c1)
END;
(-------------------------------------------------------------------------------------------)

PROCEDURE DameArcos(VAR g: TipoGrafo; VAR a: TipoConjuntoArcos);
(* COMPLEJIDAD: O(n^2)*)
VAR
i, j: 1..MAX_NUM;
arco: TipoArco;
BEGIN
 CrearConjuntoArcosVacio(a);
 FOR i:=1 TO MAX_NUM DO
 FOR j:=1 TO MAX_NUM DO
 IF g.matriz[i, j] THEN
 BEGIN
  ConstruirArco(arco, i, j);
  Poner(a, arco)
 END
END;
(-------------------------------------------------------------------------------------------)

{ CONSTRUCTORAS NO GENERADORAS }
PROCEDURE BorrarNodo(VAR g: TipoGrafo; VAR n: TipoNodo);
(* COMPLEJIDAD: O(n) *)
VAR
	aux: 1..MAX_NUM;
BEGIN
	Quitar(g.nodos, n);
	FOR aux:=1 TO MAX_NUM DO
		g.matriz[n, aux] := FALSE;
		g.matriz[aux, n] := FALSE;
END;
(-------------------------------------------------------------------------------------------)


PROCEDURE BorrarArco(VAR g: TipoGrafo; VAR a: TipoArco);
(* COMPLEJIDAD: O(1) *)
VAR
i, j: TipoNodo;
BEGIN
 Origen(a, i);
 Destino(a, j);
 g.matriz[i, j] := FALSE
END;
END.
