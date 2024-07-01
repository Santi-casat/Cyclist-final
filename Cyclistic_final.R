#Cargar los datos por mes 
X202306_divvy_tripdata <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/202306-divvy-tripdata/202306-divvy-tripdata.csv")
X202307_divvy_tripdata <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/202307-divvy-tripdata/202307-divvy-tripdata.csv")
X202308_divvy_tripdata <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/202308-divvy-tripdata/202308-divvy-tripdata.csv")
X202309_divvy_tripdata <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/202309-divvy-tripdata/202309-divvy-tripdata.csv")
X202310_divvy_tripdata <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/202310-divvy-tripdata/202310-divvy-tripdata.csv")
X202311_divvy_tripdata <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/202311-divvy-tripdata/202311-divvy-tripdata.csv")
X202312_divvy_tripdata <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/202312-divvy-tripdata/202312-divvy-tripdata.csv")
X202401_divvy_tripdata <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/202401-divvy-tripdata/202401-divvy-tripdata.csv")
X202402_divvy_tripdata <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/202402-divvy-tripdata/202402-divvy-tripdata.csv")
X202403_divvy_tripdata <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/202403-divvy-tripdata/202403-divvy-tripdata.csv")
X202404_divvy_tripdata <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/202404-divvy-tripdata/202404-divvy-tripdata.csv")
X202405_divvy_tripdata <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/202405-divvy-tripdata/202405-divvy-tripdata.csv")

#Cargar los datos por cuatrimestre 
Divvy_Trips_2019_Q1 <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/Divvy_Trips_2019_Q1/Divvy_Trips_2019_Q1.csv")
Divvy_Trips_2019_Q2 <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/Divvy_Trips_2019_Q2/Divvy_Trips_2019_Q2.csv")
Divvy_Trips_2019_Q3 <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/Divvy_Trips_2019_Q3/Divvy_Trips_2019_Q3.csv")
Divvy_Trips_2019_Q4 <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/Divvy_Trips_2019_Q4/Divvy_Trips_2019_Q4.csv")
Divvy_Trips_2020_Q1 <- read.csv("C:/Users/LENOVO/Desktop/Coso/Curso data/Proyecto final Cyclist/Divvy_Trips_2020_Q1/Divvy_Trips_2020_Q1.csv")

#Renombrar todas las tablas
library(dplyr)
june_2023 <- X202306_divvy_tripdata
july_2023 <- X202307_divvy_tripdata
august_2023 <- X202308_divvy_tripdata
september_2023 <- X202309_divvy_tripdata
october_2023 <- X202310_divvy_tripdata
november_2023 <- X202311_divvy_tripdata
december_2023 <- X202312_divvy_tripdata
january_2024 <- X202401_divvy_tripdata
february_2024 <- X202402_divvy_tripdata
march_2024 <- X202403_divvy_tripdata
april_2024 <- X202404_divvy_tripdata
may_2024 <- X202405_divvy_tripdata

q1_2019 <- Divvy_Trips_2019_Q1
q2_2019 <- Divvy_Trips_2019_Q2
q3_2019 <- Divvy_Trips_2019_Q3
q4_2019 <- Divvy_Trips_2019_Q4
q1_2020 <- Divvy_Trips_2020_Q1

june_2023 <- june_2023 %>%
  mutate(
    started_at = as.POSIXct(started_at, format="%Y-%m-%d %H:%M:%S"),
    ended_at = as.POSIXct(ended_at, format="%Y-%m-%d %H:%M:%S")
  )
# Calcular la duración del viaje en segundos
june_2023 <- june_2023 %>%
  mutate(ride_length = ended_at - started_at)
# Convertir la duración a minutos
june_2023 <- june_2023 %>%
  mutate(ride_length_minutes = as.numeric(ride_length) / 60)

july_2023 <- july_2023 %>%
  mutate(
    started_at = as.POSIXct(started_at, format="%Y-%m-%d %H:%M:%S"),
    ended_at = as.POSIXct(ended_at, format="%Y-%m-%d %H:%M:%S")
  )

july_2023 <- july_2023 %>%
  mutate(ride_length = ended_at - started_at)

july_2023 <- july_2023 %>%
  mutate(ride_length_minutes = as.numeric(ride_length) / 60)

