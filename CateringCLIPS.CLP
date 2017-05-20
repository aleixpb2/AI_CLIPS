;;;; ONTOLOGIA

; Fri May 19 20:13:41 CEST 2017
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
	(multislot Estacion
		(type SYMBOL)
		(allowed-values Primavera Verano Otono Invierno)
		(cardinality 1 4)
		(create-accessor read-write))
	(single-slot Complejo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot PlatosNoCompatibles
		(type INSTANCE)
;+		(allowed-classes Plato)
		(create-accessor read-write))
	(single-slot TipoPlato
;+		(comment "Por ahora no requerido")
		(type STRING)
;+		(cardinality 0 1)
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
	(multislot BebidasNoCompatibles
		(type INSTANCE)
;+		(allowed-classes Bebida)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Sibarita
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Clasico
;+		(comment "Clasico/Moderno")
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
	(single-slot Nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Precio
		(type FLOAT)
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


; Fri May 19 20:13:41 CEST 2017
; 
;+ (version "3.5")
;+ (build "Build 663")

([Catering_Class0] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Vol d'Anima de Raimat (Vino blanco, D.O. Costers del Segre)")
	(Precio 15.9))

([Catering_Class1] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Camino del puerto (Vino blanco, D.O. Rueda)")
	(Precio 13.9))

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
	(LugarPlato "España")
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
	(Precio 10.0)
	(TipoPlato "Estofado"))

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
	(LugarPlato "Francia")
	(Nombre "Coulant de chocolate")
	(OrdenPlato Postre)
	(Precio 9.0)
	(Sibarita TRUE)
	(Vegetariano TRUE))

([Catering_Class11] of  Bebida

	(Nombre "Agua")
	(Precio 1.0))

([Catering_Class12] of  Bebida

	(Nombre "Coca Cola (Soda)")
	(Precio 2.0))

([Catering_Class2] of  Bebida

	(Nombre "Warsteiner Sin Alcohol (Cerveza)")
	(Precio 3.5))

([Catering_Class20000] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero FALSE)
	(Nombre "Canelones de setas")
	(OrdenPlato Segundo Primero)
	(PlatosNoCompatibles [Catering_Class20000])
	(Precio 8.0)
	(Vegetariano TRUE))

([Catering_Class20001] of  Plato

	(Caliente TRUE)
	(Complejo TRUE)
	(Estacion Otono Invierno)
	(Ligero TRUE)
	(Nombre "Crema de calabaza")
	(OrdenPlato Primero)
	(Precio 7.0)
	(Vegetariano TRUE))

([Catering_Class20002] of  Plato

	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Manzana")
	(OrdenPlato Postre)
	(Precio 1.0)
	(Vegetariano TRUE))

([Catering_Class20004] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Croquetas de espinacas")
	(OrdenPlato Segundo)
	(Precio 6.0)
	(Vegetariano TRUE))

([Catering_Class20005] of  Plato

	(Caliente FALSE)
	(Clasico FALSE)
	(Complejo TRUE)
	(Estacion Primavera Verano)
	(Ligero TRUE)
	(LugarPlato "Francia")
	(Nombre "Vichisoise")
	(OrdenPlato Primero)
	(Precio 7.0)
	(Sibarita TRUE)
	(Vegetariano TRUE))

([Catering_Class20006] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Melocotón en almíbar")
	(OrdenPlato Postre)
	(Precio 5.0))

([Catering_Class20007] of  Plato

	(Caliente TRUE)
	(Complejo TRUE)
	(Estacion Primavera Otono Invierno Verano)
	(LugarPlato "Francia")
	(Nombre "Fondue")
	(OrdenPlato Primero Segundo)
	(PlatosNoCompatibles [Catering_Class20007])
	(Precio 15.0)
	(Sibarita TRUE)
	(Vegetariano TRUE))

([Catering_Class20008] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "India")
	(Nombre "Pollo al cury")
	(OrdenPlato Segundo)
	(PlatosNoCompatibles [Catering_Class20007])
	(Precio 10.0)
	(TipoPlato "Carne"))

([Catering_Class20009] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "Catalunya")
	(Nombre "Trinxat de la cerdanya")
	(OrdenPlato Primero)
	(Precio 10.0)
	(Vegetariano TRUE))

([Catering_Class20010] of  Plato

	(Caliente TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Hamburguesa con patatas")
	(OrdenPlato Segundo)
	(Precio 7.0)
	(TipoPlato "Carne"))

([Catering_Class20011] of  Plato

	(Caliente TRUE)
	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "Italia")
	(Nombre "Lasagna")
	(OrdenPlato Primero Segundo)
	(PlatosNoCompatibles [Catering_Class20011])
	(Precio 12.0)
	(TipoPlato "Carne"))

([Catering_Class20012] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Pollo rebozado")
	(OrdenPlato Segundo)
	(Precio 5.0)
	(TipoPlato "Carne"))

