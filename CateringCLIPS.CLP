;; ONTOLOGIA
; Wed May 03 18:00:39 CEST 2017
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(multislot Estacion
		(type SYMBOL)
		(allowed-values Primavera Verano Otono Invierno)
		(cardinality 1 4)
		(create-accessor read-write))
	(single-slot TipoPlato
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot LugarPlato
;+		(comment "Lugar donde el plato es tipico en caso de que lo sea")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PrimerPlatoMenu
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NumComs
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot TipoEvento
		(type SYMBOL)
		(allowed-values Familiar_comida Familiar_cena Congreso_comida Congreso_cena)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Complejo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot TipoIngred
		(type SYMBOL)
		(allowed-values Carne Pescado Vegetal)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot IngredientesPlato
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Clasico
;+		(comment "Clasico/Moderno")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioMin
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Precio
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Sibarita
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioMax
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot PlatosCompatibles
		(type INSTANCE)
;+		(allowed-classes Plato)
		(cardinality 2 ?VARIABLE)
		(create-accessor read-write))
	(single-slot PrecioMenu
;+		(comment "Valor calculado")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot BebidasCompatibles
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot SegundoPlatoMenu
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PostreMenu
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot BebidaAsociada
		(type INSTANCE)
;+		(allowed-classes Bebida)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot MenusEvento
		(type INSTANCE)
;+		(allowed-classes Menu)
		(cardinality 3 3)
		(create-accessor read-write))
	(multislot OrdenPlato
		(type SYMBOL)
		(allowed-values Primero Segundo Postre)
		(cardinality 1 3)
		(create-accessor read-write)))

(defclass Evento
	(is-a USER)
	(role concrete)
	(multislot Estacion
		(type SYMBOL)
		(allowed-values Primavera Verano Otono Invierno)
		(cardinality 1 4)
		(create-accessor read-write))
	(single-slot NumComs
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioMin
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot MenusEvento
		(type INSTANCE)
;+		(allowed-classes Menu)
		(cardinality 3 3)
		(create-accessor read-write))
	(single-slot PrecioMax
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot TipoEvento
		(type SYMBOL)
		(allowed-values Familiar_comida Familiar_cena Congreso_comida Congreso_cena)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Menu
	(is-a USER)
	(role concrete)
	(single-slot SegundoPlatoMenu
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioMenu
;+		(comment "Valor calculado")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PostreMenu
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot BebidaAsociada
		(type INSTANCE)
;+		(allowed-classes Bebida)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PrimerPlatoMenu
		(type INSTANCE)
;+		(allowed-classes Plato)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Plato
	(is-a USER)
	(role concrete)
	(single-slot Precio
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Estacion
		(type SYMBOL)
		(allowed-values Primavera Verano Otono Invierno)
		(cardinality 1 4)
		(create-accessor read-write))
	(single-slot Complejo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot PlatosCompatibles
		(type INSTANCE)
;+		(allowed-classes Plato)
		(cardinality 2 ?VARIABLE)
		(create-accessor read-write))
	(single-slot TipoPlato
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot LugarPlato
;+		(comment "Lugar donde el plato es tipico en caso de que lo sea")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot BebidasCompatibles
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot IngredientesPlato
		(type INSTANCE)
;+		(allowed-classes Ingrediente)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Sibarita
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Clasico
;+		(comment "Clasico/Moderno")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot BebidaAsociada
		(type INSTANCE)
;+		(allowed-classes Bebida)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot OrdenPlato
		(type SYMBOL)
		(allowed-values Primero Segundo Postre)
		(cardinality 1 3)
		(create-accessor read-write)))

(defclass Bebida
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Precio
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Ingrediente
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Estacion
		(type SYMBOL)
		(allowed-values Primavera Verano Otono Invierno)
		(cardinality 1 4)
		(create-accessor read-write))
	(single-slot TipoIngred
		(type SYMBOL)
		(allowed-values Carne Pescado Vegetal)
;+		(cardinality 1 1)
		(create-accessor read-write)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; INSTANCIAS

(definstances instancias 
; Wed May 03 17:19:19 CEST 2017
; 
;+ (version "3.5")
;+ (build "Build 663")

([Catering_Class11] of  Bebida

	(Nombre "Agua")
	(Precio 1.0))

([Catering_Class12] of  Bebida

	(Nombre "Coca Cola")
	(Precio 1.2))

([Catering_Class3] of  Ingrediente

	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Filete")
	(TipoIngred Carne))

([Catering_Class4] of  Ingrediente

	(Estacion Verano)
	(Nombre "Helado")
	(TipoIngred Carne))

([Catering_Class5] of  Ingrediente

	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Pasta")
	(TipoIngred Carne))
	
	)
;;;;;;;;;;; CODIGO CLIPS  ;;;;;;;;;;;;;

;;****************
;;* DEFFUNCTIONS *
;;****************

(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer) 
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer) 
          then (bind ?answer (lowcase ?answer))))
   ?answer)