august_2023 <- august_2023 %>%
  mutate(
    started_at = as.POSIXct(started_at, format="%Y-%m-%d %H:%M:%S"),
    ended_at = as.POSIXct(ended_at, format="%Y-%m-%d %H:%M:%S")
  )

august_2023 <- august_2023 %>%
  mutate(ride_length = ended_at - started_at)

august_2023 <- august_2023 %>%
  mutate(ride_length_minutes = as.numeric(ride_length) / 60)

september_2023 <- september_2023 %>%
  mutate(
    started_at = as.POSIXct(started_at, format="%Y-%m-%d %H:%M:%S"),
    ended_at = as.POSIXct(ended_at, format="%Y-%m-%d %H:%M:%S")
  )

september_2023 <- september_2023 %>%
  mutate(ride_length = ended_at - started_at)

september_2023 <- september_2023 %>%
  mutate(ride_length_minutes = as.numeric(ride_length) / 60)

october_2023 <- october_2023 %>%
  mutate(
    started_at = as.POSIXct(started_at, format="%Y-%m-%d %H:%M:%S"),
    ended_at = as.POSIXct(ended_at, format="%Y-%m-%d %H:%M:%S")
  )

october_2023 <- october_2023 %>%
  mutate(ride_length = ended_at - started_at)

october_2023 <- october_2023 %>%
  mutate(ride_length_minutes = as.numeric(ride_length) / 60)

november_2023 <- november_2023 %>%
  mutate(
    started_at = as.POSIXct(started_at, format="%Y-%m-%d %H:%M:%S"),
    ended_at = as.POSIXct(ended_at, format="%Y-%m-%d %H:%M:%S")
  )

november_2023 <- november_2023 %>%
  mutate(ride_length = ended_at - started_at)

november_2023 <- november_2023 %>%
  mutate(ride_length_minutes = as.numeric(ride_length) / 60)

december_2023 <- december_2023 %>%
  mutate(
    started_at = as.POSIXct(started_at, format="%Y-%m-%d %H:%M:%S"),
    ended_at = as.POSIXct(ended_at, format="%Y-%m-%d %H:%M:%S")
  )

december_2023 <- december_2023 %>%
  mutate(ride_length = ended_at - started_at)

december_2023 <- december_2023 %>%
  mutate(ride_length_minutes = as.numeric(ride_length) / 60)

january_2024 <- january_2024 %>%
  mutate(
    started_at = as.POSIXct(started_at, format="%Y-%m-%d %H:%M:%S"),
    ended_at = as.POSIXct(ended_at, format="%Y-%m-%d %H:%M:%S")
  )

january_2024 <- january_2024 %>%
  mutate(ride_length = ended_at - started_at)

january_2024 <- january_2024 %>%
  mutate(ride_length_minutes = as.numeric(ride_length) / 60)

february_2024 <- february_2024 %>%
  mutate(
    started_at = as.POSIXct(started_at, format="%Y-%m-%d %H:%M:%S"),
    ended_at = as.POSIXct(ended_at, format="%Y-%m-%d %H:%M:%S")
  )

february_2024 <- february_2024 %>%
  mutate(ride_length = ended_at - started_at)

february_2024 <- february_2024 %>%
  mutate(ride_length_minutes = as.numeric(ride_length) / 60)

march_2024 <- march_2024 %>%
  mutate(
    started_at = as.POSIXct(started_at, format="%Y-%m-%d %H:%M:%S"),
    ended_at = as.POSIXct(ended_at, format="%Y-%m-%d %H:%M:%S")
  )

march_2024 <- march_2024 %>%
  mutate(ride_length = ended_at - started_at)

march_2024 <- march_2024 %>%
  mutate(ride_length_minutes = as.numeric(ride_length) / 60)

april_2024 <- april_2024 %>%
  mutate(
    started_at = as.POSIXct(started_at, format="%Y-%m-%d %H:%M:%S"),
    ended_at = as.POSIXct(ended_at, format="%Y-%m-%d %H:%M:%S")
  )

april_2024 <- april_2024 %>%
  mutate(ride_length = ended_at - started_at)

april_2024 <- april_2024 %>%
  mutate(ride_length_minutes = as.numeric(ride_length) / 60)

may_2024 <- may_2024 %>%
  mutate(
    started_at = as.POSIXct(started_at, format="%Y-%m-%d %H:%M:%S"),
    ended_at = as.POSIXct(ended_at, format="%Y-%m-%d %H:%M:%S")
  )