([Catering_Class20013] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Iogur")
	(OrdenPlato Postre)
	(Precio 1.0)
	(Vegetariano TRUE))

([Catering_Class20014] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Raimat Chardonnay (Cava)")
	(Precio 18.2))

([Catering_Class20015] of  Bebida

	(Nombre "Fanta de limon (Soda)")
	(Precio 2.0))

([Catering_Class20016] of  Bebida

	(Nombre "Vichy Catalan (Agua con gas)")
	(Precio 1.2))

([Catering_Class20017] of  Bebida

	(Alcoholica FALSE)
	(Nombre "Zumo de Naranja")
	(Precio 3.0))

([Catering_Class20018] of  Plato

	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Arroz negro")
	(OrdenPlato Primero)
	(Precio 15.0)
	(Sibarita TRUE)
	(Vegetariano TRUE))

([Catering_Class20019] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Ensalada de pasta")
	(OrdenPlato Primero)
	(Precio 8.0)
	(Vegetariano TRUE))

([Catering_Class20020] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano)
	(Ligero TRUE)
	(LugarPlato "España")
	(Nombre "Melón con jamon")
	(OrdenPlato Primero)
	(Precio 5.0))

([Catering_Class20021] of  Plato

	(Estacion Primavera Verano Otono Invierno)
	(Ligero FALSE)
	(Nombre "Huevos rellenos con atun")
	(OrdenPlato Primero Segundo)
	(PlatosNoCompatibles [Catering_Class20021])
	(Precio 6.0))

([Catering_Class20022] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "Italia")
	(Nombre "Espaguetis a la bolognesa")
	(OrdenPlato Primero)
	(Precio 10.0))

([Catering_Class20023] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "Italia")
	(Nombre "Raviolis a la carbonara")
	(OrdenPlato Primero)
	(Precio 10.0))

([Catering_Class20024] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Otono Invierno)
	(Nombre "Lentejas estofadas")
	(OrdenPlato Primero)
	(Precio 8.0)
	(TipoPlato "Estafado")
	(Vegetariano TRUE))

([Catering_Class20025] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Albondigas con guisantes")
	(OrdenPlato Segundo)
	(Precio 6.0)
	(TipoPlato "Carne"))

([Catering_Class20026] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "Valencia")
	(Nombre "Paella de valencia")
	(OrdenPlato Segundo)
	(PlatosNoCompatibles
		[Catering_Class20019]
		[Catering_Class20022]
		[Catering_Class9]
		[Catering_Class20023]
		[Catering_Class6])
	(Precio 20.0))

([Catering_Class20027] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Merluza al vapor")
	(OrdenPlato Segundo)
	(Precio 15.0)
	(TipoPlato "Pescado"))

([Catering_Class20028] of  Plato

	(Caliente FALSE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Nuggets de pollo")
	(OrdenPlato Segundo)
	(Precio 5.0))

([Catering_Class20029] of  Plato

	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "España")
	(Nombre "Arroz con leche")
	(OrdenPlato Postre)
	(PlatosNoCompatibles
		[Catering_Class20029]
		[Catering_Class20018]
		[Catering_Class20026]
		[Catering_Class6])
	(Precio 3.0)
	(Sibarita TRUE)
	(Vegetariano TRUE))

([Catering_Class20030] of  Plato

	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Queso con membrillo")
	(OrdenPlato Postre)
	(Precio 3.0)
	(Sibarita TRUE)
	(Vegetariano TRUE))

([Catering_Class20031] of  Plato

	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "Italia")
	(Nombre "Tiramisu")
	(OrdenPlato Postre)
	(Precio 5.0)
	(Sibarita TRUE)
	(Vegetariano TRUE))

([Catering_Class20032] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Ensaladilla rusa")
	(OrdenPlato Primero)
	(Precio 6.0)
	(Vegetariano TRUE))

([Catering_Class20033] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Tabla de quesos")
	(OrdenPlato Primero)
	(Precio 20.0)
	(Sibarita TRUE)
	(Vegetariano TRUE))

([Catering_Class20034] of  Plato

	(Caliente TRUE)
	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Salmón con patatas")
	(OrdenPlato Segundo)
	(PlatosNoCompatibles [Catering_Class20035])
	(Precio 18.0)
	(Sibarita TRUE)
	(TipoPlato "Pescado"))

([Catering_Class20035] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Sopa de pescado")
	(OrdenPlato Primero)
	(Precio 8.0)
	(Sibarita TRUE)
	(TipoPlato "Sopa"))

([Catering_Class20036] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano)
	(Ligero TRUE)
	(Nombre "Ensalada de lentejas")
	(OrdenPlato Primero)
	(Precio 5.0)
	(Vegetariano TRUE))

