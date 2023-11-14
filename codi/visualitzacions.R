#Heatmap

library(ggplot2)
salary <- read.csv('C:/Users/Usuario/OneDrive/Documents/UOC/master_ciencia_dades/M2.959_Visualitzacio_de_dades/PAC2/SalaryPrediction.csv')

ggplot(salary, aes(x = League, y = Position, fill = Age)) +
  geom_tile() +
  scale_fill_gradient(low = "lightblue", high = "red") +
  labs(x = "Lliga", y = "Posició", fill = "Edat",
       title = "Heatmap")

#Tile grid map

library(ggmap)
accidents <- read.csv("C:/Users/Usuario/OneDrive/Documents/UOC/master_ciencia_dades/M2.959_Visualitzacio_de_dades/PAC2/2022_accidents_gu_bcn.csv")
gpotato <- ggplot(accidents, aes(aes(xmin = Longitud, ymin = Latitud,
                                   xmax = Longitud + 0.5, ymax = Latitud + 0.5))) +
  geom_rect()

indice <- sample(1:nrow(accidents), 500, replace = FALSE) #agafem una mostra de 500 valors aleatoris
subconjunto <- accidents[indice, ] #Creem un nou subconjunt de les dades originals

mytheme <- theme_minimal() + theme(panel.grid = element_blank(), axis.text = element_blank(), axis.title = element_blank())
ggplot(subconjunto, aes(xmin = Longitud, ymin = Latitud,
                        xmax = Longitud+0.0025, ymax = Latitud+0.005, fill = Numero_victimes )) +
  geom_rect(color = "#ffffff") +
  mytheme +
  geom_text(aes(x = Longitud, y = Latitud, label = Codi_districte), color = "white", alpha = 0.5,  nudge_x = 0.0014, nudge_y = 0.0025, size = 3) +
  theme(legend.position = "right") +
  labs(fill = "Nº victimes")

#Diagrama de Voronoi

library(terra)
library(sp)

#Creem un dataset de les 7 ciutats més poblades d'Espanya
ciutats <- data.frame(
  Ciutat = c("Madrid", "Barcelona", "València", "Sevilla", "Saragossa", "Màlaga", "Múrcia"),
  Latitud = c(40.4168, 41.3851, 39.4699, 37.3891, 41.6488, 36.7213, 37.9922),
  Longitud = c(-3.7038, 2.1734, -0.3763, -5.9845, -0.8773, -4.4214, -1.1300)
)
coordinates(ciutats) <- ~Longitud+Latitud
proj4string(ciutats) <- CRS("+proj=longlat +datum=WGS84")
d <- vect(ciutats)

library(geodata)
esp <- gadm(country='ESP', level=1, path=".")

prj <- "+proj=lcc +lat_1=40 +lat_0=40 +lon_0=-3 +k_0=0.9988085293 +x_0=600000 +y_0=600000 +ellps=intl +units=m"
dp <- project(d, prj)
esp2 <- project(esp, prj)

v <- voronoi(dp, esp2)
vesp <- crop(v, esp2)
vor <- project(vesp, "+proj=longlat")

plot(vor, "Ciutat")
points(ciutats, pch = 20, col = "orange", cex = 1)
