# Paqueterías
library(ggplot2)

# Cargar archivos
df_rep1 <- read.csv(file = "/home/kaz-bits/Desktop/WSR_FILES/DATA/CLEAN/rep1_normalized.csv",
                   header = TRUE)

df_rep2 <- read.csv(file = "/home/kaz-bits/Desktop/WSR_FILES/DATA/CLEAN/rep2_normalized.csv",
                   header = TRUE)

df_rep3 <- read.csv(file = "/home/kaz-bits/Desktop/WSR_FILES/DATA/CLEAN/rep3_normalized.csv",
                   header = TRUE)

# Cambiar nombres de las columnas
names(df_rep1)[1] <- "Wavelength"
names(df_rep2)[1] <- "Wavelength"
names(df_rep3)[1] <- "Wavelength"

# Vector de colores
color_lines <- c("#bef7ff", "#81ade2", "#4562c5", "#0818a8")

# Generar vector para agregar a la leyenda
NaCl_lines <- c("0", "0.5", "1", "1.5")

# Guardar elementos repetidos del gráfico en una función
spectrum_aes <- function() {
  list(
    # Compound 0 mM
    geom_line(aes(x = Wavelength, y = Compound_1,
                  color = "0"), size = 0.8),
      # Compound 200 mM
      geom_line(aes(x = Wavelength, y = Compound_2,
                    color = "0.2"), size = 0.8),
      # Compound 400 mM
      geom_line(aes(x = Wavelength, y = Compound_3,
                    color = "0.4"), size = 0.8),
      # Compound 600 mM
      geom_line(aes(x = Wavelength, y = Compound_4,
                    color = "0.6"), size = 0.8),
      # Agregar las modificaciones
      # Modificaciones extra
      theme_bw(),
      labs(x = "wavelength (nm)", y = "Normalized\nfluorescence"),
      theme(axis.title = element_text(size = 14),
            axis.text = element_text(size = 12),
            legend.title = element_text(size = 14),
            legend.text = element_text(size = 12),
            panel.grid = element_blank()),
      scale_color_manual(name = "[Compound] (mM)",
                         values = color_lines, 
                         label = NaCl_lines)
  )
}


# Crear gráficos con la función spectrum_aes
# Gráfico 1
ggplot(data = df_rep1[seq(1, 91, 5), ]) +
  spectrum_aes()

# Gráfico 2
ggplot(data = df_rep2[seq(1, 91, 5), ]) +
  spectrum_aes()

# Gráfico 3
ggplot(data = df_rep3[seq(1, 91, 5), ]) +
  spectrum_aes()

# Guardar gráfico
ggsave(filename = "/home/kaz-bits/Desktop/spectrum_rep1.pdf", 
       device = "pdf", units = "in", width = 6, height = 4, 
       dpi = 450)