([Catering_Class20037] of  Plato

	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Verano)
	(LugarPlato "Andalucia")
	(Nombre "Salmorejo")
	(OrdenPlato Primero)
	(Precio 10.0)
	(TipoPlato "Sopa"))

([Catering_Class20038] of  Plato

	(Clasico TRUE)
	(Complejo FALSE)
	(Estacion Primavera Verano)
	(Ligero TRUE)
	(LugarPlato "Andalucia")
	(Nombre "Gazpacho")
	(OrdenPlato Primero)
	(Precio 5.0)
	(Sibarita TRUE)
	(TipoPlato "Sopa")
	(Vegetariano TRUE))

([Catering_Class20040] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Taittinger Brut Réserve (Champagne)")
	(Precio 52.2))

([Catering_Class20041] of  Bebida

	(Nombre "Nestea")
	(Precio 3.0))

([Catering_Class20042] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(LugarPlato "China")
	(Nombre "Noodles")
	(OrdenPlato Primero)
	(Precio 6.0))

([Catering_Class20043] of  Plato

	(Clasico FALSE)
	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(LugarPlato "Peru")
	(Nombre "Ceviche de pescado")
	(OrdenPlato Primero)
	(Precio 18.0)
	(Sibarita TRUE)
	(TipoPlato "Pescado"))

([Catering_Class20045] of  Plato

	(Caliente FALSE)
	(Clasico FALSE)
	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(LugarPlato "Marruecos")
	(Nombre "Cuscus")
	(OrdenPlato Primero)
	(Precio 12.0)
	(Sibarita TRUE)
	(Vegetariano TRUE))

([Catering_Class20046] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Macedonia")
	(OrdenPlato Postre)
	(Precio 10.0)
	(Vegetariano TRUE))

([Catering_Class3] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Warsteiner Barril (Cerveza)")
	(Precio 2.35))

([Catering_Class30004] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Cèrvoles Colors (Vino tinto, D.O. Costers del Segre)")
	(Precio 16.7))

([Catering_Class30005] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Chivite Las Fincas Lias (Vino rosado, Tierra Protegida de las Tres Riberas)")
	(Precio 19.5))

([Catering_Class30006] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Gran Feudo Edicion Roble (Vino tinto, D.O. Ribera del Duero)")
	(Precio 17.25))

([Catering_Class30007] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Viña Salceda Reserva (Vino tinto, D.O.C. Rioja)")
	(Precio 23.3))

([Catering_Class30008] of  Bebida

	(Nombre "Sprite (Soda)")
	(Precio 2.0))

([Catering_Class30009] of  Bebida

	(Nombre "San Pelegrino (Agua con gas)")
	(Precio 1.6))

([Catering_Class30010] of  Bebida

	(Nombre "Bitter Kas")
	(Precio 1.8))

([Catering_Class30011] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Anna de Codorniu Blanc de Blancs (Cava)")
	(Precio 25.35))

([Catering_Class30012] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Viña Sol (Vino tinto)")
	(Precio 12.2))

([Catering_Class30013] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Sangría (Vino tinto)")
	(Precio 6.0))

([Catering_Class30014] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Sangría (Cava)")
	(Precio 8.0))

([Catering_Class30015] of  Bebida

	(Nombre "Ginger Ale (Soda)")
	(Precio 1.8))

([Catering_Class30016] of  Bebida

	(Nombre "Fanta de naranja (Soda)")
	(Precio 2.0))

([Catering_Class30017] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Vega Sicilia \"Único\" (Vino tinto)")
	(Precio 220.0))

([Catering_Class30018] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Finc Dofi (Vino tinto, D.O.Q. Priorat)")
	(Precio 82.5))

([Catering_Class30019] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Taittinger Brut Prestige Rosé (Champagne rosado)")
	(Precio 46.3))

([Catering_Class30020] of  Plato

	(BebidaAsociada [Catering_Class1])
	(Complejo TRUE)
	(Estacion Primavera Verano)
	(Ligero TRUE)
	(LugarPlato "España")
	(Nombre "Salpicón de bogavante")
	(OrdenPlato Primero)
	(Precio 42.2)
	(Sibarita TRUE)
	(TipoPlato "Marisco"))

([Catering_Class30021] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Invierno Otono)
	(LugarPlato "Galicia")
	(Nombre "Pulpo a la gallega")
	(OrdenPlato Primero)
	(Precio 14.0)
	(TipoPlato "Pescado"))

([Catering_Class30022] of  Plato

	(Clasico TRUE)
	(Estacion Verano Otono Invierno Primavera)
	(Ligero TRUE)
	(Nombre "Steak tartar")
	(OrdenPlato Primero Segundo)
	(Precio 16.0)
	(Sibarita TRUE)
	(TipoPlato "Carne"))

([Catering_Class30023] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "Valencia")
	(Nombre "Fideos negros con sepia")
	(OrdenPlato Primero Segundo)
	(Precio 19.4))

