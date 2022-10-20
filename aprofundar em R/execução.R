library(rio)
library(tidyverse)
library(weights)
pnadc_2020 <- import("pnadc_2020_t1.fst")
str(pnadc_2020)
pnadc_2020 <- pnadc_2020 %>%
              mutate(
               renda_trabalho = VD4019,
               log_renda_trabalho = log(VD4019), 
                anos_estudos = VD3005,
                anos_estudos_numerica = as.numeric(VD3005),
                peso = V1027)
class("pnadc_2020")
pnadc_2020 %>% select(renda_trabalho, log_renda_trabalho,anos_estudos, anos_estudos_numerica,peso)
View(pnadc_2020 %>% select(renda_trabalho, log_renda_trabalho,anos_estudos, anos_estudos_numerica,peso))
