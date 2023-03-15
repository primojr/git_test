
# Dados
dado=c(70.5, 71.8, 73.9, 74.4, 75.9, 76.0,
       76.6, 76.7, 77.4, 78.0, 78.1, 78.1,
       78.2, 78.4, 78.4, 78.4, 78.5, 78.5,
       78.5, 78.9, 79.0, 79.1, 79.3, 79.3,
       79.5, 79.5, 79.7, 79.8, 79.9, 79.9,
       80.1, 80.2, 80.4, 80.4, 80.5, 80.7,
       80.7, 80.7, 80.9, 81.3, 81.4, 81.6,
       81.8, 81.9, 82.0, 82.0, 82.1, 82.3,
       82.5, 82.7, 82.9, 83.0, 83.0, 83.2,
       83.4, 83.5, 83.6, 83.6, 83.7, 83.8,
       84.3, 84.5, 84.5, 84.5, 84.6, 85.2,
       85.5, 85.5, 85.7, 86.4, 86.5, 86.8,
       86.8, 86.8, 87.1, 87.1, 87.1, 87.3,
       88.5, 90.0)



hist(dado,
     main = "Consumo de energia elétrica (Kw/h) de 80 famílias em um bairro de CG",
     xlab = "KW/h",
     ylab = "Frequência (fi)",
     labels = TRUE, col = c("orange"),
     breaks = c(70.5, 72.7, 74.9, 77.1, 79.3,81.5, 83.7,85.9,88.1,90.3),
     right = FALSE,
     axes = F, #retira os rótulos dos eixos da função "hist"
     ylim = c(0, 25)) #definir um limite maior para o eixo y
#colocando manualmente os rótulos dos eixos
axis(side = 1, #eixo x
     at = c(70.5, 72.7, 74.9, 77.1, 79.3,81.5, 83.7,85.9,88.1,90.3)) #rótulos
axis(side = 2, #eixo y
     at = seq(0, 20, 5)) #rótulos
box() #gráfico dentro de um retángulo

library(ggplot2)

data=data.frame(dado)

data |>
  ggplot(aes(x = dado)) +
  geom_histogram(fill = '#ffffff', col = '#ffffff') +
  stat_bin(fill = 'orange',
           col = '#d1d1d1',
           breaks = c(70.5, 72.7, 74.9, 77.1, 79.3,81.5, 83.7,85.9,88.1,90.3)
           ) +
  scale_x_continuous(breaks = seq(from = 70.5,to = 90.3,by = 2.2)) +
  labs(
     title = 'Consumo de energia elétrica (Kw/h) de 80 famílias em um bairro de CG',
     x = 'Km/h',
     y = 'Frequencia (fi)'
    ) +
    theme_bw()

ggplot(data,aes(x=dado)) +
  stat_bin(binwidth=1 , breaks = c(70.5, 72.7, 74.9, 77.1, 79.3,81.5, 83.7,85.9,88.1,90.3)) +
  stat_bin(binwidth=1, geom="text", aes(label=after_stat(count)), vjust=0)
