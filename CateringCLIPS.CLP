;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ONTOLOGIA


; Sun May 21 21:34:31 CEST 2017
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


; Sun May 21 21:34:31 CEST 2017
; 
;+ (version "3.5")
;+ (build "Build 663")

([Catering_Class0] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Vol d'Anima de Raimat (Vino blanco, D.O. Costers del Segre)")
    (Precio 1.6))

([Catering_Class1] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Camino del puerto (Vino blanco, D.O. Rueda)")
    (Precio 1.35))

([Catering_Class10000] of  Plato

    (BebidaAsociada [Catering_Class40058])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Ensalada")
    (OrdenPlato Primero)
    (Precio 4.0)
    (Vegetariano TRUE))

([Catering_Class10001] of  Plato

    (BebidaAsociada [Catering_Class40013])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Espanya")
    (Nombre "Tortilla de patatas")
    (OrdenPlato Segundo)
    (Precio 6.0)
    (Vegetariano TRUE))

([Catering_Class10002] of  Plato

    (BebidaAsociada [Catering_Class30004])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Nombre "Estofado")
    (OrdenPlato Segundo)
    (Precio 10.0)
    (TipoPlato "Estofado"))

([Catering_Class10003] of  Plato

    (BebidaAsociada [Catering_Class40033])
    (Caliente TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Hamburguesa de tofu")
    (OrdenPlato Segundo)
    (Precio 8.0)
    (Vegetariano TRUE))

([Catering_Class10004] of  Plato

    (BebidaAsociada [Catering_Class40014])
    (Clasico TRUE)
    (Estacion Verano Primavera Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Francia")
    (Nombre "Flan")
    (OrdenPlato Postre)
    (Precio 3.0)
    (Sibarita FALSE)
    (Vegetariano TRUE))

([Catering_Class10005] of  Plato

    (BebidaAsociada [Catering_Class40007])
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Verano Primavera Otono Invierno)
    (Ligero FALSE)
    (LugarPlato "Estados Unidos")
    (Nombre "Pastel de queso")
    (OrdenPlato Postre)
    (Precio 9.0)
    (Sibarita FALSE)
    (Vegetariano TRUE))

([Catering_Class10006] of  Plato

    (BebidaAsociada [Catering_Class30011])
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

    (BebidaAsociada [Catering_Class40012])
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

    (BebidaAsociada [Catering_Class40044])
    (Caliente TRUE)
    (Complejo TRUE)
    (Estacion Otono Invierno)
    (Ligero TRUE)
    (Nombre "Crema de calabaza")
    (OrdenPlato Primero)
    (Precio 7.0)
    (Vegetariano TRUE))

([Catering_Class20002] of  Plato

    (BebidaAsociada [Catering_Class40020])
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Manzana")
    (OrdenPlato Postre)
    (Precio 1.0)
    (Vegetariano TRUE))

([Catering_Class20004] of  Plato

    (BebidaAsociada [Catering_Class30012])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Croquetas de pescado y marisco")
    (OrdenPlato Segundo)
    (Precio 7.0)
    (Sibarita TRUE)
    (TipoPlato "Pescado")
    (Vegetariano FALSE))

([Catering_Class20005] of  Plato

    (BebidaAsociada [Catering_Class40029])
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

    (BebidaAsociada [Catering_Class40023])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Nombre "Melocoton en almibar")
    (OrdenPlato Postre)
    (Precio 5.0))

([Catering_Class20007] of  Plato

    (BebidaAsociada [Catering_Class40017])
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

    (BebidaAsociada [Catering_Class40017])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "India")
    (Nombre "Pollo al curry")
    (OrdenPlato Segundo)
    (PlatosNoCompatibles [Catering_Class20007])
    (Precio 10.0)
    (TipoPlato "Carne"))

([Catering_Class20009] of  Plato

    (BebidaAsociada [Catering_Class40016])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Catalunya")
    (Nombre "Trinxat de la cerdanya")
    (OrdenPlato Primero)
    (Precio 10.0)
    (Vegetariano TRUE))

([Catering_Class20010] of  Plato

    (BebidaAsociada [Catering_Class40005])
    (Caliente TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Nombre "Hamburguesa con patatas")
    (OrdenPlato Segundo)
    (Precio 7.0)
    (TipoPlato "Carne"))

([Catering_Class20011] of  Plato

    (BebidaAsociada [Catering_Class30005])
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

    (BebidaAsociada [Catering_Class40017])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Nombre "Pollo rebozado")
    (OrdenPlato Segundo)
    (Precio 5.0)
    (TipoPlato "Carne"))

([Catering_Class20013] of  Plato

    (BebidaAsociada [Catering_Class40049])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Iogur")
    (OrdenPlato Postre)
    (Precio 1.0)
    (Vegetariano TRUE))

([Catering_Class20014] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Raimat Chardonnay (Cava, D.O. Catalunya)")
    (Precio 1.85))

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

    (BebidaAsociada [Catering_Class40042])
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Nombre "Arroz negro")
    (OrdenPlato Primero)
    (Precio 15.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class20019] of  Plato

    (BebidaAsociada [Catering_Class30013])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Ensalada de pasta")
    (OrdenPlato Primero)
    (Precio 8.0)
    (Vegetariano TRUE))

([Catering_Class20020] of  Plato

    (BebidaAsociada [Catering_Class40028])
    (Clasico TRUE)
    (Estacion Primavera Verano)
    (Ligero TRUE)
    (LugarPlato "Espanya")
    (Nombre "Melon con jamon")
    (OrdenPlato Primero)
    (Precio 5.0))

([Catering_Class20021] of  Plato

    (BebidaAsociada [Catering_Class1])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Huevos rellenos con atun")
    (OrdenPlato Primero Segundo)
    (PlatosNoCompatibles [Catering_Class20021])
    (Precio 6.0))

([Catering_Class20022] of  Plato

    (BebidaAsociada [Catering_Class40044])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Italia")
    (Nombre "Espaguetis a la bolognesa")
    (OrdenPlato Primero)
    (Precio 10.0))

([Catering_Class20023] of  Plato

    (BebidaAsociada [Catering_Class40057])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Italia")
    (Nombre "Raviolis a la carbonara")
    (OrdenPlato Primero)
    (Precio 10.0))

([Catering_Class20024] of  Plato

    (BebidaAsociada [Catering_Class40050])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Otono Invierno)
    (Nombre "Lentejas estofadas")
    (OrdenPlato Primero)
    (Precio 8.0)
    (TipoPlato "Estofado")
    (Vegetariano TRUE))

([Catering_Class20025] of  Plato

    (BebidaAsociada [Catering_Class40029])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Nombre "Albondigas con guisantes")
    (OrdenPlato Segundo)
    (Precio 6.0)
    (TipoPlato "Carne"))

([Catering_Class20026] of  Plato

    (BebidaAsociada [Catering_Class40048])
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

    (BebidaAsociada [Catering_Class40006])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Nombre "Merluza al vapor")
    (OrdenPlato Segundo)
    (Precio 15.0)
    (TipoPlato "Pescado"))

([Catering_Class20028] of  Plato

    (BebidaAsociada [Catering_Class30013])
    (Caliente FALSE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Estados Unidos")
    (Nombre "Nuggets de pollo")
    (OrdenPlato Segundo)
    (Precio 5.0))

([Catering_Class20029] of  Plato

    (BebidaAsociada [Catering_Class30011])
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

    (BebidaAsociada [Catering_Class40057])
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Queso con membrillo")
    (OrdenPlato Postre)
    (Precio 3.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class20031] of  Plato

    (BebidaAsociada [Catering_Class40045])
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Italia")
    (Nombre "Tiramisu")
    (OrdenPlato Postre)
    (Precio 5.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class20032] of  Plato

    (BebidaAsociada [Catering_Class30013])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Ensaladilla rusa")
    (OrdenPlato Primero)
    (Precio 6.0)
    (Vegetariano TRUE))

([Catering_Class20033] of  Plato

    (BebidaAsociada [Catering_Class30018])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Tabla de quesos")
    (OrdenPlato Primero)
    (Precio 20.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class20034] of  Plato

    (BebidaAsociada [Catering_Class40012])
    (Caliente TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Nombre "Salmon con patatas")
    (OrdenPlato Segundo)
    (PlatosNoCompatibles [Catering_Class20035])
    (Precio 18.0)
    (Sibarita TRUE)
    (TipoPlato "Pescado"))

([Catering_Class20035] of  Plato

    (BebidaAsociada [Catering_Class40006])
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

    (BebidaAsociada [Catering_Class40022])
    (Clasico TRUE)
    (Estacion Primavera Verano)
    (Ligero TRUE)
    (Nombre "Ensalada de lentejas")
    (OrdenPlato Primero)
    (Precio 5.0)
    (Vegetariano TRUE))

([Catering_Class20037] of  Plato

    (BebidaAsociada [Catering_Class40051])
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano)
    (LugarPlato "Andalucia")
    (Nombre "Salmorejo")
    (OrdenPlato Primero)
    (Precio 10.0)
    (TipoPlato "Sopa"))