may_2024 <- may_2024 %>%
  mutate(ride_length = ended_at - started_at)

may_2024 <- may_2024 %>%
  mutate(ride_length_minutes = as.numeric(ride_length) / 60)



#Calcular la media de ride_lenght sacando valores nulos y negativos
mean_ride_length_june <- mean(june_2023$ride_length_minutes[june_2023$ride_length_minutes >= 0], na.rm = TRUE)
print(mean_ride_length_june)
mean_ride_length_july <- mean(july_2023$ride_length_minutes[july_2023$ride_length_minutes >= 0], na.rm = TRUE)
print(mean_ride_length_july)
mean_ride_length_august <- mean(august_2023$ride_length_minutes[august_2023$ride_length_minutes >= 0], na.rm = TRUE)
print(mean_ride_length_august)
mean_ride_length_september <- mean(september_2023$ride_length_minutes[september_2023$ride_length_minutes >= 0], na.rm = TRUE)
print(mean_ride_length_september)
mean_ride_length_october <- mean(october_2023$ride_length_minutes[october_2023$ride_length_minutes >= 0], na.rm = TRUE)
print(mean_ride_length_october)
mean_ride_length_november <- mean(november_2023$ride_length_minutes[november_2023$ride_length_minutes >= 0], na.rm = TRUE)
print(mean_ride_length_november)
mean_ride_length_december <- mean(december_2023$ride_length_minutes[december_2023$ride_length_minutes >= 0], na.rm = TRUE)
print(mean_ride_length_december)
mean_ride_length_january <- mean(january_2024$ride_length_minutes[january_2024$ride_length_minutes >= 0], na.rm = TRUE)
print(mean_ride_length_january)
mean_ride_length_february <- mean(february_2024$ride_length_minutes[february_2024$ride_length_minutes >= 0], na.rm = TRUE)
print(mean_ride_length_february)
mean_ride_length_march <- mean(march_2024$ride_length_minutes[march_2024$ride_length_minutes >= 0], na.rm = TRUE)
print(mean_ride_length_march)
mean_ride_length_april <- mean(april_2024$ride_length_minutes[april_2024$ride_length_minutes >= 0], na.rm = TRUE)
print(mean_ride_length_april)
mean_ride_length_may <- mean(may_2024$ride_length_minutes[may_2024$ride_length_minutes >= 0], na.rm = TRUE)
print(mean_ride_length_may)

library(ggplot2)
# Crear un dataframe con los datos de los meses y sus valores de mean_ride_length
months <- c("June 2023", "July 2023", "August 2023", "September 2023", "October 2023", "November 2023",
            "December 2023", "January 2024", "February 2024", "March 2024", "April 2024", "May 2024")
mean_ride_length <- c(mean_ride_length_june, mean_ride_length_july, mean_ride_length_august,
                      mean_ride_length_september, mean_ride_length_october, mean_ride_length_november,
                      mean_ride_length_december, mean_ride_length_january, mean_ride_length_february,
                      mean_ride_length_march, mean_ride_length_april, mean_ride_length_may)

df <- data.frame(months, mean_ride_length)
df$months <- factor(df$months, levels = months)
# Crear el gráfico de barras
ggplot(df, aes(x = months, y = mean_ride_length, fill = months)) +
  geom_bar(stat = "identity", color = "black") +
  labs(title = "Mean ride lenght ",
       x = "Month", y = "Media in minutes") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotar etiquetas del eje x para mejor visualización

#Calcular cantidad de viajes diferenciando miembros de casuales

library(dplyr)
library(ggplot2)
# Eliminar los valores nulos 

june_2023_WO <- june_2023 %>%
  filter(ride_length_minutes >= 0)
july_2023_WO <- july_2023 %>%
  filter(ride_length_minutes >= 0)
august_2023_WO <- august_2023 %>%
  filter(ride_length_minutes >= 0)
september_2023_WO <- september_2023 %>%
  filter(ride_length_minutes >= 0)
october_2023_WO <- october_2023 %>%
  filter(ride_length_minutes >= 0)
november_2023_WO <- november_2023 %>%
  filter(ride_length_minutes >= 0)
december_2023_WO <- december_2023 %>%
  filter(ride_length_minutes >= 0)
