Open <- read.csv('Clasificacion-Incidentes-2026-r.csv')
summary(Open)

#Si quieres editar manualmente
fix(Open)

#Si está vacío → poner ‘Medio’
Open$Ambiente[Open$Ambiente == ""] <- "Medio"

#Convertir tipo de columna
Open$Fecha_Apertura <- as.Date(Open$Fecha_Apertura, format="%d/%m/%Y")