([Catering_Class20038] of  Plato

    (BebidaAsociada [Catering_Class30013])
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
    (Nombre "Taittinger Brut Reserve (Champagne, D.O. Reims)")
    (Precio 5.2))

([Catering_Class20041] of  Bebida

    (Nombre "Nestea")
    (Precio 3.0))

([Catering_Class20042] of  Plato

    (BebidaAsociada [Catering_Class40055])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "China")
    (Nombre "Noodles")
    (OrdenPlato Primero)
    (Precio 6.0))

([Catering_Class20043] of  Plato

    (BebidaAsociada [Catering_Class40041])
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

    (BebidaAsociada [Catering_Class40049])
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

    (BebidaAsociada [Catering_Class40029])
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

([Catering_Class30000] of  Plato

    (BebidaAsociada [Catering_Class30004])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Otono Invierno Primavera)
    (LugarPlato "Asturias")
    (Nombre "Fabada")
    (OrdenPlato Primero Segundo)
    (PlatosNoCompatibles [Catering_Class30000])
    (Precio 8.0))

([Catering_Class30002] of  Bebida

    (Alcoholica TRUE)
    (Nombre "A Punt (Vino blanco, Mallorca)")
    (Precio 2.2))

([Catering_Class30003] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Four Lines (Vino blanco, D.O. Rueda)")
    (Precio 1.0))

([Catering_Class30004] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Cervoles Colors (Vino tinto, D.O. Costers del Segre)")
    (Precio 2.0))

([Catering_Class30005] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Chivite Las Fincas Lias (Vino rosado, Tierra Protegida de las Tres Riberas)")
    (Precio 3.0))

([Catering_Class30006] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Gran Feudo Edicion Roble (Vino tinto, D.O. Ribera del Duero)")
    (Precio 1.75))

([Catering_Class30007] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Vinya Salceda Reserva (Vino tinto, D.O.C. Rioja)")
    (Precio 2.35))

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
    (Precio 1.9))

([Catering_Class30012] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Vinya Sol (Vino tinto, D.O. Rioja)")
    (Precio 1.25))

([Catering_Class30013] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Sangria (Vino tinto)")
    (Precio 1.0))

([Catering_Class30014] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Sangria (Cava)")
    (Precio 1.5))

([Catering_Class30015] of  Bebida

    (Nombre "Ginger Ale (Soda)")
    (Precio 1.8))

([Catering_Class30016] of  Bebida

    (Nombre "Fanta de naranja (Soda)")
    (Precio 2.0))

([Catering_Class30017] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Vega Sicilia \"Unico\" (Vino tinto, D.O. Rioja)")
    (Precio 9.0))

([Catering_Class30018] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Finc Dofi (Vino tinto, D.O.Q. Priorat)")
    (Precio 8.2))

([Catering_Class30019] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Taittinger Brut Prestige Rose (Champagne rosado, D.O. Reims)")
    (Precio 4.6))

([Catering_Class30020] of  Plato

    (BebidaAsociada [Catering_Class40033])
    (Complejo TRUE)
    (Estacion Primavera Verano)
    (Ligero TRUE)
    (LugarPlato "Españnya")
    (Nombre "Salpicon de bogavante")
    (OrdenPlato Primero)
    (Precio 42.2)
    (Sibarita TRUE)
    (TipoPlato "Marisco"))

([Catering_Class30021] of  Plato

    (BebidaAsociada [Catering_Class40024])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Invierno Otono)
    (LugarPlato "Galicia")
    (Nombre "Pulpo a la gallega")
    (OrdenPlato Primero)
    (Precio 14.0)
    (TipoPlato "Pescado"))

([Catering_Class30022] of  Plato

    (BebidaAsociada [Catering_Class40026])
    (Clasico TRUE)
    (Estacion Verano Otono Invierno Primavera)
    (Ligero TRUE)
    (Nombre "Steak tartar")
    (OrdenPlato Primero Segundo)
    (PlatosNoCompatibles [Catering_Class30022])
    (Precio 16.0)
    (Sibarita TRUE)
    (TipoPlato "Carne"))

([Catering_Class30023] of  Plato

    (BebidaAsociada [Catering_Class40033])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Valencia")
    (Nombre "Fideos negros con sepia")
    (OrdenPlato Primero Segundo)
    (Precio 19.4))

([Catering_Class30024] of  Plato

    (BebidaAsociada [Catering_Class0])
    (Caliente TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Valencia")
    (Nombre "\"Rossejat\" de fideos")
    (OrdenPlato Primero Segundo)
    (PlatosNoCompatibles [Catering_Class30024])
    (Precio 18.65))

([Catering_Class30025] of  Plato

    (BebidaAsociada [Catering_Class40049])
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

    (BebidaAsociada [Catering_Class40046])
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

    (BebidaAsociada [Catering_Class40052])
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

    (BebidaAsociada [Catering_Class40046])
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

    (BebidaAsociada [Catering_Class40052])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Pais Vasco")
    (Nombre "Pies de cerdo deshuesados con samfaina")
    (OrdenPlato Segundo)
    (Precio 14.15)
    (Sibarita TRUE)
    (TipoPlato "Carne"))

([Catering_Class30030] of  Plato

    (BebidaAsociada [Catering_Class40033])
    (Caliente TRUE)
    (Clasico FALSE)
    (Complejo TRUE)
    (Estacion Invierno Otono)
    (Ligero TRUE)
    (LugarPlato "Pais Vasco")
    (Nombre "Kokotxas en salsa verde")
    (OrdenPlato Segundo)
    (Precio 18.0)
    (Sibarita TRUE)
    (TipoPlato "Pescado"))

([Catering_Class30031] of  Plato

    (BebidaAsociada [Catering_Class40042])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Lenguado a la planxa")
    (OrdenPlato Segundo)
    (Precio 22.0)
    (TipoPlato "Pescado"))

([Catering_Class30032] of  Plato

    (BebidaAsociada [Catering_Class30005])
    (Caliente TRUE)
    (Estacion Primavera Verano)
    (Ligero TRUE)
    (Nombre "Alcachofas fritas")
    (OrdenPlato Primero)
    (Precio 9.0)
    (Vegetariano TRUE))

([Catering_Class30033] of  Plato

    (BebidaAsociada [Catering_Class40051])
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

    (BebidaAsociada [Catering_Class40055])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Galicia")
    (Nombre "Zamburinyas al horno")
    (OrdenPlato Segundo)
    (Precio 14.0)
    (Sibarita TRUE)
    (TipoPlato "Marisco"))

([Catering_Class30035] of  Plato

    (BebidaAsociada [Catering_Class40046])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Invierno)
    (Ligero TRUE)
    (Nombre "Esparragos trigeros a la plancha")
    (OrdenPlato Primero)
    (Precio 9.0)
    (Vegetariano TRUE))

([Catering_Class30036] of  Plato

    (BebidaAsociada [Catering_Class1])
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

    (BebidaAsociada [Catering_Class40033])
    (Caliente TRUE)
    (Complejo TRUE)
    (Estacion Primavera Otono Invierno)
    (Nombre "Bacalao \"a la llauna\"")
    (OrdenPlato Segundo)
    (Precio 21.0)
    (Sibarita TRUE)
    (TipoPlato "Pescado"))

([Catering_Class30038] of  Plato

    (BebidaAsociada [Catering_Class40004])
    (Clasico FALSE)
    (Complejo TRUE)
    (Estacion Verano Primavera Otono Invierno)
    (LugarPlato "Japon")
    (Nombre "Tataki de atun con salmorejo")
    (OrdenPlato Segundo)
    (Precio 17.0)
    (Sibarita TRUE)
    (TipoPlato "Pescado"))

([Catering_Class30039] of  Plato

    (BebidaAsociada [Catering_Class40007])
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Japon")
    (Nombre "Tartar de atun con aguacate")
    (OrdenPlato Primero Segundo)
    (PlatosNoCompatibles [Catering_Class30039])
    (Precio 14.0)
    (Sibarita TRUE)
    (TipoPlato "Pescado"))

([Catering_Class30040] of  Plato

    (BebidaAsociada [Catering_Class30002])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Francia")
    (Nombre "Lenguado Menieur")
    (OrdenPlato Segundo Primero)
    (PlatosNoCompatibles [Catering_Class30040])
    (Precio 25.0)
    (Sibarita TRUE)
    (TipoPlato "Pescado"))

([Catering_Class30041] of  Plato

    (BebidaAsociada [Catering_Class40010])
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Catalunya")
    (Nombre "Carpaccio de rape, salmon y aguacate")
    (OrdenPlato Primero)
    (Precio 14.5)
    (Sibarita TRUE)
    (TipoPlato "Pescado"))