([Catering_Class30024] of  Plato

	(Caliente TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "Valencia")
	(Nombre "\"Rossejat\" de fideos")
	(OrdenPlato Primero Segundo)
	(Precio 18.65))

([Catering_Class30025] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(LugarPlato "Catalunya")
	(Nombre "Escalivada")
	(OrdenPlato Primero)
	(Precio 10.95)
	(Vegetariano TRUE))

([Catering_Class30026] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Verano Primavera)
	(LugarPlato "Mallorca")
	(Nombre "Esqueixada")
	(OrdenPlato Primero)
	(Precio 18.8)
	(Sibarita TRUE)
	(TipoPlato "Pescado"))

([Catering_Class30027] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Otono Invierno)
	(LugarPlato "Catalunya")
	(Nombre "Espalda de cabrito al horno")
	(OrdenPlato Segundo)
	(Precio 32.5)
	(Sibarita TRUE)
	(TipoPlato "Carne"))

([Catering_Class30028] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Otono Invierno)
	(LugarPlato "Catalunya")
	(Nombre "Suquet de rape con patatas")
	(OrdenPlato Segundo)
	(Precio 26.2)
	(TipoPlato "Pescado"))

([Catering_Class30029] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "País Vasco")
	(Nombre "Pies de cerdo deshuesados con samfaina")
	(OrdenPlato Segundo)
	(Precio 14.15)
	(Sibarita TRUE)
	(TipoPlato "Carne"))

([Catering_Class30030] of  Plato

	(Caliente TRUE)
	(Clasico FALSE)
	(Complejo TRUE)
	(Estacion Invierno Otono)
	(LugarPlato "País Vasco")
	(Nombre "Kokotxas en salsa verde")
	(OrdenPlato Segundo)
	(Precio 18.0)
	(Sibarita TRUE)
	(TipoPlato "Pescado"))

([Catering_Class30031] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Lenguado a la planxa")
	(OrdenPlato Segundo)
	(Precio 22.0)
	(TipoPlato "Pescado"))

([Catering_Class30032] of  Plato

	(Caliente TRUE)
	(Estacion Primavera Verano)
	(Ligero TRUE)
	(Nombre "Alcachofas fritas")
	(OrdenPlato Primero)
	(Precio 9.0)
	(Vegetariano TRUE))

([Catering_Class30033] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano Otono)
	(Ligero TRUE)
	(LugarPlato "Catalunya")
	(Nombre "Xatonada")
	(OrdenPlato Primero)
	(Precio 11.0)
	(Sibarita TRUE)
	(TipoPlato "Pescado"))

([Catering_Class30034] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Otono Invierno)
	(Ligero TRUE)
	(LugarPlato "Galicia")
	(Nombre "Zamburiñas al horno")
	(OrdenPlato Segundo)
	(Precio 14.0)
	(Sibarita TRUE)
	(TipoPlato "Marisco"))

([Catering_Class30035] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Invierno)
	(Ligero TRUE)
	(Nombre "Esparragos trigeros a la plancha")
	(OrdenPlato Primero)
	(Precio 9.0)
	(Vegetariano TRUE))

([Catering_Class30036] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "Pais Vasco")
	(Nombre "Tronco de merluza a la Santurce")
	(OrdenPlato Segundo)
	(Precio 15.5)
	(TipoPlato "Pescado"))

([Catering_Class30037] of  Plato

	(Caliente TRUE)
	(Complejo TRUE)
	(Estacion Primavera Otono Invierno)
	(Nombre "Bacalao \"a la llauna\"")
	(OrdenPlato Segundo)
	(Precio 21.0)
	(Sibarita TRUE)
	(TipoPlato "Pescado"))

([Catering_Class30038] of  Plato

	(Clasico FALSE)
	(Complejo TRUE)
	(Estacion Verano Primavera Otono Invierno)
	(LugarPlato "Japón")
	(Nombre "Tataki de atún con salmorejo")
	(OrdenPlato Segundo)
	(Precio 17.0)
	(Sibarita TRUE)
	(TipoPlato "Pescado"))

([Catering_Class30039] of  Plato

	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(LugarPlato "Japon")
	(Nombre "Tartar de atún con aguacate")
	(OrdenPlato Primero Segundo)
	(Precio 14.0)
	(Sibarita TRUE)
	(TipoPlato "Pescado"))

([Catering_Class30040] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(LugarPlato "Francia")
	(Nombre "Lenguado Menieur")
	(OrdenPlato Segundo Primero)
	(Precio 25.0)
	(Sibarita TRUE)
	(TipoPlato "Pescado"))

([Catering_Class30041] of  Plato

	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "Catalunya")
	(Nombre "Carpaccio de rape, salmon y aguacate")
	(OrdenPlato Primero)
	(Precio 14.5)
	(Sibarita TRUE)
	(TipoPlato "Pescado"))

