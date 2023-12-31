# M2952_PAC2

En aquesta PAC explorem tres tipus de visualitzacions: el Heatmap, el diagrama de Voronoi i el Tile Grid Map.

Per cadascuna de les visualitzacions s'ha escollit un dataset en el qual poguem aplicar una de les tècniques.

**HEATMAP**

Per a la representació del heatmap s'han fet ús de les dades del repositori https://www.kaggle.com/datasets/ultimus/football-wages-prediction/

![HeatMap](https://github.com/Gamaor4/M2952_PAC2/assets/150432861/9d8bac86-7cb8-4d20-a677-7548646eabdb)

De forma senzilla en el heatmap hem representat els valors de lligues de futbol i posició en el camp. El color (valor) utilitzat representa l'edat de cada posició en cada lliga.
D'aquesta manera podem veure en quina lliga tenen la posició amb major i menor edat.

**Tile Grid Map**

![TileGridMap](https://github.com/Gamaor4/M2952_PAC2/assets/150432861/1108a695-15be-40d6-893d-8d7035cf982e)

Per al Tile Grid Map s'han fet ús de les dades del repositori https://www.kaggle.com/code/xvivancos/discovering-barcelona-part-ii#data-sets-used i específicament les relacionades amb accidents https://opendata-ajuntament.barcelona.cat/data/en/dataset/accidents-gu-bcn.

En aquestes dades s'ha aprofitat que estan els elements de longitud i latitud per poder ubicar els punts en la visualització. Després s'han creat les formes i es mostren sobre d'elles el valor del codi del districte.
En un pas més avançat es podria superposar el mapa de Barcelona per veure que la forma que generen els punts coincideix amb la ciutat.
En el procés de programar la visualització s'ha seguit el codi utilitzat en https://www.maartenlambrechts.com/2017/10/22/tutorial-a-worldtilegrid-with-ggplot2.html

**Diagrama de Voronoi**

![Voronoi Diagram](https://github.com/Gamaor4/M2952_PAC2/assets/150432861/56df3300-0d81-4860-b045-1ee56fafaf38)

Per al diagrama de Voronoi s'ha creat un conjunt de dades seguint un projecte anterior https://stackoverflow.com/questions/47203587/r-delimit-a-voronoi-diagram-according-to-a-map. En el nostre cas s'ha adapatat a les 7 ciutats més poblades d'Espanya.
Un cop afegides les dades s'ha aplicat el codi necessari per representar el diagrama.