([Catering_Class30042] of  Plato

    (BebidaAsociada [Catering_Class40010])
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

    (BebidaAsociada [Catering_Class0])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo FALSE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero FALSE)
    (LugarPlato "Malaga")
    (Nombre "Chipirones a la malagueña")
    (OrdenPlato Primero)
    (Precio 18.0)
    (TipoPlato "Pescado"))

([Catering_Class30044] of  Plato

    (BebidaAsociada [Catering_Class3])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero FALSE)
    (LugarPlato "Reino Unido")
    (Nombre "Fish & Chips")
    (OrdenPlato Primero Segundo)
    (PlatosNoCompatibles [Catering_Class30044])
    (Precio 4.2)
    (TipoPlato "Pescado"))

([Catering_Class30045] of  Plato

    (BebidaAsociada [Catering_Class40038])
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

    (BebidaAsociada [Catering_Class30007])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero FALSE)
    (LugarPlato "Estados Unidos")
    (Nombre "Entrecot de Nebraska Black Angus")
    (OrdenPlato Segundo)
    (Precio 22.0)
    (Sibarita TRUE)
    (TipoPlato "Carne"))

([Catering_Class30047] of  Plato

    (BebidaAsociada [Catering_Class40034])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Italia")
    (Nombre "Costillas de cabrito a la milanesa")
    (OrdenPlato Segundo)
    (Precio 17.0)
    (Sibarita FALSE)
    (TipoPlato "Carne"))

([Catering_Class30048] of  Plato

    (BebidaAsociada [Catering_Class40027])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Austria")
    (Nombre "Wienner Schnitzel")
    (OrdenPlato Segundo Primero)
    (PlatosNoCompatibles [Catering_Class30048])
    (Precio 15.0)
    (TipoPlato "Carne"))

([Catering_Class30049] of  Plato

    (BebidaAsociada [Catering_Class40021])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Alemania")
    (Nombre "Sauerkraut")
    (OrdenPlato Primero Segundo)
    (PlatosNoCompatibles [Catering_Class30049])
    (Precio 12.0)
    (Vegetariano TRUE))

([Catering_Class30050] of  Plato

    (BebidaAsociada [Catering_Class30007])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Francia")
    (Nombre "Ragout")
    (OrdenPlato Segundo)
    (Precio 12.0)
    (Sibarita TRUE)
    (TipoPlato "Carne"))

([Catering_Class30051] of  Plato

    (BebidaAsociada [Catering_Class40011])
    (Caliente TRUE)
    (Complejo TRUE)
    (Estacion Otono Primavera Invierno)
    (Nombre "Caldereta de langosta")
    (OrdenPlato Segundo)
    (Precio 42.0)
    (Sibarita TRUE)
    (TipoPlato "Pescado"))

([Catering_Class30052] of  Plato

    (BebidaAsociada [Catering_Class40005])
    (Caliente TRUE)
    (Clasico FALSE)
    (Estacion Primavera Verano Invierno Otono)
    (Ligero TRUE)
    (LugarPlato "Japon")
    (Nombre "Salmon teriyaki")
    (OrdenPlato Segundo)
    (Precio 18.0)
    (Sibarita TRUE)
    (TipoPlato "Pescado"))

([Catering_Class30053] of  Plato

    (BebidaAsociada [Catering_Class30003])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Lomo de atún a la plancha")
    (OrdenPlato Segundo)
    (Precio 16.0)
    (TipoPlato "Pescado"))

([Catering_Class30054] of  Plato

    (BebidaAsociada [Catering_Class40036])
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

    (BebidaAsociada [Catering_Class30014])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Galicia")
    (Nombre "Canyaillas")
    (OrdenPlato Primero)
    (Precio 18.0)
    (Sibarita TRUE)
    (TipoPlato "Marisco"))

([Catering_Class30056] of  Plato

    (BebidaAsociada [Catering_Class30013])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Catalunya")
    (Nombre "Cebolla de Figueres \"al cop de puny\" con tomate y olivas")
    (OrdenPlato Primero)
    (Precio 12.0)
    (Vegetariano TRUE))

([Catering_Class30057] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Mojito (Cocktail)")
    (Precio 2.0))

([Catering_Class30058] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Caipirinha (Cocktail)")
    (Precio 14.0))

([Catering_Class30060] of  Plato

    (BebidaAsociada [Catering_Class40008])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Otono Invierno)
    (LugarPlato "España")
    (Nombre "Arroz caldoso de pescador")
    (OrdenPlato Primero Segundo)
    (PlatosNoCompatibles [Catering_Class30060])
    (Precio 24.0)
    (Sibarita FALSE)
    (TipoPlato "Pescado"))