january_2024_WO <- january_2024 %>%
  filter(ride_length_minutes >= 0)
february_2024_WO <- february_2024 %>%
  filter(ride_length_minutes >= 0)
march_2024_WO <- march_2024 %>%
  filter(ride_length_minutes >= 0)
april_2024_WO <- april_2024 %>%
  filter(ride_length_minutes >= 0)
may_2024_WO <- may_2024 %>%
  filter(ride_length_minutes >= 0)

# Añadir una columna 'month' a cada tabla y combinarlas
june_2023 <- june_2023_WO %>% mutate(month = "June 2023") 
july_2023 <- july_2023_WO %>% mutate(month = "July 2023")
august_2023 <- august_2023_WO %>% mutate(month = "August 2023")
september_2023 <- september_2023_WO %>% mutate(month = "September 2023")
october_2023 <- october_2023_WO %>% mutate(month = "October 2023")
november_2023 <- november_2023_WO %>% mutate(month = "November 2023")
december_2023 <- december_2023_WO %>% mutate(month = "December 2023")
january_2024 <- january_2024_WO %>% mutate(month = "January 2024")
february_2024 <- february_2024_WO %>% mutate(month = "February 2024")
march_2024 <- march_2024_WO %>% mutate(month = "March 2024")
april_2024 <- april_2024_WO %>% mutate(month = "April 2024")
may_2024 <- may_2024_WO %>% mutate(month = "May 2024")

# Combinar todas las tablas
all_trips <- bind_rows(june_2023, july_2023, august_2023, september_2023, october_2023, november_2023, december_2023,
                       january_2024, february_2024, march_2024, april_2024, may_2024)

# Contar los valores de member_casual por mes
counts <- all_trips %>%
  group_by(month, member_casual) %>%
  summarise(count = n(), .groups = 'drop')

# Ordenar por mes
counts$month <- factor(counts$month, levels = c("June 2023", "July 2023", "August 2023", "September 2023", "October 2023", 
                                                "November 2023", "December 2023", "January 2024", "February 2024", 
                                                "March 2024", "April 2024", "May 2024"))

# Crear el gráfico de barras apiladas
ggplot(counts, aes(x = month, y = count, fill = member_casual)) +
  geom_bar(stat = "identity") +
  labs(title = "Cantidad de viajes por Tipo de usuario y Mes",
       x = "Mes", y = "Cantidad", fill = "Tipo de Usuario") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_y_continuous(labels = scales::comma)   # Rotar etiquetas del eje x para mejor visualización



# Crear un promedio de casuales y miembros
## Filtrar los datos para incluir solo los registros donde member_casual es "member"
member_rides_june <- june_2023$ride_length_minutes[june_2023$member_casual == "member"]
## Calcular la media de ride_length_minutes para los miembros
mean_ride_length_june_member <- mean(member_rides_june, na.rm = TRUE)
## Imprimir el resultado
print(mean_ride_length_june_member)
# Julio
member_rides_july <- july_2023$ride_length_minutes[july_2023$member_casual == "member"]
mean_ride_length_july_member <- mean(member_rides_july, na.rm = TRUE)
print(mean_ride_length_july_member)
# Agosto
member_rides_august <- august_2023$ride_length_minutes[august_2023$member_casual == "member"]
mean_ride_length_august_member <- mean(member_rides_august, na.rm = TRUE)
print(mean_ride_length_august_member)
# Septiembre
member_rides_september <- september_2023$ride_length_minutes[september_2023$member_casual == "member"]
mean_ride_length_september_member <- mean(member_rides_september, na.rm = TRUE)
print(mean_ride_length_september_member)
# Octubre
member_rides_october <- october_2023$ride_length_minutes[october_2023$member_casual == "member"]
mean_ride_length_october_member <- mean(member_rides_october, na.rm = TRUE)
print(mean_ride_length_october_member)
# Noviembre
member_rides_november <- november_2023$ride_length_minutes[november_2023$member_casual == "member"]
mean_ride_length_november_member <- mean(member_rides_november, na.rm = TRUE)
print(mean_ride_length_november_member)
# Diciembre
member_rides_december <- december_2023$ride_length_minutes[december_2023$member_casual == "member"]
mean_ride_length_december_member <- mean(member_rides_december, na.rm = TRUE)
print(mean_ride_length_december_member)
# Enero
member_rides_january <- january_2024$ride_length_minutes[january_2024$member_casual == "member"]
mean_ride_length_january_member <- mean(member_rides_january, na.rm = TRUE)
print(mean_ride_length_january_member)
# Febrero
member_rides_february <- february_2024$ride_length_minutes[february_2024$member_casual == "member"]
mean_ride_length_february_member <- mean(member_rides_february, na.rm = TRUE)
print(mean_ride_length_february_member)
# Marzo
member_rides_march <- march_2024$ride_length_minutes[march_2024$member_casual == "member"]
mean_ride_length_march_member <- mean(member_rides_march, na.rm = TRUE)
print(mean_ride_length_march_member)
# Abril
member_rides_april <- april_2024$ride_length_minutes[april_2024$member_casual == "member"]
mean_ride_length_april_member <- mean(member_rides_april, na.rm = TRUE)
print(mean_ride_length_april_member)
# Mayo
member_rides_may <- may_2024$ride_length_minutes[may_2024$member_casual == "member"]
mean_ride_length_may_member <- mean(member_rides_july, na.rm = TRUE)
print(mean_ride_length_may_member)

