# Cargar paqeterías necesarias
library(ggplot2)

# Cargar archivo
df_reps <- read.csv(file = "/media/kaz-bits/TOSHIBA EXT/WSR_FILES/DATA/CLEAN/all_data_boxplot.csv", 
                    header = TRUE)

# Generar paleta de colores
color_boxplot <- c("#add8e6", "#7698d1", "#5b78c7", "#2438b2")
                            
# Pruebas estadísticas
# Prueba t.test para 0 vs 0.5
p1 <- t.test(df_reps[df_reps$Tratamiento == 0, ]$Normalización, 
             df_reps[df_reps$Tratamiento == 0.5, ]$Normalización)[[3]]


# Prueba t.test para 0 vs 1 
p2 <- t.test(df_reps[df_reps$Tratamiento == 0, ]$Normalización, 
             df_reps[df_reps$Tratamiento == 1, ]$Normalización)[[3]]


# Prueba t.test para 0 vs 1.5
p3 <- t.test(df_reps[df_reps$Tratamiento == 0, ]$Normalización, 
             df_reps[df_reps$Tratamiento == 1.5, ]$Normalización)[[3]]

# Nivel de significancia
signif_level <- c(ns = 1, "*" = 0.05, "**" = 0.01, 
                  "***" = 0.001, "****" = 0.0001)


# Juntar los valores de "p" de cada condición
a <- c(p1, p2, p3)

# Evaluar el valor de p de las concentraciones
# Para 0 vs 0.5
i <- c(a[1] > 0.05, a[1] <= 0.05, a[1] <= 0.01, a[1] <= 0.001, a[1] <= 0.0001)

# Para 0 vs 1
h <- c(a[2] > 0.05, a[2] <= 0.05, a[2] <= 0.01, a[2] <= 0.001, a[2] <= 0.0001)

# Para 0 vs 1.5
j <- c(a[3] > 0.05, a[3] <= 0.05, a[3] <= 0.01, a[3] <= 0.001, a[3] <= 0.0001)

#Extraer los simbolos de significancia del valor de probabilidad anterior
p1_box <- (names(signif_level[i]))[length((names(signif_level[i])))] #p1
p2_box <- (names(signif_level[h]))[length((names(signif_level[h])))] #p2
p3_box <- (names(signif_level[j]))[length((names(signif_level[j])))] #p3

# Construir gráfico
# Convertir columna de tratamiento a factor
df_reps$Tratamiento <- as.factor(df_reps$Tratamiento)

# Obtener escala de los ejes
ymax_axis <- max(df_reps$Normalización)
ymin_axis <- min(df_reps$Normalización)

# Gráfico de cajas  
plot <- ggplot(data = df_reps) +
  # Gráfico de cajas
  geom_boxplot(aes(x = Tratamiento, y = Normalización, 
                   group = Tratamiento), fill = color_boxplot,
               outlier.shape = NA) +
  # Gráfico de puntos
  geom_jitter(aes(x = Tratamiento, y = Normalización, 
                  group = Tratamiento), color = "black") +
  # Modificaciones extra
  labs(x = "[Compuesto] (mM)", y = "Normalización") +
  theme_bw() +
  theme(axis.title = element_text(size = 14),
        axis.text = element_text(size = 12),
        panel.grid = element_blank()) +
  coord_cartesian(ylim = c(0.85, 2)) +
  scale_y_continuous(breaks = seq(0.85, 2, 0.5)) +
  annotate(geom = "text", x = 2, y = 1.40, label = p1_box) +
  annotate(geom = "text", x = 3, y = 1.85, label = p2_box) +
  annotate(geom = "text", x = 4, y = 1.93, label = p3_box)

# Guardar gráfico
ggsave(plot = plot, filename = "boxplot_all_data.png", device = "png", 
       width = 6, height = 4, units = "in", dpi = 400) 