([Catering_Class40000] of  Plato

    (BebidaAsociada [Catering_Class40049])
    (Clasico FALSE)
    (Estacion Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Pinya Natural")
    (OrdenPlato Postre)
    (Precio 3.5)
    (Vegetariano TRUE))

([Catering_Class40001] of  Plato

    (BebidaAsociada [Catering_Class40061])
    (Complejo TRUE)
    (Estacion Verano Primavera Otono Invierno)
    (Ligero TRUE)
    (Nombre "Sopa de frutos del bosque con helado de yogurt")
    (OrdenPlato Postre)
    (Precio 3.0)
    (Sibarita TRUE)
    (TipoPlato "Sopa")
    (Vegetariano TRUE))

([Catering_Class40002] of  Plato

    (BebidaAsociada [Catering_Class30003])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Catalunya")
    (Nombre "Crema catalana")
    (OrdenPlato Postre)
    (Precio 2.0)
    (Vegetariano FALSE))

([Catering_Class40003] of  Plato

    (BebidaAsociada [Catering_Class40051])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Francia")
    (Nombre "Mousse de chocolate")
    (OrdenPlato Postre)
    (Precio 4.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class40004] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Javier Sanz (Vino blanco, D.O. Rueda)")
    (Precio 1.6))

([Catering_Class40005] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Fenomenal (Vino blanco, D.O. Rueda)")
    (Precio 1.55))

([Catering_Class40006] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Vinya El Torreon (Vino blanco, D.O. Rueda)")
    (Precio 1.25))

([Catering_Class40007] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Pedalier (Vino blanco, D.O. Rias Baixas)")
    (Precio 1.3))

([Catering_Class40008] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Marieta  (Vino blanco, D.O. Rias Baixas)")
    (Precio 1.35))

([Catering_Class40010] of  Bebida

    (Alcoholica TRUE)
    (Nombre "La Trucha (Vino blanco, D.O. Rias Baixas)")
    (Precio 1.45))

([Catering_Class40011] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Finca Fabian  (Vino blanco, D.O. La Mancha)")
    (Precio 1.35))

([Catering_Class40012] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Finca Fabian  (Vino rosado, D.O. La Mancha)")
    (Precio 1.32))

([Catering_Class40013] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Libido (Vino rosado, D.O. Navarra)")
    (Precio 1.35))

([Catering_Class40014] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Sierra Cantabria (Vino rosado, D.O. La Rioja)")
    (Precio 1.2))

([Catering_Class40015] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Pere Ventura Cupatge d'Honor Rose (Cava, D.O. Valencia)")
    (Precio 2.4))

([Catering_Class40016] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Ses Nines (Vino tinto, D.O. Binissalem, Mallorca)")
    (Precio 1.6))

([Catering_Class40017] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Butibalausi (Vino tinto, V.T. Mallorca)")
    (Precio 1.8))

([Catering_Class40018] of  Bebida

    (Alcoholica TRUE)
    (Nombre "8 Vents (Vino tinto, V.T. Mallorca)")
    (Precio 3.5))

([Catering_Class40019] of  Bebida

    (Alcoholica TRUE)
    (Nombre "XIII Lunas Crianza (Vino tinto, D.O. La Mancha)")
    (Precio 1.2))

([Catering_Class40020] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Bicicletas y Demonios (Vino tinto, D.O. Ribera del Duero)")
    (Precio 2.4))

([Catering_Class40021] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Dominio de Atauta (Vino tinto, D.O. Ribera del Duero)")
    (Precio 2.9))

([Catering_Class40022] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Carmelo Rodero 9 meses (Vino tinto, D.O. Ribera del Duero)")
    (Precio 1.85))

([Catering_Class40023] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Cyan Roble (Vino tinto, D.O. Toro)")
    (Precio 1.6))

([Catering_Class40024] of  Bebida

    (Alcoholica TRUE)
    (Nombre "El Picaro (Vino tinto, D.O. Toro)")
    (Precio 1.65))

([Catering_Class40025] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Glorioso Crianza (Vino tinto, D.O. La Rioja)")
    (Precio 1.8))

([Catering_Class40026] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Ramon Bilbao Edicion Limitada (Vino tinto, D.O. La Rioja)")
    (Precio 2.1))

([Catering_Class40027] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Carlos Martinez (Vino tinto, D.O. La Rioja)")
    (Precio 1.68))

([Catering_Class40028] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Juan Gil 12 meses (Vino tinto, D.O. Jumilla)")
    (Precio 2.2))

([Catering_Class40029] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Alto Moncayo (Vino tinto, D.O. Campo de Borja)")
    (Precio 6.0))

([Catering_Class40030] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Les Terrases (Vino tinto, D.O. Priorat)")
    (Precio 3.5))

([Catering_Class40031] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Inici (Vino tinto, D.O. Priorat)")
    (Precio 2.6))

([Catering_Class40032] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Finca la Cuesta (Vino tinto, D.O. Bierzo)")
    (Precio 1.75))

([Catering_Class40033] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Ermita d'Espiells (Vino blanco, D.O. Penedes)")
    (Precio 1.0))

([Catering_Class40034] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Moustillant (Vino blanco, D.O. Penedes)")
    (Precio 1.0))

([Catering_Class40035] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Masia Bach Estrissimo (Vino blanco, D.O. Catalunya)")
    (Precio 1.9))

([Catering_Class40036] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Galets Rouges (Vino tinto, D.O. Francia)")
    (Precio 1.8))

([Catering_Class40037] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Chateau Montelena Estate (Vino tinto, D.O. California)")
    (Precio 4.0))

([Catering_Class40038] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Araujo Eisele Vineyard (Vino tinto, D.O. California)")
    (Precio 4.0))

([Catering_Class40039] of  Bebida

    (Nombre "Mezzo Mix (Soda)")
    (Precio 4.0))

([Catering_Class40040] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Santa Digna (Vino rosado, D.O. Valle Central)")
    (Precio 1.5))

([Catering_Class40041] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Santa Digna (Vino blanco, D.O. Valle Central)")
    (Precio 1.2))

([Catering_Class40042] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Castell d'Encus SO2 (Vino blanc, D.O. Costers del Segre)")
    (Precio 2.1))

([Catering_Class40044] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Campo di Fiori (Lambrusco, D.O. Italia)")
    (Precio 3.0))

([Catering_Class40045] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Roger de Flor Brut Nature (Cava, D.O. Catalunya)")
    (Precio 4.0))

([Catering_Class40046] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Castillo Perelada (Vino blanco, D.O. Emporda)")
    (Precio 1.0))

([Catering_Class40047] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Sumarroca (Vino rosado, D.O. Catalunya)")
    (Precio 1.5))

([Catering_Class40048] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Sumarroca Blanc de Blancs (Vino blanco, D.O. Penedes)")
    (Precio 1.8))

([Catering_Class40049] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Babot Brut Nature (Cava, D.O. Catalunya)")
    (Precio 1.2))

([Catering_Class40050] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Josep Foraster Els Nanos Collita (Vino tinto, D.O. Conca de Barbera)")
    (Precio 1.2))

([Catering_Class40051] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Castillo de Monjardin Garnacha Vinas Viejas (Vino tinto, D.O. Navarra)")
    (Precio 1.1))

([Catering_Class40052] of  Bebida

    (Alcoholica FALSE)
    (Nombre "Castell del Remei Punt Zero (Vino tinto, D.O. Costers del Segre)")
    (Precio 1.7))

([Catering_Class40053] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Llopart Brut Rose Reserva (Cava rosado, D.O. Catalunya)")
    (Precio 1.2))

([Catering_Class40054] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Llopart Brut Reserva (Cava, D.O. Catalunya)")
    (Precio 1.2))

([Catering_Class40055] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Lorenzo Cachazo Martivilli (Vino blanco, D.O. Rueda)")
    (Precio 1.2))

([Catering_Class40056] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Pares Balta Honeymoon (Vino blanco, D.O. Penedes)")
    (Precio 1.0))

([Catering_Class40057] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Domaene Gobelsburg Niederosterreich Zweigelt (Vino tinto, D.O. Kamptal)")
    (Precio 1.6))

([Catering_Class40058] of  Bebida

    (Alcoholica TRUE)
    (Nombre "El Xitxarello (Vino blanco, D.O. Penedes)")
    (Precio 1.8))

([Catering_Class40059] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Pizzolato Prosecco Treviso (Prosecco, D.O. Veneto)")
    (Precio 1.5))

([Catering_Class40060] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Perlino Fragolino Rosso (Lambrusco, D.O. Italia)")
    (Precio 0.8))

([Catering_Class40061] of  Bebida

    (Alcoholica TRUE)
    (Nombre "Tenuta di Petrolo Inarno (Lambrusco, D.O. Italia)")
    (Precio 1.3))

([Catering_Class40063] of  Bebida

    (Nombre "Agua del grifo")
    (Precio 0.0))

([Catering_Class40064] of  Plato

    (BebidaAsociada [Catering_Class40049])
    (Clasico TRUE)
    (Estacion Otono Invierno Primavera Verano)
    (Ligero TRUE)
    (LugarPlato "Francia")
    (Nombre "Milhojas de fresitas con nata")
    (OrdenPlato Postre)
    (Precio 18.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class40065] of  Plato

    (BebidaAsociada [Catering_Class40059])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Galicia")
    (Nombre "Queso tetilla con membrillo")
    (OrdenPlato Postre)
    (Precio 25.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class40066] of  Plato

    (BebidaAsociada [Catering_Class40029])
    (Caliente TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero FALSE)
    (LugarPlato "Estados Unidos")
    (Nombre "Hamburgusa premium")
    (OrdenPlato Segundo Primero)
    (PlatosNoCompatibles [Catering_Class40066])
    (Precio 20.0)
    (Sibarita TRUE))

([Catering_Class5] of  Plato

    (BebidaAsociada [Catering_Class40020])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Nombre "Filete")
    (OrdenPlato Segundo)
    (Precio 17.0)
    (TipoPlato "Carne"))

([Catering_Class50000] of  Plato

    (BebidaAsociada [Catering_Class40020])
    (Caliente TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Nombre "Coliflor con bechamel")
    (OrdenPlato Primero)
    (Precio 4.0)
    (Vegetariano TRUE))

([Catering_Class50002] of  Plato

    (BebidaAsociada [Catering_Class40044])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Italia")
    (Nombre "Espaguetis a la carbonara")
    (OrdenPlato Primero)
    (Precio 3.0))

([Catering_Class50003] of  Plato

    (BebidaAsociada [Catering_Class30002])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero FALSE)
    (Nombre "Calamares a la romana")
    (OrdenPlato Primero Segundo)
    (PlatosNoCompatibles [Catering_Class50003])
    (Precio 4.5))

([Catering_Class50004] of  Plato

    (BebidaAsociada [Catering_Class40024])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Catalunya")
    (Nombre "Carquinyolis con moscatel")
    (OrdenPlato Postre)
    (Precio 3.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class50005] of  Plato

    (BebidaAsociada [Catering_Class40042])
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Nombre "Pastel de yema y frutas")
    (OrdenPlato Postre)
    (Precio 6.0)
    (Sibarita TRUE)
    (TipoPlato "Pastel")
    (Vegetariano FALSE))

([Catering_Class50006] of  Plato

    (BebidaAsociada [Catering_Class40053])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Brazo de gitano de nata con fresitas")
    (OrdenPlato Postre)
    (Precio 5.0))

([Catering_Class50007] of  Plato

    (BebidaAsociada [Catering_Class20040])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero FALSE)
    (LugarPlato "Espanya")
    (Nombre "Profiteroles con chocolate caliente")
    (OrdenPlato Postre)
    (Precio 5.0))

([Catering_Class50008] of  Plato

    (BebidaAsociada [Catering_Class40054])
    (Clasico TRUE)
    (Estacion Primavera Invierno)
    (Ligero TRUE)
    (LugarPlato "Castilla La Mancha")
    (Nombre "Queso manchego seco")
    (OrdenPlato Postre)
    (Precio 8.0)
    (Sibarita TRUE))

([Catering_Class50009] of  Plato

    (BebidaAsociada [Catering_Class40014])
    (Clasico TRUE)
    (Estacion Verano Primavera Otono Invierno)
    (Ligero TRUE)
    (Nombre "Trufas heladas")
    (OrdenPlato Postre)
    (Precio 9.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class50010] of  Plato

    (BebidaAsociada [Catering_Class40051])
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Catalunya")
    (Nombre "Recuit de drap de Fonteta")
    (OrdenPlato Postre)
    (Precio 9.0)
    (Sibarita TRUE))

([Catering_Class50011] of  Plato

    (BebidaAsociada [Catering_Class40049])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Catalunya")
    (Nombre "Postre de musico con vino rancio")
    (OrdenPlato Postre)
    (Precio 7.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class50012] of  Plato

    (BebidaAsociada [Catering_Class40050])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Francia")
    (Nombre "Canyas rellenas de crema")
    (OrdenPlato Postre)
    (Precio 5.0)
    (Sibarita TRUE))

