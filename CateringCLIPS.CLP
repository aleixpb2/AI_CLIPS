;;;; ONTOLOGIA

; Wed May 10 18:20:34 CEST 2017
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
;+		(allowed-classes)
		(cardinality 3 3)
		(create-accessor read-write))
	(multislot OrdenPlato
		(type SYMBOL)
		(allowed-values Primero Segundo Postre)
		(cardinality 1 3)
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

; Wed May 10 18:20:34 CEST 2017
; 
;+ (version "3.5")
;+ (build "Build 663")

([Catering_Class10000] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Ensalada")
	(OrdenPlato Primero)
	(Precio 4.0)
	(Vegetariano TRUE))

([Catering_Class10001] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Tortilla de patatas")
	(OrdenPlato Segundo)
	(Precio 6.0)
	(Vegetariano TRUE))

([Catering_Class10002] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Estofado")
	(OrdenPlato Segundo)
	(Precio 10.0))

([Catering_Class10003] of  Plato

	(Caliente TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Hamburguesa de tofu")
	(OrdenPlato Segundo)
	(Precio 8.0)
	(Vegetariano TRUE))

([Catering_Class10004] of  Plato

	(Clasico TRUE)
	(Estacion Verano Primavera Otono Invierno)
	(Ligero TRUE)
	(Nombre "Flan")
	(OrdenPlato Postre)
	(Precio 3.0)
	(Sibarita FALSE)
	(Vegetariano TRUE))

([Catering_Class10005] of  Plato

	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Verano Primavera Otono Invierno)
	(Ligero FALSE)
	(Nombre "Pastel de queso")
	(OrdenPlato Postre)
	(Precio 9.0)
	(Sibarita FALSE)
	(Vegetariano TRUE))

([Catering_Class10006] of  Plato

	(Caliente TRUE)
	(Clasico FALSE)
	(Complejo TRUE)
	(Estacion Verano Primavera Otono Invierno)
	(Ligero FALSE)
	(Nombre "Couland de chocolate")
	(OrdenPlato Postre)
	(Precio 9.0)
	(Sibarita TRUE)
	(Vegetariano TRUE))

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
	(PlatosNoCompatibles [Catering_Class7])
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
;;* DEFTEMPLATES *
;;**************** 
;numMenu1 = barat
;numMenu2 = intermig
;numMenu3 = car
(deftemplate menu
	(slot numMenu (type INTEGER))
	(slot primer-plato)
	(slot segundo-plato)
	(slot postre)
	(multislot lista-bebidas))
	
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

(deffunction random-elem ( ?li )
   ;(bind ?li (create$ ?li))
   (bind ?max (length ?li))
   (bind ?r (random 1 ?max))
   (bind ?ins (nth$ ?r ?li))
   (return ?ins)
)

(deffunction calcularPrecio (?p1 ?p2 ?p3 ?b)
	(bind ?precio (+ (send ?p1 get-Precio) (send ?p2 get-Precio) (send ?p3 get-Precio) (send ?b get-Precio)))
)      

(deffunction getMenu (?nMenu ?c ?l ?v ?pMin ?pMax)

   (bind ?preuAcum 0)
  
   (if (eq ?c si) ; si complejo (poca gente) cualquier bebida
    then (bind ?bebidas (find-all-instances ((?inst Bebida)) TRUE ))
    ; si no complejo (mucha gente) no alcoholicas
    else (bind ?bebidas (find-all-instances ((?inst Bebida)) (not (eq ?inst:Alcoholica TRUE)) ))
    )
    
    (if (eq ?l si)
    then 
        (if (eq ?v si)
          then (bind ?platos (find-all-instances ((?inst Plato)) (and (eq ?inst:Ligero TRUE) (eq ?inst:Vegetariano TRUE) )))
          else (bind ?platos (find-all-instances ((?inst Plato)) (eq ?inst:Ligero TRUE) ))
        ) 
    else(
        if (eq ?v si)
        then (bind ?platos (find-all-instances ((?inst Plato)) (eq ?inst:Vegetariano TRUE) ))
        else (bind ?platos (find-all-instances ((?inst Plato)) TRUE ))
        )
    )
    
	(bind ?intrvPrecio (- ?pMax ?pMin))

	;Definicio dels intervals dels menus
	(bind ?minIntrv1 ?pMin)
	(bind ?maxIntrv1 (+ ?pMin (* 0.3333333 ?intrvPrecio)))
	(bind ?minIntrv2 ?maxIntrv1)
	(bind ?maxIntrv2 (+ ?pMin (* 0.6666667 ?intrvPrecio)))
	(bind ?minIntrv3 ?maxIntrv2)
	(bind ?maxIntrv3 ?pMax)	
	
   (printout t crlf)
   (printout t "Menú " ?nMenu crlf)
   (printout t "Bebida: " )
   (if (not (eq ?c si))
    then (bind ?bebida (random-elem ?bebidas) )
		 (bind ?preuAcum (+ ?preuAcum (send ?bebida get-Precio)))
	)
   (printout t (send ?bebida get-Nombre) crlf)
   
   (bind ?primeros (create$ ))   
   (loop-for-count (?i 1 (length ?platos))     
		(bind ?var (nth$ ?i ?platos))
		(bind ?ordenes (send ?var get-OrdenPlato))
		(bind ?preuAct (send ?var get-Precio))
		(if (and (member Primero ?ordenes) (>= ?preuAct (* 0.4 ?minIntrv1)) (<= ?preuAct (* 0.4 ?maxIntrv1)) (eq ?nMenu 1))
			then(bind ?primeros (insert$ ?primeros 1 ?var))
		)
		(if (and (member Primero ?ordenes) (>= ?preuAct (* 0.4 ?minIntrv2)) (<= ?preuAct (* 0.4 ?maxIntrv2)) (eq ?nMenu 2))
			then(bind ?primeros (insert$ ?primeros 1 ?var))
		)
		(if (and (member Primero ?ordenes) (>= ?preuAct (* 0.4 ?minIntrv3)) (<= ?preuAct (* 0.4 ?maxIntrv3)) (eq ?nMenu 3))
			then(bind ?primeros (insert$ ?primeros 1 ?var))
		)
	)
	(printout t ?primeros crlf)
   
   (printout t "Primero: " )
   (bind ?primero (random-elem ?primeros) ) 
   (bind ?preuAcum (+ ?preuAcum (send ?primero get-Precio)))
   (printout t (send ?primero get-Nombre) crlf)   
  
   (bind ?segundos (create$ ))   
   (loop-for-count (?i 1 (length ?platos))     
		(bind ?var (nth$ ?i ?platos))
		(bind ?ordenes (send ?var get-OrdenPlato))
		(bind ?preuAct (send ?var get-Precio))
		(if (eq ?c si)
		then ()		
		)
		;(bind ?preuAct (+ (send ?var:bebidaAsociada get-Precio)(send ?var get-Precio)))
		(if (and (member Segundo ?ordenes) (>= ?preuAct (* 0.4 ?minIntrv1)) (<= ?preuAct (* 0.4 ?maxIntrv1)) (eq ?nMenu 1))
			then(bind ?segundos (insert$ ?segundos 1 ?var)
		)			
		)
		(if (and (member Segundo ?ordenes) (>= ?preuAct (* 0.4 ?minIntrv2)) (<= ?preuAct (* 0.4 ?maxIntrv2)) (eq ?nMenu 2))
			then(bind ?segundos (insert$ ?segundos 1 ?var)			
		)
		)
		(if (and (member Segundo ?ordenes) (>= ?preuAct (* 0.4 ?minIntrv3)) (<= ?preuAct (* 0.4 ?maxIntrv3)) (eq ?nMenu 3))
			then(bind ?segundos (insert$ ?segundos 1 ?var)
		)
		)
	)
	
   (printout t "Segundo: " )
   (bind ?segundo (random-elem ?segundos) ) 
   (bind ?preuAcum (+ ?preuAcum (send ?segundo get-Precio)))
   (printout t (send ?segundo get-Nombre) crlf)
   
   (bind ?postres (create$ ))   
   (loop-for-count (?i 1 (length ?platos))     
		(bind ?var (nth$ ?i ?platos))
		(bind ?ordenes (send ?var get-OrdenPlato))
		(bind ?preuAct (send ?var get-Precio))
		(if (and (member Postre ?ordenes) (>= ?preuAct (* 0.2 ?minIntrv1)) (<= ?preuAct (* 0.2 ?maxIntrv1)) (eq ?nMenu 1))
			then(bind ?postres (insert$ ?postres 1 ?var))
		)
		(if (and (member Postre ?ordenes) (>= ?preuAct (* 0.2 ?minIntrv2)) (<= ?preuAct (* 0.2 ?maxIntrv2))  (eq ?nMenu 2))
			then(bind ?postres (insert$ ?postres 1 ?var))
		)
		(if (and (member Postre ?ordenes) (>= ?preuAct (* 0.2 ?minIntrv3)) (<= ?preuAct (* 0.2 ?maxIntrv3))  (eq ?nMenu 3))
			then(bind ?postres (insert$ ?postres 1 ?var))
		)
	)
	
   (printout t "Postre: " )
   (bind ?postre (random-elem ?postres) ) 
   (bind ?preuAcum (+ ?preuAcum (send ?postre get-Precio)))
   (printout t (send ?postre get-Nombre) crlf)
   (assert (menu (numMenu ?nMenu) (primer-plato ?primero) (segundo-plato ?segundo) (postre ?postre) (lista-bebidas ?bebida)))
   (printout t (calcularPrecio ?primero ?segundo ?postre ?bebida))
   ;(bind ?precio (send ?postre get-Precio))
   ;(printout t ?precio)
  )
 
;;;;;;;;;;;;;;  QUERIES ;;;;;;;;;;;;;;;;
; SALIENCE = 10

(defrule preguntar-tipo-evento
 (declare (salience 10))
 => 
 (if (esComida "żEs una comida o una cena?(Comida/Cena)")
  then (if (esFamiliar "żEs un evento familiar o un congreso?(Familiar/Congreso)")
		  then (assert (tipoEvento Familiar_comida))
		  else (assert (tipoEvento Congreso_comida))
          )
  else (if (esFamiliar "żEs un evento familiar o un congreso?(Familiar/Congreso)")
		  then (assert (tipoEvento Familiar_cena))
		  else (assert (tipoEvento Congreso_cena))
          )
  )
)

(defrule preguntar-estacion
 (declare (salience 10))
 =>
 (printout t "żEn qué estación será el evento?" crlf)
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
 (printout t "żCuantos comensales?")
 (bind ?numComs (read))
 (assert (numComs ?numComs)) 
)

(defrule preguntar-precio-max
 (declare (salience 10))
 =>
 (printout t "żCual es el maximo presupuesto por persona?")
 (bind ?precioMax (read))
 (assert (precioMax ?precioMax)) 
)

(defrule preguntar-precio-min
 (declare (salience 10))
 =>
 (printout t "żCual es el minimo presupuesto por persona?")
 (bind ?precioMin (read))
 (assert (precioMin ?precioMin)) 
)

(defrule preguntar-vegetariano
 (declare (salience 10))
 =>
 (if (yes-or-no-p "żQuieres un menu vegetariano?(si/no)")
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
;(defglobal <var>)
; Preus dels menus:
; Barat -> sum(plats >= minim)
; Intermig -> sum (plats >= minim <= maxim)
; Car ->  sum (plats <= maxim)

(defrule getMenus
   (declare (salience -10))
   (complejo ?c)
   (ligero ?l)
   (vegetariano ?v)
   (precioMin ?pMin)
   (precioMax ?pMax)
	=>
	(bind ?aux (getMenu 1 ?c ?l ?v ?pMin ?pMax))
	(bind ?aux (getMenu 2 ?c ?l ?v ?pMin ?pMax))
	(bind ?aux (getMenu 3 ?c ?l ?v ?pMin ?pMax))
)

; (defrule getBebidas
	; (declare (salience 40))
	; =>
	; (bind ?bebidas (find-all-instances ((?inst Bebida)) TRUE )) ;;;(> (?inst:Precio) 0)	
	; (printout t ?bebidas)	
; )