## Filtrar los datos donde member_casual es casual
## Junio
casual_rides_june <- june_2023$ride_length_minutes[june_2023$member_casual == "casual"]
mean_ride_length_june_casual <- mean(casual_rides_june, na.rm = TRUE)
print(mean_ride_length_june_casual)
## Julio
casual_rides_july <- july_2023$ride_length_minutes[july_2023$member_casual == "casual"]
mean_ride_length_july_casual <- mean(casual_rides_july, na.rm = TRUE)
print(mean_ride_length_july_casual)
## Agosto
casual_rides_august <- august_2023$ride_length_minutes[august_2023$member_casual == "casual"]
mean_ride_length_august_casual <- mean(casual_rides_august, na.rm = TRUE)
print(mean_ride_length_august_casual)
## Septiembre
casual_rides_september <- september_2023$ride_length_minutes[september_2023$member_casual == "casual"]
mean_ride_length_september_casual <- mean(casual_rides_september, na.rm = TRUE)
print(mean_ride_length_september_casual)
## Octubre
casual_rides_october <- october_2023$ride_length_minutes[october_2023$member_casual == "casual"]
mean_ride_length_october_casual <- mean(casual_rides_october, na.rm = TRUE)
print(mean_ride_length_october_casual)
## Noviembre
casual_rides_november <- november_2023$ride_length_minutes[november_2023$member_casual == "casual"]
mean_ride_length_november_casual <- mean(casual_rides_november, na.rm = TRUE)
print(mean_ride_length_november_casual)
## Diciembre
casual_rides_december <- december_2023$ride_length_minutes[december_2023$member_casual == "casual"]
mean_ride_length_december_casual <- mean(casual_rides_december, na.rm = TRUE)
print(mean_ride_length_december_casual)
## Enero
casual_rides_january <- january_2024$ride_length_minutes[january_2024$member_casual == "casual"]
mean_ride_length_january_casual <- mean(casual_rides_january, na.rm = TRUE)
print(mean_ride_length_january_casual)
## Febrero
casual_rides_february <- february_2024$ride_length_minutes[february_2024$member_casual == "casual"]
mean_ride_length_february_casual <- mean(casual_rides_february, na.rm = TRUE)
print(mean_ride_length_february_casual)
## Marzo
casual_rides_march <- march_2024$ride_length_minutes[march_2024$member_casual == "casual"]
mean_ride_length_march_casual <- mean(casual_rides_march, na.rm = TRUE)
print(mean_ride_length_march_casual)
## Abril
casual_rides_april <- april_2024$ride_length_minutes[april_2024$member_casual == "casual"]
mean_ride_length_april_casual <- mean(casual_rides_april, na.rm = TRUE)
print(mean_ride_length_april_casual)
## Mayo
casual_rides_may <- may_2024$ride_length_minutes[may_2024$member_casual == "casual"]
mean_ride_length_may_casual <- mean(casual_rides_may, na.rm = TRUE)
print(mean_ride_length_may_casual)
                          
                                    
library(ggplot2)

# Datos promedio de duración de viaje para miembros y casuales por mes
months <- c("June 2023", "July 2023", "August 2023", "September 2023", "October 2023", "November 2023",
            "December 2023", "January 2024", "February 2024", "March 2024", "April 2024", "May 2024")
