
PROCEDURE InvertirLista (lista: tLista; VAR inversa: tLista);
VAR pila: tPila;
    elem: tElemento;
BEGIN
	crearPilaVacia(pila);
	WHILE NOT EsVacia(lista) DO
		BEGIN
			Primero(lista, elem);
			Resto(lista, lista);
			Apilar(elem, pila)
		END;
	CrearVacia(inversa);
	WHILE NOT EsPilaVacia(pila) DO
		BEGIN
			Cima(pila, elem);
			Desapilar(pila);
			InsertarFinal(elem, inversa)
		END
END;

PROCEDURE duplicar (VAR pila: tPila);
VAR p: tPila;
    elem: tElemento;
BEGIN
	CrearVacia(p);
	WHILE NOT EsPilaVacia(pila) DO 
		BEGIN
			Cima(pila, elem);
			Desapilar(pila);
			Apilar(elem, p)
		END;
	WHILE NOT EsPilaVacia(p) DO
		BEGIN
			Cima(p, elem);
			Desapilar(p);
			Apilar(elem, pila);
			Apilar(elem, pila)
		END
END;

PROCEDURE sustituir (VAR pila: tPila; e1, e2: tElemento);
VAR p: tPila;
    elem: tElemento;
BEGIN
	CrearVacia(p);
	WHILE NOT EsPilaVacia(pila) DO 
		BEGIN
			Cima(pila, elem);
			Desapilar(pila);
			Apilar(elem, p)
		END;
	WHILE NOT EsPilaVacia(p) DO
		BEGIN
			Cima(p, elem);
			Desapilar(p);
			IF Igual(elem, e1) THEN
				Apilar(e2, pila)
			ELSE
				Apilar(elem, pila)
		END
END;




























