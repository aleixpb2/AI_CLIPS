;;;; ONTOLOGIA

; Sun May 07 14:59:20 CEST 2017
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
;+		(comment "Por ahora no requerido")
		(type STRING)
;+		(cardinality 0 1)
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
	(single-slot Alcoholica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot TipoEvento
		(type SYMBOL)
		(allowed-values Familiar_comida Familiar_cena Congreso_comida Congreso_cena)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Complejo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot TipoIngred
		(type SYMBOL)
		(allowed-values Carne Pescado Vegetal)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Ligero
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot IngredientesPlato
		(type INSTANCE)
;+		(allowed-classes)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Clasico
;+		(comment "Clasico/Moderno")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PrecioMin
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Catering_Class0
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Precio
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot PlatosNoCompatibles
		(type INSTANCE)
;+		(allowed-classes Plato)
		(create-accessor read-write))
	(multislot BebidasNoCompatibles
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(create-accessor read-write))
	(single-slot Sibarita
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PrecioMax
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioMenu
;+		(comment "Valor calculado")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Vegetariano
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
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
	(single-slot NumComs
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Estacion
		(type SYMBOL)
		(allowed-values Primavera Verano Otono Invierno)
		(cardinality 1 4)
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
	(single-slot TipoEvento
		(type SYMBOL)
		(allowed-values Familiar_comida Familiar_cena Congreso_comida Congreso_cena)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioMax
		(type FLOAT)
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
	(single-slot Complejo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Estacion
		(type SYMBOL)
		(allowed-values Primavera Verano Otono Invierno)
		(cardinality 1 4)
		(create-accessor read-write))
	(single-slot TipoPlato
;+		(comment "Por ahora no requerido")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot PlatosNoCompatibles
		(type INSTANCE)
;+		(allowed-classes Plato)
		(create-accessor read-write))
	(single-slot Ligero
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot LugarPlato
;+		(comment "Lugar donde el plato es tipico en caso de que lo sea")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Vegetariano
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot BebidasNoCompatibles
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(create-accessor read-write))
	(single-slot Clasico
;+		(comment "Clasico/Moderno")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Sibarita
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
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
	(single-slot Precio
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Alcoholica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; INSTANCIAS

(definstances instancias 


; Sun May 07 14:59:20 CEST 2017
; 
;+ (version "3.5")
;+ (build "Build 663")

([Catering_Class11] of  Bebida

	(Nombre "Agua")
	(Precio 1.0))

([Catering_Class12] of  Bebida

	(Nombre "Coca Cola")
	(Precio 1.2))

([Catering_Class4] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Vino")
	(Precio 3.5))

([Catering_Class5] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Filete")
	(OrdenPlato Segundo)
	(Precio 7.0))

([Catering_Class6] of  Plato

	(Caliente TRUE)
	(Clasico FALSE)
	(Complejo TRUE)
	(Estacion Primavera Otono Invierno)
	(Nombre "Risoto")
	(OrdenPlato Primero)
	(Precio 8.0)
	(Vegetariano TRUE))

([Catering_Class7] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Pizza 4 quesos")
	(OrdenPlato Primero Segundo)
	(Precio 5.0)
	(Vegetariano TRUE))

([Catering_Class8] of  Plato

	(Clasico TRUE)
	(Estacion Verano Primavera)
	(Ligero TRUE)
	(Nombre "Helado de sabores")
	(OrdenPlato Postre)
	(Precio 2.0)
	(Sibarita FALSE)
	(Vegetariano TRUE))

([Catering_Class9] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Macarrones con pesto")
	(OrdenPlato Primero)
	(Precio 6.0)
	(Vegetariano TRUE))


	
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
   (bind ?response (ask-question ?question Si si No no S s N n))
   (if (or (eq ?response Si) (eq ?response si) (eq ?response S) (eq ?response s))
       then TRUE 
       else FALSE))
	   
(deffunction esComida (?question)
   (bind ?response (ask-question ?question Comida comida Cena cena))
   (if (or (eq ?response Comida) (eq ?response comida))
       then TRUE 
       else FALSE)
)
	   
(deffunction esFamiliar (?question)
   (bind ?response (ask-question ?question Familiar familiar Congreso congreso))
   (if (or (eq ?response Familiar) (eq ?response familiar))
       then TRUE 
       else FALSE)
)
	   
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

(defrule preguntar-vegetariano
 (declare (salience 10))
 =>
 (if (yes-or-no-p "¿Quieres un menu vegetariano?")
 then (assert (vegetariano si))
 else (assert (vegetariano no)) 
 )
 )

;;;;;;;;;;;;; CONCLUSIONS ;;;;;;;;;;;;;;
; NO SALIENCE
; DEFAULTS:
; simple
;;;;;;;;; una bebida
; denso
; no vegetariano

(defrule complejidad
   (numComs ?nC)
   =>
   (if (< ?nC 50)
   then (assert (complejo si))
   else (assert (complejo no))
   )
)

(defrule ligereza
   (tipoEvento ?te)
   =>
   (if(or ( eq ?te Familiar_cena) (eq ?te Congreso_cena) )
   then (assert (ligero si))
   else (assert (ligero no))
   )
)



;;; Comented for the prototype
; (defrule multiplesBebidas
   ; (complejo)
   ; =>
   ; (assert (multiplesBebidas))
; )

;;;;;;;;;; FINAL ;;;;;;;;;;;;;;;;
; SALIENCE -10

(defrule getMenus
   (declare (salience -10))
   (complejo ?c)
   (ligero ?l)
   (vegetariano ?v)
   =>
   (if (eq ?c si)
    then (bind ?bebidas (find-all-instances ((?inst Bebida)) (eq ?inst:Alcoholica TRUE) ))
    else (bind ?bebidas (find-all-instances ((?inst Bebida)) TRUE ))
    )
    
    (if (eq ?l si)
    then 
        (if (eq ?v si)
          then (bind ?platos (find-all-instances ((?inst Plato)) (and (eq ?inst:Ligero TRUE) (eq ?inst:Vegetariano TRUE) )))
          else (bind ?platos (find-all-instances ((?inst Plato)) (eq ?inst:Ligero TRUE) ))
        ) 
    else(
        if (eq ?v si)
        then (bind ?platos (find-all-instances ((?inst Plato)) (and (eq ?inst:Ligero FALSE) (eq ?inst:Vegetariano TRUE) )))
        else (bind ?platos (find-all-instances ((?inst Plato)) (eq ?inst:Ligero FALSE) ))
        )
    )    
    
    
       
   (printout t ?bebidas)
   (printout t ?platos)   

)




; (defrule getBebidas
	; (declare (salience 40))
	; =>
	; (bind ?bebidas (find-all-instances ((?inst Bebida)) TRUE )) ;;;(> (?inst:Precio) 0)	
	; (printout t ?bebidas)	
; )