([Catering_Class50013] of  Plato

    (BebidaAsociada [Catering_Class40017])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Estados Unidos")
    (Nombre "Brownie de la casa con bombon de chocolate")
    (OrdenPlato Postre)
    (Precio 10.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class50014] of  Plato

    (BebidaAsociada [Catering_Class30002])
    (Clasico TRUE)
    (Estacion Verano Primavera Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Catalunya")
    (Nombre "Roscon de nata o cabello de angel")
    (OrdenPlato Postre)
    (Precio 12.0)
    (Sibarita TRUE))

([Catering_Class50015] of  Plato

    (BebidaAsociada [Catering_Class20040])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Galicia")
    (Nombre "Ostras vivas")
    (OrdenPlato Primero Segundo)
    (PlatosNoCompatibles [Catering_Class50015])
    (Precio 25.0)
    (Sibarita TRUE)
    (TipoPlato "Marisco"))

([Catering_Class50016] of  Plato

    (BebidaAsociada [Catering_Class30019])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Galicia")
    (Nombre "Almejas de Carril vivas")
    (OrdenPlato Primero Segundo)
    (PlatosNoCompatibles [Catering_Class50016])
    (Precio 22.0)
    (Sibarita TRUE))

([Catering_Class50017] of  Plato

    (BebidaAsociada [Catering_Class40044])
    (Caliente TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Estados Unidos")
    (Nombre "Mac & Cheese")
    (OrdenPlato Primero Segundo)
    (PlatosNoCompatibles [Catering_Class50017])
    (Precio 7.0)
    (Vegetariano TRUE))

([Catering_Class50018] of  Plato

    (BebidaAsociada [Catering_Class40005])
    (Caliente TRUE)
    (Estacion Primavera Verano Otono Otono)
    (Ligero TRUE)
    (LugarPlato "Turquia")
    (Nombre "Falafel")
    (OrdenPlato Segundo)
    (Precio 6.0)
    (Vegetariano TRUE))

([Catering_Class50019] of  Plato

    (BebidaAsociada [Catering_Class30002])
    (Caliente FALSE)
    (Estacion Primavera Otono Verano Invierno)
    (Ligero TRUE)
    (LugarPlato "Marruecos")
    (Nombre "Taboule")
    (OrdenPlato Primero)
    (Precio 10.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class50020] of  Plato

    (BebidaAsociada [Catering_Class40044])
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Arabia Saudi")
    (Nombre "Baba Ghanoush")
    (OrdenPlato Primero)
    (Precio 12.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class50021] of  Plato

    (BebidaAsociada [Catering_Class40058])
    (Clasico FALSE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Grecia")
    (Nombre "Tzaziki")
    (OrdenPlato Primero)
    (Precio 10.0)
    (Sibarita TRUE)
    (TipoPlato "Sopa")
    (Vegetariano TRUE))

([Catering_Class50022] of  Plato

    (BebidaAsociada [Catering_Class30002])
    (Estacion Primavera Verano Invierno Otono)
    (Ligero TRUE)
    (LugarPlato "Grecia")
    (Nombre "Dolmades")
    (OrdenPlato Primero)
    (Precio 8.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class50023] of  Plato

    (BebidaAsociada [Catering_Class40012])
    (Caliente TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Mejicana")
    (Nombre "Burrito de pollo")
    (OrdenPlato Segundo)
    (Precio 8.0))

([Catering_Class50024] of  Plato

    (BebidaAsociada [Catering_Class40029])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Siria")
    (Nombre "Hummus")
    (OrdenPlato Primero)
    (Precio 9.0)
    (Sibarita FALSE)
    (Vegetariano TRUE))

([Catering_Class50025] of  Plato

    (BebidaAsociada [Catering_Class40018])
    (Caliente TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Italia")
    (Nombre "Melanzane alla parmigiana")
    (OrdenPlato Primero Segundo)
    (PlatosNoCompatibles [Catering_Class50025])
    (Precio 11.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class50027] of  Plato

    (BebidaAsociada [Catering_Class30018])
    (Clasico TRUE)
    (Estacion Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Mejicano")
    (Nombre "Guacamole con totopos")
    (OrdenPlato Primero)
    (Precio 12.5)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class50028] of  Plato

    (BebidaAsociada [Catering_Class40049])
    (Caliente FALSE)
    (Estacion Primavera Verano)
    (Ligero TRUE)
    (LugarPlato "Polonia")
    (Nombre "Borsch (Frio)")
    (OrdenPlato Primero)
    (Precio 8.0)
    (Sibarita TRUE)
    (TipoPlato "Sopa")
    (Vegetariano TRUE))

([Catering_Class50029] of  Plato

    (BebidaAsociada [Catering_Class40049])
    (Caliente TRUE)
    (Estacion Invierno Otono)
    (Ligero TRUE)
    (LugarPlato "Polonia")
    (Nombre "Borsch (Caliente)")
    (OrdenPlato Primero)
    (Precio 8.0)
    (Sibarita TRUE)
    (TipoPlato "Sopa")
    (Vegetariano TRUE))

([Catering_Class50030] of  Plato

    (BebidaAsociada [Catering_Class40033])
    (Caliente TRUE)
    (Complejo TRUE)
    (Estacion Primavera Otono Invierno)
    (LugarPlato "Japon")
    (Nombre "Estofado de coliflor con edamame")
    (OrdenPlato Primero)
    (Precio 10.0)
    (TipoPlato "Estofado")
    (Vegetariano TRUE))

([Catering_Class50031] of  Plato

    (BebidaAsociada [Catering_Class40035])
    (Caliente TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero FALSE)
    (LugarPlato "Espanya")
    (Nombre "Albondigas de berenjena")
    (OrdenPlato Primero)
    (Precio 7.0)
    (Vegetariano TRUE))

([Catering_Class50032] of  Plato

    (BebidaAsociada [Catering_Class30002])
    (Caliente TRUE)
    (Estacion Invierno Otono Verano Primavera)
    (LugarPlato "Japon")
    (Nombre "Nasu Koroke")
    (OrdenPlato Segundo)
    (Precio 11.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class50033] of  Plato

    (BebidaAsociada [Catering_Class40023])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo FALSE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero FALSE)
    (LugarPlato "Japon")
    (Nombre "Oyakodon")
    (OrdenPlato Segundo)
    (Precio 8.0))

([Catering_Class50034] of  Plato

    (BebidaAsociada [Catering_Class30003])
    (Estacion Verano Primavera)
    (Ligero TRUE)
    (LugarPlato "Japon")
    (Nombre "Zarusoba")
    (OrdenPlato Segundo)
    (Precio 14.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class50035] of  Plato

    (BebidaAsociada [Catering_Class40057])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Japon")
    (Nombre "Yakisoba")
    (OrdenPlato Primero)
    (Precio 9.0))

([Catering_Class50036] of  Plato

    (BebidaAsociada [Catering_Class40017])
    (Caliente TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero FALSE)
    (LugarPlato "Japon")
    (Nombre "Okonomiyaki (estilo Hiroshima)")
    (OrdenPlato Primero Segundo)
    (PlatosNoCompatibles [Catering_Class50036])
    (Precio 14.0))

([Catering_Class50037] of  Plato

    (BebidaAsociada [Catering_Class40008])
    (Caliente TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Japon")
    (Nombre "Nasu Dengaku")
    (OrdenPlato Segundo)
    (Precio 16.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class50038] of  Plato

    (BebidaAsociada [Catering_Class40004])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Catalunya")
    (Nombre "Fideos a la cazuela")
    (OrdenPlato Primero)
    (Precio 14.0))

([Catering_Class50039] of  Plato

    (BebidaAsociada [Catering_Class30058])
    (Estacion Verano Primavera)
    (Ligero TRUE)
    (Nombre "Ensalada de langostinos")
    (OrdenPlato Primero)
    (Precio 20.0)
    (Sibarita TRUE))

([Catering_Class50040] of  Plato

    (BebidaAsociada [Catering_Class1])
    (Caliente TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Valencia")
    (Nombre "Paella mixta")
    (OrdenPlato Primero)
    (Precio 25.0)
    (Sibarita FALSE))

([Catering_Class50041] of  Plato

    (BebidaAsociada [Catering_Class20040])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Rusia")
    (Nombre "Caviar Beluga")
    (OrdenPlato Primero)
    (Precio 50.0)
    (Sibarita TRUE)
    (TipoPlato "Pescado"))

([Catering_Class50042] of  Plato

    (BebidaAsociada [Catering_Class40048])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Francia")
    (Nombre "Foie al natural de oca")
    (OrdenPlato Primero)
    (Precio 35.0)
    (Sibarita TRUE))

([Catering_Class50043] of  Plato

    (BebidaAsociada [Catering_Class40004])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Catalunya")
    (Nombre "Arroz a la Cubana con platano")
    (OrdenPlato Primero)
    (Precio 7.0))

([Catering_Class50044] of  Plato

    (BebidaAsociada [Catering_Class40024])
    (Caliente TRUE)
    (Complejo FALSE)
    (Estacion Primavera Verano Invierno Otono)
    (Ligero TRUE)
    (Nombre "Canapes variados")
    (OrdenPlato Primero)
    (Precio 26.0)
    (Sibarita TRUE))

([Catering_Class50045] of  Plato

    (BebidaAsociada [Catering_Class40038])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Otono Verano Invierno)
    (Ligero FALSE)
    (LugarPlato "Catalunya")
    (Nombre "Patates farcides d'Olot")
    (OrdenPlato Primero)
    (Precio 12.0)
    (Sibarita TRUE)
    (TipoPlato "Carne"))

([Catering_Class50046] of  Plato

    (BebidaAsociada [Catering_Class40030])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Invierno)
    (Ligero TRUE)
    (LugarPlato "Catalunya")
    (Nombre "Calcots amb salsa")
    (OrdenPlato Primero)
    (Precio 17.0)
    (Sibarita FALSE)
    (Vegetariano TRUE))

([Catering_Class50047] of  Plato

    (BebidaAsociada [Catering_Class40054])
    (Caliente TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Catalunya")
    (Nombre "Lentejas con salsa de roquefort")
    (OrdenPlato Primero)
    (Precio 15.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class50048] of  Plato

    (BebidaAsociada [Catering_Class30002])
    (Caliente TRUE)
    (Clasico FALSE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Francia")
    (Nombre "Quiche de puerros y apio")
    (OrdenPlato Primero)
    (Precio 6.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class50049] of  Plato

    (BebidaAsociada [Catering_Class40018])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Francia")
    (Nombre "Quiche Lorraine")
    (OrdenPlato Primero)
    (Precio 9.0)
    (Sibarita TRUE))

([Catering_Class6] of  Plato

    (BebidaAsociada [Catering_Class40044])
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

([Catering_Class60004] of  Plato

    (BebidaAsociada [Catering_Class40020])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero FALSE)
    (Nombre "Pure de patatas con bacon")
    (OrdenPlato Primero)
    (Precio 2.0))

([Catering_Class60005] of  Plato

    (BebidaAsociada [Catering_Class30057])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Patatas fritas")
    (OrdenPlato Primero)
    (Precio 1.5)
    (Vegetariano TRUE))

([Catering_Class60006] of  Plato

    (BebidaAsociada [Catering_Class40054])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero FALSE)
    (LugarPlato "Catalunya")
    (Nombre "Escudella barrejada")
    (OrdenPlato Primero)
    (Precio 3.0)
    (Sibarita TRUE)
    (TipoPlato "Sopa"))

([Catering_Class60007] of  Plato

    (BebidaAsociada [Catering_Class40049])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Italia")
    (Nombre "Focaccia")
    (OrdenPlato Primero)
    (Precio 2.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class60008] of  Plato

    (BebidaAsociada [Catering_Class40060])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Italia")
    (Nombre "Pan de ajo")
    (OrdenPlato Primero)
    (Precio 3.0)
    (Vegetariano TRUE))

([Catering_Class60010] of  Plato

    (BebidaAsociada [Catering_Class40037])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Austria")
    (Nombre "Apfelstrudel")
    (OrdenPlato Postre)
    (Precio 3.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class60012] of  Plato

    (BebidaAsociada [Catering_Class40052])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero FALSE)
    (LugarPlato "Malaga")
    (Nombre "Pollo Campero")
    (OrdenPlato Segundo)
    (Precio 4.0)
    (TipoPlato "Carne"))

([Catering_Class60013] of  Plato

    (BebidaAsociada [Catering_Class40046])
    (Caliente TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Rape a la plancha")
    (OrdenPlato Segundo)
    (Precio 6.0)
    (TipoPlato "Pescado"))

([Catering_Class60014] of  Plato

    (BebidaAsociada [Catering_Class30002])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Francia")
    (Nombre "Rape estilo orly")
    (OrdenPlato Segundo)
    (Precio 5.0)
    (Sibarita TRUE)
    (TipoPlato "Pescado"))

([Catering_Class60015] of  Plato

    (BebidaAsociada [Catering_Class40013])
    (Caliente TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Gambas a la gabardina")
    (OrdenPlato Segundo Primero)
    (PlatosNoCompatibles [Catering_Class60015])
    (Precio 13.0)
    (Sibarita TRUE)
    (TipoPlato "Pescado"))

([Catering_Class60016] of  Plato

    (BebidaAsociada [Catering_Class30018])
    (Caliente TRUE)
    (Clasico TRUE)
    (Complejo TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Rusia")
    (Nombre "Entrecot al Strogonoff")
    (OrdenPlato Segundo)
    (Precio 7.0)
    (Sibarita TRUE))

([Catering_Class60017] of  Plato

    (BebidaAsociada [Catering_Class40026])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Nombre "Filete a la pimienta verde")
    (OrdenPlato Segundo)
    (Precio 8.0)
    (Sibarita TRUE))

([Catering_Class60019] of  Plato

    (BebidaAsociada [Catering_Class30012])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Croquetas de espinacas")
    (OrdenPlato Segundo)
    (Precio 6.0)
    (Vegetariano TRUE))

([Catering_Class60020] of  Plato

    (BebidaAsociada [Catering_Class30012])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Croquetas de jamon y pollo")
    (OrdenPlato Segundo)
    (Precio 5.0)
    (Sibarita TRUE)
    (TipoPlato "Carne")
    (Vegetariano FALSE))

([Catering_Class60021] of  Plato

    (BebidaAsociada [Catering_Class30014])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Bunuelos de bacalao")
    (OrdenPlato Segundo Primero)
    (PlatosNoCompatibles [Catering_Class60021])
    (Precio 4.0)
    (Sibarita TRUE)
    (TipoPlato "Pescado"))

([Catering_Class60022] of  Plato

    (BebidaAsociada [Catering_Class30013])
    (Caliente TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Italia")
    (Nombre "Pizza hawaiana")
    (OrdenPlato Segundo Primero)
    (PlatosNoCompatibles [Catering_Class60022])
    (Precio 3.0)
    (Sibarita TRUE)
    (Vegetariano TRUE))

([Catering_Class60023] of  Plato

    (BebidaAsociada [Catering_Class40022])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Espanya")
    (Nombre "Torradas de pan con tomate y jamon serrano")
    (OrdenPlato Primero)
    (Precio 7.0)
    (Sibarita TRUE))

([Catering_Class60024] of  Plato

    (BebidaAsociada [Catering_Class40029])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (LugarPlato "Andalucia")
    (Nombre "Txurrasco de cerdo")
    (OrdenPlato Segundo)
    (Precio 4.0))

([Catering_Class60025] of  Plato

    (BebidaAsociada [Catering_Class40017])
    (Caliente TRUE)
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (LugarPlato "Andalucia")
    (Nombre "Migas")
    (OrdenPlato Primero)
    (Precio 2.0)
    (Sibarita FALSE)
    (Vegetariano TRUE))

([Catering_Class60026] of  Plato

    (BebidaAsociada [Catering_Class40006])
    (Clasico TRUE)
    (Estacion Primavera Verano Otono Invierno)
    (Ligero TRUE)
    (Nombre "Esparragos con mayonesa")
    (OrdenPlato Primero)
    (Precio 1.5)
    (Sibarita TRUE)
    (Vegetariano FALSE))

([Catering_Class7] of  Plato

    (BebidaAsociada [Catering_Class30002])
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

    (BebidaAsociada [Catering_Class40061])
    (Clasico TRUE)
    (Estacion Verano Primavera)
    (Ligero TRUE)
    (Nombre "Helado de sabores")
    (OrdenPlato Postre)
    (Precio 2.0)
    (Sibarita FALSE)
    (Vegetariano TRUE))

([Catering_Class9] of  Plato

    (BebidaAsociada [Catering_Class0])
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
       else FALSE))

(deffunction esFamiliar (?question)
   (bind ?response (ask-question ?question Familiar familiar Congreso congreso))
   (if (or (eq ?response Familiar) (eq ?response familiar))
       then TRUE
       else FALSE))

(deffunction random-elem ( ?li )
   ;(bind ?li (create$ ?li))
   (bind ?max (length ?li))
   (bind ?r (random 1 ?max))
   (bind ?ins (nth$ ?r ?li))
   (return ?ins))

(deffunction calcularPrecio (?p1 ?p2 ?p3 ?bebidas)
    (bind ?sumBebidas 0)
    (loop-for-count (?i 1 (length$ ?bebidas))
        (bind ?var (nth$ ?i ?bebidas))
        (bind ?sumBebidas (+ (send ?var get-Precio) ?sumBebidas)))
    (bind ?precio (+ (send ?p1 get-Precio) (send ?p2 get-Precio) (send ?p3 get-Precio) ?sumBebidas)))

(deffunction getMenu (?nMenu ?c ?l ?v ?e ?s ?te ?re ?pMin ?pMax)

   (bind ?preuAcum 0)
   (if (eq ?te Congreso)
     ;En un congreso, cualquier bebida alcoholicas y no alcoholicas
    then (bind ?bebidas (find-all-instances ((?inst Bebida)) TRUE ))
     ;si no complejo (mucha gente) no alcoholicas
    else (bind ?bebidas (find-all-instances ((?inst Bebida)) (not (eq ?inst:Alcoholica TRUE)))))

    (if (eq ?l si)
    then
        (if (eq ?v si)
          then (if (eq ?c si) ;poca gente -> comida compleja o no
                then (bind ?platos (find-all-instances ((?inst Plato)) (and (eq ?inst:Ligero TRUE) (eq ?inst:Vegetariano TRUE) )))
                else (bind ?platos (find-all-instances ((?inst Plato)) (and (eq ?inst:Ligero TRUE) (eq ?inst:Vegetariano TRUE) (not (eq ?inst:Complejo TRUE)))))
            )
          else (if (eq ?c si)
                    then (bind ?platos (find-all-instances ((?inst Plato)) (eq ?inst:Ligero TRUE)))
                    else (bind ?platos (find-all-instances ((?inst Plato)) (and (eq ?inst:Ligero TRUE) (not (eq ?inst:Complejo TRUE)))))))
    else(
        if (eq ?v si)
            then (if (eq ?c si) ;poca gente -> comida compleja o no
                then (bind ?platos (find-all-instances ((?inst Plato)) (eq ?inst:Vegetariano TRUE)))
                else (bind ?platos (find-all-instances ((?inst Plato)) (and (eq ?inst:Vegetariano TRUE) (not (eq ?inst:Complejo TRUE))))))
            else (if (eq ?c si) ;poca gente -> comida compleja o no
                then (bind ?platos (find-all-instances ((?inst Plato)) TRUE))
                else (bind ?platos (find-all-instances ((?inst Plato)) (not (eq ?inst:Complejo TRUE)))))))

    (if (eq ?re si)
    then (bind ?platosaux (create$ ))
        (loop-for-count (?i 1 (length ?platos))
            (bind ?var (nth$ ?i ?platos))
            (if (not (eq (send ?var get-LugarPlato) "" ))
            then (bind ?platosaux (insert$ ?platosaux 1 ?var))))
        (bind ?platos ?platosaux))

    (if (eq ?s si)
    then
        (bind ?platosaux (create$ ))
        (loop-for-count (?i 1 (length ?platos))
            (bind ?var (nth$ ?i ?platos))
            (if (eq (send ?var get-Sibarita) TRUE )
            then (bind ?platosaux (insert$ ?platosaux 1 ?var))))
        (bind ?platos ?platosaux))
        (bind ?intrvPrecio (- ?pMax ?pMin))

    ;Definicio dels intervals dels menus
    (bind ?minIntrv1 ?pMin)
    (bind ?maxIntrv1 (+ ?pMin (* 0.3333333 ?intrvPrecio)))
    (bind ?minIntrv2 ?maxIntrv1)
    (bind ?maxIntrv2 (+ ?pMin (* 0.6666667 ?intrvPrecio)))
    (bind ?minIntrv3 ?maxIntrv2)
    (bind ?maxIntrv3 ?pMax)

   ;UNA BEBIDA PARA TODO EL MENU
   (if (not (eq ?s si))
    then
        (bind ?bebidasBaratas (create$ ))
        (loop-for-count (?i 1 (length ?bebidas))
             (bind ?var (nth$ ?i ?bebidas))
            (if (<= (send ?var get-Precio) (* 0.05 ?pMax))
                then (bind ?bebidasBaratas (insert$ ?bebidasBaratas 1 ?var))))

        (if (not (eq 0 (length ?bebidasBaratas)))
            then (bind ?bebida (random-elem ?bebidasBaratas) )
                 (bind ?preuAcum (+ ?preuAcum (send ?bebida get-Precio)))
            else (printout t "No hay suficientes platos para cumplir las restricciones para el menu " ?nMenu crlf))

    ;UNA BEBIDA PARA CADA PLATO
    ;SIBARITA Y FAMILIAR
    else ( if (eq ?te Familiar)
            then (bind ?bebidasBaratas (create$ ))
                 (loop-for-count (?i 1 (length ?bebidas))
                      (bind ?var (nth$ ?i ?bebidas))
                     (if (<= (send ?var get-Precio) (* 0.05 ?pMax))
                         then (bind ?bebidasBaratas (insert$ ?bebidasBaratas 1 ?var))
                     )
                 )
                (if (not (eq 0 (length ?bebidasBaratas)))
                 then (bind ?bebidaprimero (random-elem ?bebidasBaratas))
                      (bind ?bebidasegundo (random-elem ?bebidasBaratas))
                      (bind ?bebidapostre (random-elem ?bebidasBaratas))
                      (bind ?preuAcum (+ ?preuAcum (send ?bebidaprimero get-Precio)))
                     (bind ?preuAcum (+ ?preuAcum (send ?bebidasegundo get-Precio)))
                     (bind ?preuAcum (+ ?preuAcum (send ?bebidapostre get-Precio)))
                 else (printout t "No hay suficientes platos para cumplir las restricciones para el menu " ?nMenu crlf))))


   (bind ?primeros (create$ ))
   (loop-for-count (?i 1 (length ?platos))
        (bind ?var (nth$ ?i ?platos))
        (bind ?ordenes (send ?var get-OrdenPlato))
        (bind ?estaciones (send ?var get-Estacion))
        (bind ?preuAct (send ?var get-Precio))

        (if (eq ?s si)
        then ( if (eq ?te Congreso)
                then (bind ?bebidaAct (send ?var get-BebidaAsociada))
                     (bind ?preuAct (+ (send ?bebidaAct get-Precio)(send ?var get-Precio)))
                else (bind ?preuAct (+ (send ?bebidaprimero get-Precio) (send ?var get-Precio)))))

        (if (and (member Primero ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.4 ?minIntrv1)) (<= ?preuAct (* 0.4 ?maxIntrv1)) (eq ?nMenu 1))
            then(bind ?primeros (insert$ ?primeros 1 ?var)))
        (if (and (member Primero ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.4 ?minIntrv2)) (<= ?preuAct (* 0.4 ?maxIntrv2)) (eq ?nMenu 2))
            then(bind ?primeros (insert$ ?primeros 1 ?var)))
        (if (and (member Primero ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.4 ?minIntrv3)) (<= ?preuAct (* 0.4 ?maxIntrv3)) (eq ?nMenu 3))
            then(bind ?primeros (insert$ ?primeros 1 ?var))))


   (bind ?segundos (create$ ))
   (loop-for-count (?i 1 (length ?platos))
        (bind ?var (nth$ ?i ?platos))
        (bind ?ordenes (send ?var get-OrdenPlato))
        (bind ?estaciones (send ?var get-Estacion))
        (bind ?preuAct (send ?var get-Precio))


        (if (eq ?s si)
        then ( if (eq ?te Congreso)
                then (bind ?bebidaAct (send ?var get-BebidaAsociada))
                     (bind ?preuAct (+ (send ?bebidaAct get-Precio)(send ?var get-Precio)))
                else (bind ?preuAct (+ (send ?bebidasegundo get-Precio) (send ?var get-Precio)))))

        (if (and (member Segundo ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.4 ?minIntrv1)) (<= ?preuAct (* 0.4 ?maxIntrv1)) (eq ?nMenu 1))
            then(bind ?segundos (insert$ ?segundos 1 ?var)))
        (if (and (member Segundo ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.4 ?minIntrv2)) (<= ?preuAct (* 0.4 ?maxIntrv2)) (eq ?nMenu 2))
            then(bind ?segundos (insert$ ?segundos 1 ?var)))
        (if (and (member Segundo ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.4 ?minIntrv3)) (<= ?preuAct (* 0.4 ?maxIntrv3)) (eq ?nMenu 3))
            then(bind ?segundos (insert$ ?segundos 1 ?var))))


   (bind ?postres (create$ ))
   (loop-for-count (?i 1 (length ?platos))
        (bind ?var (nth$ ?i ?platos))
        (bind ?ordenes (send ?var get-OrdenPlato))
        (bind ?estaciones (send ?var get-Estacion))
        (bind ?preuAct (send ?var get-Precio))

        (if (eq ?s si)
        then ( if (eq ?te Congreso)
                then       (bind ?bebidaAct (send ?var get-BebidaAsociada) )
                        (bind ?preuAct (+ (send ?bebidaAct get-Precio)(send ?var get-Precio)))
                else (bind ?preuAct (+ (send ?bebidapostre get-Precio) (send ?var get-Precio)))))

        (if (and (member Postre ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.2 ?minIntrv1)) (<= ?preuAct (* 0.2 ?maxIntrv1)) (eq ?nMenu 1))
            then(bind ?postres (insert$ ?postres 1 ?var)))
        (if (and (member Postre ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.2 ?minIntrv2)) (<= ?preuAct (* 0.2 ?maxIntrv2))  (eq ?nMenu 2))
            then(bind ?postres (insert$ ?postres 1 ?var)))
        (if (and (member Postre ?ordenes) (member ?e ?estaciones) (>= ?preuAct (* 0.2 ?minIntrv3)) (<= ?preuAct (* 0.2 ?maxIntrv3))  (eq ?nMenu 3))
            then(bind ?postres (insert$ ?postres 1 ?var))))

    (if  (or (eq 0 (length ?primeros))(eq 0 (length ?segundos))(eq 0 (length ?postres)))
        then (printout t "No hay suficientes platos para cumplir las restricciones para el menu " ?nMenu crlf)
        else (bind ?primero (random-elem ?primeros))
               (bind ?listbebidas (create$ ))

               (if (eq ?s si)
                   then (if (eq ?te Congreso)
                        then (bind ?listbebidas (insert$ ?listbebidas 1 (send ?primero get-BebidaAsociada)) )
                        else (bind ?listbebidas (insert$ ?listbebidas 1 ?bebidaprimero))))
               (bind ?preuAcum (+ ?preuAcum (send ?primero get-Precio)))

               (bind ?segundoscompatibles (create$ ))
               (loop-for-count (?i 1 (length ?segundos))
                    (bind ?var (nth$ ?i ?segundos))
                    (if (not(member ?var (send ?primero get-PlatosNoCompatibles)))
                        then (bind ?segundoscompatibles (insert$ ?segundoscompatibles 1 ?var))))
                        
               (bind ?segundo (random-elem ?segundoscompatibles) )
               (if (eq ?s si)
                   then (if (eq ?te Congreso)
                        then (bind ?listbebidas (insert$ ?listbebidas 1 (send ?segundo get-BebidaAsociada)) )
                        else (bind ?listbebidas (insert$ ?listbebidas 1 ?bebidasegundo))))

               (bind ?preuAcum (+ ?preuAcum (send ?segundo get-Precio)))

               (bind ?postrescompatibles (create$ ))
               (loop-for-count (?i 1 (length ?postres))
                    (bind ?var (nth$ ?i ?postres))
                    (if (and (not(member ?var (send ?primero get-PlatosNoCompatibles))) (not(member ?var (send ?segundo get-PlatosNoCompatibles))))
                        then (bind ?postrescompatibles (insert$ ?postrescompatibles 1 ?var))))

               (bind ?postre (random-elem ?postrescompatibles) )

               (if (eq ?s si)
                   then (if (eq ?te Congreso)
                        then (bind ?listbebidas (insert$ ?listbebidas 1 (send ?postre get-BebidaAsociada)) )
                        else (bind ?listbebidas (insert$ ?listbebidas 1 ?bebidapostre))))
                        
               (bind ?preuAcum (+ ?preuAcum (send ?postre get-Precio)))

               (if (eq ?s si)
                then (assert (menu (numMenu ?nMenu) (primer-plato ?primero) (segundo-plato ?segundo) (postre ?postre) (lista-bebidas ?listbebidas)))
					 (printout t "Generado el fact menu " ?nMenu " junto a la informacion de los platos y bebidas" crlf)
					
                else (assert (menu (numMenu ?nMenu) (primer-plato ?primero) (segundo-plato ?segundo) (postre ?postre) (lista-bebidas ?bebida)))
					 (printout t "Generado el fact menu " ?nMenu " junto a la informacion de los platos y bebidas" crlf))))

