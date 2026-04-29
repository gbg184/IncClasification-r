# ========================
# 1. Cargar paquetes
# ========================
library(data.table)

# ========================
# 2. Leer el archivo CSV
# ========================
# Corrige la ruta: usa / o \\  (no mezcles \ simples)
dt <- fread(
  "C:/Users/GregBennett/OneDrive - kyndryl/Documents/RStudio/Clasificacion de inidentes/Clasificacion-Incidentes-2026-r.csv",
  encoding = "UTF-8"
)

# ========================
# 3. Verificar que se leyó correctamente
# ========================
print("Dimensiones del archivo:")
print(dim(dt))

print("Nombre de las columnas alrededor de AH (columna 34):")
print(names(dt)[30:38])

# ========================
# 4. Asegurarnos que sea data.table
# ========================
setDT(dt)

# ========================
# 5. Reemplazar el valor en la celda AH8888
# ========================
# Opción recomendada: usando número de columna
dt[8888, 34 := "BANISTMO S.A"]

# Alternativa usando nombre de columna (más segura y legible):
# dt[8888, Empresa := "BANISTMO S.A"]     # descomenta si sabes el nombre exacto

# ========================
# 6. Guardar el archivo corregido
# ========================
fwrite(dt, 
       file = "Clasificacion-Incidentes-2026-r_CORREGIDO.csv", 
       bom = TRUE, 
       sep = "auto",  
       encoding = "UTF-8")

cat("✅ ¡Listo! Archivo guardado correctamente como:\n")
cat("   Clasificacion-Incidentes-2026-r_CORREGIDO.csv\n")
print(getwd())   # Muestra dónde se guardó el archivo