mean_ride_length_member <- c(mean_ride_length_june_member, mean_ride_length_july_member, mean_ride_length_august_member,
                             mean_ride_length_september_member, mean_ride_length_october_member,
                             mean_ride_length_november_member, mean_ride_length_december_member, mean_ride_length_january_member, 
                             mean_ride_length_february_member, mean_ride_length_march_member,
                             mean_ride_length_april_member, mean_ride_length_may_member)  
mean_ride_length_casual <- c(mean_ride_length_june_casual, mean_ride_length_july_casual, mean_ride_length_august_casual, 
                             mean_ride_length_september_casual, mean_ride_length_october_casual, mean_ride_length_november_casual, 
                             mean_ride_length_december_casual, mean_ride_length_january_casual, mean_ride_length_february_casual, 
                             mean_ride_length_march_casual, mean_ride_length_april_casual,mean_ride_length_may_casual)

# Crear el dataframe
library(ggplot2)
df <- data.frame(months, mean_ride_length_member, mean_ride_length_casual)

df$months <- factor(df$months, levels = months)

# Reestructurar datos para facilitar el gráfico de barras apiladas
df <- tidyr::gather(df, key = "Grupo", value = "mean_ride_length", -months)

# Crear el gráfico de barras apiladas
ggplot(df, aes(x = months, y = mean_ride_length, fill = Grupo)) +
  geom_bar(stat = "identity", position = "stack", alpha = 0.8) +
  labs(title = "Promedio de duración de viaje por tipo de usuario y mes",
       x = "Mes", y = "Promedio en minutos") +
  scale_fill_manual(values = c("mean_ride_length_member" = "blue", "mean_ride_length_casual" = "red"),
                    labels = c("Casual", "Member")) +
  theme_minimal() +
theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 8))


# Trabajo con cuatrimestres

colnames(q3_2019)
colnames(q4_2019)
colnames(q2_2019)
colnames(q1_2020)
# Renombrar columnas

(q4_2019 <- rename(q4_2019
                   ,ride_id = trip_id
                   ,rideable_type = bikeid 
                   ,started_at = start_time  
                   ,ended_at = end_time  
                   ,start_station_name = from_station_name 
                   ,start_station_id = from_station_id 
                   ,end_station_name = to_station_name 
                   ,end_station_id = to_station_id 
                   ,member_casual = usertype))

(q3_2019 <- rename(q3_2019
                   ,ride_id = trip_id
                   ,rideable_type = bikeid 
                   ,started_at = start_time  
                   ,ended_at = end_time  
                   ,start_station_name = from_station_name 
                   ,start_station_id = from_station_id 
                   ,end_station_name = to_station_name 
                   ,end_station_id = to_station_id 
                   ,member_casual = usertype))


(q2_2019 <- rename(q2_2019
                   ,ride_id = "X01...Rental.Details.Rental.ID"
                   ,rideable_type = "X01...Rental.Details.Bike.ID" 
                   ,started_at = "X01...Rental.Details.Local.Start.Time"  
                   ,ended_at = "X01...Rental.Details.Local.End.Time"  
                   ,start_station_name = "X03...Rental.Start.Station.Name" 
                   ,start_station_id = "X03...Rental.Start.Station.ID"
                   ,end_station_name = "X02...Rental.End.Station.Name" 
                   ,end_station_id = "X02...Rental.End.Station.ID"
                   ,member_casual = "User.Type"))

# Unificar tipos 
q4_2019 <-  mutate(q4_2019, ride_id = as.character(ride_id)
                   ,rideable_type = as.character(rideable_type)) 
q3_2019 <-  mutate(q3_2019, ride_id = as.character(ride_id)
                   ,rideable_type = as.character(rideable_type)) 
q2_2019 <-  mutate(q2_2019, ride_id = as.character(ride_id)
                   ,rideable_type = as.character(rideable_type)) 

# Unificar los cuatrimestres
all_trips <- bind_rows(q2_2019, q3_2019, q4_2019, q1_2020)

all_trips <- all_trips %>%  
  select(-c(start_lat, start_lng, end_lat, end_lng, birthyear, 
            gender, "X01...Rental.Details.Duration.In.Seconds.Uncapped", 
            "X05...Member.Details.Member.Birthday.Year", "Member.Gender", "tripduration"))