;;;;;;;;;;;;;;  QUERIES ;;;;;;;;;;;;;;;;
; SALIENCE = 10

(defrule preguntar-tipo-evento
 (declare (salience 10))
 =>
 (if (esComida "Es una comida o una cena? (Comida/Cena) ")
  then (if (esFamiliar "Es un evento familiar o un congreso? (Familiar/Congreso) ")
          then (assert (tipoEvento Familiar)) (assert (turno Comida))
		  	   (printout t "Generados los facts tipoEvento -> Familiar y turno -> Comida" crlf)
          else (assert (tipoEvento Congreso)) (assert (turno Comida))
		  	   (printout t "Generados los facts tipoEvento -> Congreso y turno -> Comida" crlf))
  else (if (esFamiliar "Es un evento familiar o un congreso? (Familiar/Congreso) ")
          then (assert (tipoEvento Familiar)) (assert (turno Cena))
		  	   (printout t "Generados los facts tipoEvento -> Familiar y turno -> Cena" crlf)
          else (assert (tipoEvento Congreso)) (assert (turno Cena))
		   	   (printout t "Generados los facts tipoEvento -> Familiar y turno -> Comida" crlf))))
		  		
		  	  
(defrule preguntar-estacion
 (declare (salience 10))
 =>
 (printout t "En qué estación será el evento? " crlf)
 (printout t "Primavera" crlf)
 (printout t "Verano" crlf)
 (printout t "Otono" crlf)
 (printout t "Invierno" crlf)
 (bind ?estacion (read))
 (assert (estacion ?estacion))
 (printout t "Generado el fact estacion -> " ?estacion crlf))