([Catering_Class30042] of  Plato

	(Complejo TRUE)
	(Estacion Primavera Verano Otono)
	(Ligero TRUE)
	(LugarPlato "Brasil")
	(Nombre "Carpaccio de gambas con vinegreta de citricos")
	(OrdenPlato Primero)
	(Precio 23.0)
	(Sibarita TRUE)
	(TipoPlato "Pescado"))

([Catering_Class30043] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo FALSE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero FALSE)
	(LugarPlato "Malaga")
	(Nombre "Chipirones a la malagueña")
	(OrdenPlato Primero)
	(Precio 18.0))

([Catering_Class30044] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero FALSE)
	(LugarPlato "Reino Unido")
	(Nombre "Fish & Chips")
	(OrdenPlato Primero Segundo)
	(Precio 6.0)
	(TipoPlato "Pescado"))

([Catering_Class30045] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(LugarPlato "Galicia")
	(Nombre "Chuleton de ternera")
	(OrdenPlato Segundo)
	(Precio 19.0)
	(TipoPlato "Carne"))

([Catering_Class30046] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero FALSE)
	(LugarPlato "Estados Unidos")
	(Nombre "Entrecot de Nebraska Black Angus")
	(OrdenPlato Segundo)
	(Precio 22.0)
	(TipoPlato "Carne"))

([Catering_Class30047] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "Italia")
	(Nombre "Costillas de cabrito a la milanesa")
	(OrdenPlato Segundo)
	(Precio 17.0)
	(TipoPlato "Carne"))

([Catering_Class30048] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "Austria")
	(Nombre "Wienner Schnitzel")
	(OrdenPlato Segundo Primero)
	(Precio 15.0)
	(TipoPlato "Carne"))

([Catering_Class30049] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(LugarPlato "Alemania")
	(Nombre "Sauerkraut")
	(OrdenPlato Primero Segundo)
	(Precio 12.0)
	(Vegetariano TRUE))

([Catering_Class30050] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "Francia")
	(Nombre "Ragoût")
	(OrdenPlato Segundo)
	(Precio 12.0)
	(Sibarita TRUE)
	(TipoPlato "Carne"))

([Catering_Class30051] of  Plato

	(Caliente TRUE)
	(Complejo TRUE)
	(Estacion Otono Primavera Invierno)
	(Nombre "Caldereta de langosta")
	(OrdenPlato Segundo)
	(Precio 42.0)
	(Sibarita TRUE)
	(TipoPlato "Pescado"))

([Catering_Class30052] of  Plato

	(Caliente TRUE)
	(Clasico FALSE)
	(Estacion Primavera Verano Invierno Otono)
	(Ligero TRUE)
	(LugarPlato "Japon")
	(Nombre "Salmón teriyaki")
	(OrdenPlato Segundo)
	(Precio 18.0)
	(Sibarita TRUE)
	(TipoPlato "Pescado"))

([Catering_Class30053] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Lomo de atún a la plancha")
	(OrdenPlato Segundo)
	(Precio 16.0)
	(TipoPlato "Pescado"))

([Catering_Class30054] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Otono Invierno)
	(Ligero FALSE)
	(LugarPlato "Francia")
	(Nombre "Sopa de cebolla")
	(OrdenPlato Primero)
	(Precio 12.0)
	(TipoPlato "Sopa"))

([Catering_Class30055] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(LugarPlato "Galicia")
	(Nombre "Cañaillas")
	(OrdenPlato Primero)
	(Precio 18.0)
	(Sibarita TRUE)
	(TipoPlato "Marisco"))

([Catering_Class30056] of  Plato

	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Ligero TRUE)
	(Nombre "Cebolla de Figueres \"al cop de puny\" con tomate y olivas")
	(OrdenPlato Primero)
	(Precio 12.0)
	(Vegetariano TRUE))

([Catering_Class30057] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Mojito (Cocktail)")
	(Precio 10.0))

([Catering_Class30058] of  Bebida

	(Alcoholica TRUE)
	(Nombre "Caipirinha (Cocktail)")
	(Precio 14.0))

([Catering_Class30060] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Complejo TRUE)
	(Estacion Primavera Otono Invierno)
	(LugarPlato "España")
	(Nombre "Arroz caldoso de pescador")
	(OrdenPlato Primero Segundo)
	(Precio 24.0)
	(Sibarita FALSE)
	(TipoPlato "Pescado"))

([Catering_Class5] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(Nombre "Filete")
	(OrdenPlato Segundo)
	(Precio 17.0)
	(TipoPlato "Carne"))

([Catering_Class6] of  Plato

	(Caliente TRUE)
	(Clasico FALSE)
	(Complejo TRUE)
	(Estacion Primavera Otono Invierno)
	(LugarPlato "Italia")
	(Nombre "Risotto")
	(OrdenPlato Primero)
	(Precio 8.0)
	(Sibarita TRUE)
	(Vegetariano TRUE))

