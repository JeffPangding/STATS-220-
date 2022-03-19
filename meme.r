
library(magick)


## Top anime
onepeice <- image_read("https://static.cnbetacdn.com/article/2021/0130/868d4af2911ad51.jpg") %>%
  image_scale(500)

NARUTO <- image_read("https://static.wikia.nocookie.net/naruto/images/d/d6/Naruto_Part_I.png/revision/latest?cb=20210223094656") %>%
  image_scale(500)

DARON_BALL <- image_read("https://static.wikia.nocookie.net/dragonball/images/1/10/EveryoneInDragonBallZ.jpg/revision/latest?cb=20110508001535") %>%
  image_scale(500)
lan <- image_read("https://images-na.ssl-images-amazon.com/images/I/517kus7+75L._SX331_BO1,204,203,200_.jpg")
  image_scale(1000)

stats_text <- image_blank(width = 400, 
                          height = 350, 
                          color = "#33ccff") %>%
  image_annotate(text = "ONE PEICE",
                 color = "#FFFFFF",
                 size = 80,
                 font = "Impact",
                 gravity = "center")

comp_text <- image_blank(width = 400, 
                         height = 400, 
                         color = "#adff2f") %>%
  image_annotate(text = "DARON BALL",
                 color = "#FFFFFF",
                 size = 80,
                 font = "Impact",
                 gravity = "center")

ds_text <- image_blank(width = 400, 
                       height = 400, 
                       color = "#f3873f") %>%
  image_annotate(text = " NARUTO",
                 color = "#FFFFFF",
                 size = 80,
                 font = "Impact",
                 gravity = "center")
lan_text <- image_blank(width = 400, 
                       height = 400, 
                       color = "#ff4333") %>%
  image_annotate(text = " slam dunk",
                 color = "#FFFFFF",
                 size = 80,
                 font = "Impact",
                 gravity = "center")

first_row <- c(onepeice, stats_text) %>%
  image_append()

second_row <- c(DARON_BALL, comp_text) %>%
  image_append()

third_row <- c(NARUTO, ds_text) %>%
  image_append()

lan_row <- c(lan, lan_text) %>%
  image_append()
c(first_row, second_row, third_row, lan_row) %>%
  image_append(stack = TRUE)
(image_write(onepeice, "onepeice.png"))
(image_write(DARON_BALL, "DARON_BALL.png"))
(image_write(NARUTO, "NARUTO.png"))
(image_write(lan, "lan.png"))
(image_write(c(first_row, second_row, third_row,lan_row) %>%
               image_append(stack = TRUE), "huh.png"))