(defrule preguntar-comensales
 (declare (salience 10))
 =>
 (printout t "Cuantos comensales? ")
 (bind ?numComs (read))
 (assert (numComs ?numComs))
 (printout t "Generado el fact numero de comensales numComs -> " ?numComs crlf))

(defrule preguntar-precio-max
 (declare (salience 10))
 =>
 (printout t "Cual es el maximo presupuesto por persona? ")
 (bind ?precioMax (read))
 (assert (precioMax ?precioMax))
 (printout t "Generado el fact precio maximo por persona precioMax -> " ?precioMax crlf))

(defrule preguntar-precio-min
 (declare (salience 10))
 =>
 (printout t "Cual es el minimo presupuesto por persona? ")
 (bind ?precioMin (read))
 (assert (precioMin ?precioMin))
 (printout t "Generado el fact precio minimo por persona precioMin -> " ?precioMin crlf))

(defrule preguntar-vegetariano
 (declare (salience 10))
 =>
 (if (yes-or-no-p "Quieres un menu vegetariano? (si/no) ")
 then (assert (vegetariano si))
 	  (printout t "Generado el fact vegetariano -> si" crlf)
 else (assert (vegetariano no))
      (printout t "Generado el fact vegetariano -> no" crlf)))

 (defrule preguntar-sibarita
 (declare (salience 10))
 =>
 (if (yes-or-no-p "Quieres un menu sibarita? (si/no) ")
 then (assert (sibarita si))
      (printout t "Generado el fact sibarita -> si" crlf)
 else (assert (sibarita no))
      (printout t "Generado el fact sibarita -> no" crlf)))

 (defrule preguntar-regional
 (declare (salience 10))
 =>
 (if (yes-or-no-p "Quieres un menu con platos de diferentes regiones? (si/no) ")
 then (assert (regional si))
      (printout t "Generado el fact regional -> si" crlf)
 else (assert (regional no))
      (printout t "Generado el fact regional -> no" crlf)))