([Catering_Class7] of  Plato

	(Caliente TRUE)
	(Clasico TRUE)
	(Estacion Primavera Verano Otono Invierno)
	(LugarPlato "Italia")
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

(deffunction getMenu (?nMenu ?c ?l ?v ?e ?s ?te ?re ?pMin ?pMax)

   (bind ?preuAcum 0)
  
   (if (eq ?te Congreso) ;;; En un congreso, cualquier bebida alcoholicas y no alcoholicas
    then (bind ?bebidas (find-all-instances ((?inst Bebida)) TRUE ))
    ; si no complejo (mucha gente) no alcoholicas
    else (bind ?bebidas (find-all-instances ((?inst Bebida)) (not (eq ?inst:Alcoholica TRUE)) ))
    )
    
    (if (eq ?l si)
    then 
        (if (eq ?v si)
		  ;ES VEGETARIANO
          then (if (eq ?c si) ;poca gente -> comida compleja o no
				then (bind ?platos (find-all-instances ((?inst Plato)) (and (eq ?inst:Ligero TRUE) (eq ?inst:Vegetariano TRUE) )))
				else (bind ?platos (find-all-instances ((?inst Plato)) (and (eq ?inst:Ligero TRUE) (eq ?inst:Vegetariano TRUE) (not (eq ?inst:Complejo TRUE)))))
			) ;FINAL IF COMPLEJO
		  ;NO ES VEGETARIANO
          else (if (eq ?c si) 
					then (bind ?platos (find-all-instances ((?inst Plato)) (eq ?inst:Ligero TRUE)))
					else (bind ?platos (find-all-instances ((?inst Plato)) (and (eq ?inst:Ligero TRUE) (not (eq ?inst:Complejo TRUE)))))
			)
        )
    else(
		if (eq ?v si)
			;ES VEGETARIANO
			then (if (eq ?c si) ;poca gente -> comida compleja o no
				then (bind ?platos (find-all-instances ((?inst Plato)) (eq ?inst:Vegetariano TRUE)))
				else (bind ?platos (find-all-instances ((?inst Plato)) (and (eq ?inst:Vegetariano TRUE) (not (eq ?inst:Complejo TRUE)))))
			) ;FINAL IF COMPLEJO
			;NO ES VEGETARIANO
			else (if (eq ?c si) ;poca gente -> comida compleja o no
				then (bind ?platos (find-all-instances ((?inst Plato)) TRUE))
				else (bind ?platos (find-all-instances ((?inst Plato)) (not (eq ?inst:Complejo TRUE))))
			)
        )
    )
    
	(if (eq ?re si)
	then
   (bind ?platosaux (create$ ))   

		(loop-for-count (?i 1 (length ?platos))     
			(bind ?var (nth$ ?i ?platos))
			(if (not (eq (send ?var get-LugarPlato) "" ))
			then 
				(insert$ ?platosaux 1 ?var)
			)
		)
		
		(bind ?platos ?platosaux)
		
	)
	
	(if (eq ?s si)
	then
        (bind ?platosaux (create$ ))   

		(loop-for-count (?i 1 (length ?platos))     
			(bind ?var (nth$ ?i ?platos))
			(if (eq (send ?var get-Sibarita) TRUE )
			then 
				(insert$ ?platosaux 1 ?var)
			)
		)
		
		(bind ?platos ?platosaux)
		
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
   (printout t "Menu " ?nMenu crlf)
   (printout t "Bebida: " )
   ;UNA BEBIDA PARA TODO EL MENU
   (if (not (eq ?s si))
    then (bind ?bebida (random-elem ?bebidas) )
		 (bind ?preuAcum (+ ?preuAcum (send ?bebida get-Precio)))
		  (printout t (send ?bebida get-Nombre) crlf)
	;UNA BEBIDA PARA CADA PLATO
	else ( 
		if (eq ?te Familiar)
		then (bind ?bebidaprimero (random-elem ?bebidas))
		then (bind ?bebidasegundo (random-elem ?bebidas))
		then (bind ?bebidapostre (random-elem ?bebidas))
		)
	)
	
   
   (bind ?primeros (create$ ))   
   (loop-for-count (?i 1 (length ?platos))     
		(bind ?var (nth$ ?i ?platos))
		(bind ?ordenes (send ?var get-OrdenPlato))
		(bind ?estaciones (send ?var get-Estacion)) 
		(bind ?preuAct (send ?var get-Precio))
		
		
		(if (eq ?s si)
		then ( if (eq ?te Congreso)
				then  	 (bind ?bebidaAct (send ?var get-BebidaAsociada) )
						(bind ?preuAct (+ (send ?bebidaAct get-Precio)(send ?var get-Precio)))

				else (bind ?preuAct (+ (send ?bebidaprimero get-Precio) (send ?var get-Precio)))
			)

		)		
		
		
		(if (and (member Primero ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.4 ?minIntrv1)) (<= ?preuAct (* 0.4 ?maxIntrv1)) (eq ?nMenu 1))
			then(bind ?primeros (insert$ ?primeros 1 ?var))
			
		)
		(if (and (member Primero ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.4 ?minIntrv2)) (<= ?preuAct (* 0.4 ?maxIntrv2)) (eq ?nMenu 2))
			then(bind ?primeros (insert$ ?primeros 1 ?var))

			(printout t (send ?var get-Nombre) crlf )			
		)
		(if (and (member Primero ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.4 ?minIntrv3)) (<= ?preuAct (* 0.4 ?maxIntrv3)) (eq ?nMenu 3))
			then(bind ?primeros (insert$ ?primeros 1 ?var))
		)
	)
	;(printout t ?primeros crlf)
   
  
   (bind ?segundos (create$ ))   
   (loop-for-count (?i 1 (length ?platos))     
		(bind ?var (nth$ ?i ?platos))
		(bind ?ordenes (send ?var get-OrdenPlato))
		(bind ?estaciones (send ?var get-Estacion)) 
		(bind ?preuAct (send ?var get-Precio))
		
		
		(if (eq ?s si)
		then ( if (eq ?te Congreso)
				then  	 (bind ?bebidaAct (send ?var get-BebidaAsociada) )
						(bind ?preuAct (+ (send ?bebidaAct get-Precio)(send ?var get-Precio)))

				else (bind ?preuAct (+ (send ?bebidasegundo get-Precio) (send ?var get-Precio)))
			)

		)		

		(if (and (member Segundo ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.4 ?minIntrv1)) (<= ?preuAct (* 0.4 ?maxIntrv1)) (eq ?nMenu 1))
			then(bind ?segundos (insert$ ?segundos 1 ?var)
		)			
		)
		(if (and (member Segundo ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.4 ?minIntrv2)) (<= ?preuAct (* 0.4 ?maxIntrv2)) (eq ?nMenu 2))
			
			then(bind ?segundos (insert$ ?segundos 1 ?var))

			(printout t (send ?var get-Nombre) crlf)
		)
		(if (and (member Segundo ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.4 ?minIntrv3)) (<= ?preuAct (* 0.4 ?maxIntrv3)) (eq ?nMenu 3))
			then(bind ?segundos (insert$ ?segundos 1 ?var)
		)
		)
	)
	
	(printout t crlf)
  
   
   (bind ?postres (create$ ))   
   (loop-for-count (?i 1 (length ?platos))     
		(bind ?var (nth$ ?i ?platos))
		(bind ?ordenes (send ?var get-OrdenPlato))
		(bind ?estaciones (send ?var get-Estacion)) 
		(bind ?preuAct (send ?var get-Precio))
		
		(if (eq ?s si)
		then ( if (eq ?te Congreso)
				then  	 (bind ?bebidaAct (send ?var get-BebidaAsociada) )
						(bind ?preuAct (+ (send ?bebidaAct get-Precio)(send ?var get-Precio)))

				else (bind ?preuAct (+ (send ?bebidapostre get-Precio) (send ?var get-Precio)))
			)

		)		

		(if (and (member Postre ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.2 ?minIntrv1)) (<= ?preuAct (* 0.2 ?maxIntrv1)) (eq ?nMenu 1))
			then(bind ?postres (insert$ ?postres 1 ?var))
		)
		(if (and (member Postre ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.2 ?minIntrv2)) (<= ?preuAct (* 0.2 ?maxIntrv2))  (eq ?nMenu 2))
			then(bind ?postres (insert$ ?postres 1 ?var))
			
			(printout t (send ?var get-Nombre))
		)
		(if (and (member Postre ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.2 ?minIntrv3)) (<= ?preuAct (* 0.2 ?maxIntrv3))  (eq ?nMenu 3))
			then(bind ?postres (insert$ ?postres 1 ?var))
		)
	)
	;(bind ?postres (insert$ ?postres 1 (random-elem ?primeros)))
	(if  (or (eq 0 (length ?primeros))(eq 0 (length ?segundos))(eq 0 (length ?postres))) ;FALTA MIRAR BEBIDAS
		then (printout t "No hay suficientes platos para cumplir las restricciones" crlf)
		else (printout t "Primero: " )
			   (bind ?primero (random-elem ?primeros) ) 
			   (bind ?listbebidas (create$ ))   

			   (if (eq ?s si)
				   then (if (eq ?te Congreso) 
						then (bind ?listbebidas (insert$ ?listbebidas 1 (send ?primero get-BebidaAsociada)) )
						else (bind ?listbebidas (insert$ ?listbebidas 1 ?bebidaprimero))

						)
				)
			   (bind ?preuAcum (+ ?preuAcum (send ?primero get-Precio)))
			   
			   (bind ?segundoscompatibles (create$ ))   

			   (loop-for-count (?i 1 (length ?segundos))     
					(bind ?var (nth$ ?i ?segundos))
					(if (not(member ?var (send ?primero get-PlatosNoCompatibles)))
						then (insert$ ?segundoscompatibles 1 ?var)
					)
				)
			   (printout t "Segundo: " )
			   (bind ?segundo (random-elem ?segundoscompatibles) ) 
	
			   (if (eq ?s si)
				   then (if (eq ?te Congreso) 
						then (bind ?listbebidas (insert$ ?listbebidas 1 (send ?segundo get-BebidaAsociada)) )
						else (bind ?listbebidas (insert$ ?listbebidas 1 ?bebidasegundo))
						)

				)
	
			   (bind ?preuAcum (+ ?preuAcum (send ?segundo get-Precio)))
			   (printout t (send ?segundo get-Nombre) crlf)
   
			   (printout t "Postre: " )
			   
			   (bind ?postrescompatibles (create$ ))   

			   (loop-for-count (?i 1 (length ?postres))     
					(bind ?var (nth$ ?i ?postres))
					(if (and (not(member ?var (send ?primero get-PlatosNoCompatibles))) (not(member ?var (send ?segundo get-PlatosNoCompatibles))))
						then (insert$ ?postrescompatibles 1 ?var)
					)
				)
			   
			   (bind ?postre (random-elem ?postrescompatibles) )	 
			   
			   (if (eq ?s si)
				   then (if (eq ?te Congreso) 
						then (bind ?listbebidas (insert$ ?listbebidas 1 (send ?postre get-BebidaAsociada)) )
						else (bind ?listbebidas (insert$ ?listbebidas 1 ?bebidapostre))
						)
				)
			   (bind ?preuAcum (+ ?preuAcum (send ?postre get-Precio)))
			   (printout t (send ?postre get-Nombre) crlf)
				
				
			   (if (eq ?s si) 
				then (assert (menu (numMenu ?nMenu) (primer-plato ?primero) (segundo-plato ?segundo) (postre ?postre) (lista-bebidas ?listbebidas)))
					
					(printout t "calcular precio -")
				else (assert (menu (numMenu ?nMenu) (primer-plato ?primero) (segundo-plato ?segundo) (postre ?postre) (lista-bebidas ?bebida)))
					(printout t (calcularPrecio ?primero ?segundo ?postre ?bebida))
				
			   )
	) 
  
   ;(bind ?precio (send ?postre get-Precio))
   ;(printout t ?precio)
  )
 
