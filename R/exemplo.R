
write.csv(iris,"date/iris.csv")

usethis::use_git()
usethis::use_github()

data <- data.frame("super_mais" = c("arroz", "feijao", "carne", "frango", NA, NA),
             "super_bom" = c("macarrao", "cebola", NA, NA, NA, NA),
             "super_top" = c("arroz", "macarrao", "tomate", "frango", NA, NA),
             "super_show" = c("arroz", "feijao", "macarrao", "frango", "alface", "tomate"),
             "super_massa" = c("feijao", "carne", "alface", NA, NA, NA))