;;;;;;;;;;;;; CONCLUSIONS ;;;;;;;;;;;;;;
; NO SALIENCE
; DEFAULTS:
;;;;;;;;; una bebida
; denso
; no vegetariano

(defrule complejidad
   (numComs ?nC)
   =>
   (if (< ?nC 50)
   then (assert (complejo si))
   		(printout t "Generado el fact complejo -> si" crlf)
   else (assert (complejo no))
   		(printout t "Generado el fact complejo -> no" crlf)))

(defrule ligereza
   (turno ?te)
   =>
   (if( eq ?te Cena)
   then (assert (ligero si))
        (printout t "Generado el fact ligero -> si" crlf)
   else (assert (ligero no))
		(printout t "Generado el fact ligero -> no" crlf)))

;;;;;;;;;; FINAL ;;;;;;;;;;;;;;;;
; SALIENCE -10
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
    (getMenu 1 ?c ?l ?v ?e ?s ?te ?re ?pMin ?pMax)
    (getMenu 2 ?c ?l ?v ?e ?s ?te ?re ?pMin ?pMax)
    (getMenu 3 ?c ?l ?v ?e ?s ?te ?re ?pMin ?pMax))

(defrule printMenu
    ?menu <- (menu (numMenu ?n) (primer-plato ?p1) (segundo-plato ?s1) (postre ?po1) (lista-bebidas $?bs1))
    =>
    (printout t "Menu " ?n ": " crlf)
    (printout t "Bebida(s): " )
    (loop-for-count (?i 1 (length$ ?bs1))
        (bind ?var (nth$ ?i ?bs1))
        (printout t (send ?var get-Nombre) ", "))
    (printout t crlf)
    (printout t "Primer plato: " (send ?p1 get-Nombre) crlf)
    (printout t "Segundo plato: " (send ?s1 get-Nombre) crlf)
    (printout t "Postre: " (send ?po1 get-Nombre) crlf)
    (printout t "Precio: " (calcularPrecio ?p1 ?s1 ?po1 ?bs1) crlf crlf)
    (retract ?menu))