;;;;;;;;;;;;;;  QUERIES ;;;;;;;;;;;;;;;;
; SALIENCE = 10

(defrule preguntar-tipo-evento
 (declare (salience 10))
 => 
 (if (esComida "¿Es una comida o una cena?(Comida/Cena)")
  then (if (esFamiliar "¿Es un evento familiar o un congreso?(Familiar/Congreso)")
		  then (assert (tipoEvento Familiar)) (assert (turno Comida))
		  else (assert (tipoEvento Congreso)) (assert (turno Comida))
          )
  else (if (esFamiliar "¿Es un evento familiar o un congreso?(Familiar/Congreso)")
		  then (assert (tipoEvento Familiar)) (assert (turno Cena))
		  else (assert (tipoEvento Congreso)) (assert (turno Cena))
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
 (if (yes-or-no-p "¿Quieres un menu vegetariano?(si/no)")
 then (assert (vegetariano si))
 else (assert (vegetariano no)) 
 )
 )
 
 (defrule preguntar-sibarita
 (declare (salience 10))
 =>
 (if (yes-or-no-p "¿Quieres un menu sibarita?(si/no)")
 then (assert (sibarita si))
 else (assert (sibarita no)) 
 )
 )
 
 (defrule preguntar-regional
 (declare (salience 10))
 =>
 (if (yes-or-no-p "¿Quieres un menu con platos de diferentes regiones?(si/no)")
 then (assert (regional si))
 else (assert (regional no)) 
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
   (turno ?te)
   =>
   (if( eq ?te Cena)
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
   (estacion ?e)
   (sibarita ?s)
   (tipoEvento ?te)
   (regional ?re)
	=>
	(bind ?aux (getMenu 1 ?c ?l ?v ?e ?s ?te ?re ?pMin ?pMax))
	(bind ?aux (getMenu 2 ?c ?l ?v ?e ?s ?te ?re ?pMin ?pMax))
	(bind ?aux (getMenu 3 ?c ?l ?v ?e ?s ?te ?re ?pMin ?pMax))
)

; (defrule getBebidas
	; (declare (salience 40))
	; =>
	; (bind ?bebidas (find-all-instances ((?inst Bebida)) TRUE )) ;;;(> (?inst:Precio) 0)	
	; (printout t ?bebidas)	
; )