(deffunction yes-or-no-p (?question)
   (bind ?response (ask-question ?question yes no y n))
   (if (or (eq ?response yes) (eq ?response y))
       then TRUE 
       else FALSE))
	   
(deffunction esComida (?question)
   (bind ?response (ask-question ?question comida cena))
   (if (eq ?response Comida)
       then TRUE 
       else FALSE))
	   
(deffunction esFamiliar (?question)
   (bind ?response (ask-question ?question familiar congreso))
   (if (eq ?response Familiar)
       then TRUE 
       else FALSE))
	   
;;;;;;;;;;;;;;  QUERIES ;;;;;;;;;;;;;;;;
; SALIENCE = 10

(defrule preguntar-tipo-evento
 (declare (salience 10))
 =>
 (if (esComida "¿Es una comida o una cena?")
  then (if (esFamiliar "¿Es un evento familiar o un congreso?")
		  then (assert (tipoEvento Familiar_comida))
		  else (assert (tipoEvento Congreso_comida))
          )
  else (if (esFamiliar "¿Es un evento familiar o un congreso?")
		  then (assert (tipoEvento Familiar_cena))
		  else (assert (tipoEvento Congreso_cena))
          )
  )
)

(defrule preguntar-estacion
 (declare (salience 10))
 =>
 (printout t "¿En qué estación será el evento?" crlf)
 (printout t "Primavera" crlf)
 (printout t "Verano" crlf)
 (printout t "Otono" crlf)
 (printout t "Invierno" crlf) 
 (bind ?estacion (read))
 (assert (estacion ?estacion))
)

(defrule preguntar-comensales
 (declare (salience 10))
 =>
 (printout t "¿Cuantos comensales?")
 (bind ?numComs (read))
 (assert (numComs ?numComs)) 
)

(defrule preguntar-precio-max
 (declare (salience 10))
 =>
 (printout t "¿Cual es el maximo presupuesto por persona?")
 (bind ?precioMax (read))
 (assert (precioMax ?precioMax)) 
)

(defrule preguntar-precio-min
 (declare (salience 10))
 =>
 (printout t "¿Cual es el minimo presupuesto por persona?")
 (bind ?precioMin (read))
 (assert (precioMin ?precioMin)) 
)

;;;;;;;;;;;;; CONCLUSIONS ;;;;;;;;;;;;;;
; NO SALIENCE
; DEFAULTS:
; simple
; una bebida
;

(defrule complejidad
   (numComs ?nC &:(> ?nC 50))
   =>
   (assert (complejo))
)

;;; Comented for the prototype
; (defrule multiplesBebidas
   ; (complejo)
   ; =>
   ; (assert (multiplesBebidas))
; )

;;;;;;;;;; FINAL ;;;;;;;;;;;;;;;;
; SALIENCE -10

(defrule getMenu
    (declare (salience -10))


)

; (defrule getBebidas
	; (declare (salience 40))
	; =>
	; (bind ?bebidas (find-all-instances ((?inst Bebida)) TRUE )) ;;;(> (?inst:Precio) 0)	
	; (printout t ?bebidas)	
; )