# Unificar criterios en miembros y casuales
all_trips <- all_trips %>%
mutate(member_casual = recode(member_casual,
                              "Subscriber" = "member",
                              "Customer" = "casual"))
# Formato de fecha 
all_trips$date <- as.Date(all_trips$started_at)
all_trips$month <- format(as.Date(all_trips$date), "%m")
all_trips$day <- format(as.Date(all_trips$date), "%d")
all_trips$year <- format(as.Date(all_trips$date), "%Y")
all_trips$day_of_week <- format(as.Date(all_trips$date), "%A")

all_trips$ride_length <- difftime(all_trips$ended_at,all_trips$started_at)
str(all_trips)
is.factor(all_trips$ride_length)
all_trips$ride_length <- as.numeric(as.character(all_trips$ride_length))
is.numeric(all_trips$ride_length)

all_trips_v2 <- all_trips[!(all_trips$start_station_name == "HQ QR" | all_trips$ride_length<0),]

mean(all_trips_v2$ride_length) # Promedio
median(all_trips_v2$ride_length) # midpoint number in the ascending array of ride lengths
max(all_trips_v2$ride_length) #viaje mas largo
min(all_trips_v2$ride_length) #viaje mas corto

summary(all_trips_v2$ride_length)

aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = mean)
aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = median)
aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = max)
aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = min)

#Promedio por dia diferenciado por miembros y casual
aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual + all_trips_v2$day_of_week, FUN = mean)
all_trips_v2$day_of_week <- ordered(all_trips_v2$day_of_week, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual + all_trips_v2$day_of_week, FUN = mean)

all_trips_v2 %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>%  #creates weekday
  group_by(member_casual, weekday) %>%  #agrupar por tipo de usuario y dia
  summarise(number_of_rides = n()				#cantidad de viajes y duracion promedio 
            ,average_duration = mean(ride_length)) %>% 	
  arrange(member_casual, weekday)								# sorts

all_trips_v2 %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>% 
  group_by(member_casual, weekday) %>% 
  summarise(number_of_rides = n()
            ,average_duration = mean(ride_length)) %>% 
  arrange(member_casual, weekday)  %>% 
  ggplot(aes(x = weekday, y = number_of_rides, fill = member_casual)) +
  geom_col(position = "dodge")

all_trips_v2 %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>% 
  group_by(member_casual, weekday) %>% 
  summarise(number_of_rides = n()
            ,average_duration = mean(ride_length)) %>% 
  arrange(member_casual, weekday)  %>% 
  ggplot(aes(x = weekday, y = average_duration / 60, fill = member_casual)) +
  geom_col(position = "dodge")



#grafico duracion de viajes por tipo de usuario y dia de la semana
library(dplyr)
library(ggplot2)

# Agregar los datos
agg_data <- aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual + all_trips_v2$day_of_week, FUN = mean)
colnames(agg_data) <- c("member_casual", "day_of_week", "ride_length")


# Crear el gráfico de barras
ggplot(agg_data, aes(x = day_of_week, y = ride_length / 60, fill = member_casual)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Promedio de Duración de Viajes por Tipo de Usuario y Día de la Semana",
       x = "Día de la Semana", y = "Duración Promedio (minutos)",
       fill = "Tipo de Usuario") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Instalar y cargar los paquetes necesarios
install.packages("lubridate")

library(dplyr)
library(ggplot2)
library(lubridate)

# Preparar los datos
agg_data <- all_trips_v2 %>% 
  mutate(weekday = wday(started_at, label = TRUE, abbr = FALSE)) %>%  # Crea la columna weekday
  group_by(member_casual, weekday) %>%  # Agrupar por tipo de usuario y día
  summarise(number_of_rides = n(),      # Calcular la cantidad de viajes y la duración promedio
            average_duration = mean(ride_length, na.rm = TRUE)) %>% 	
  arrange(member_casual, weekday)  # Ordenar

# Crear el gráfico de barras para la cantidad de viajes
ggplot(agg_data, aes(x = weekday, y = number_of_rides, fill = member_casual)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Cantidad de Viajes por Tipo de Usuario y Día de la Semana",
       x = "Día de la Semana", y = "Cantidad de Viajes",
       fill = "Tipo de Usuario") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_y_continuous(labels = scales::comma)





