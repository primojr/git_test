
write.csv(iris,"date/iris.csv")

usethis::create_github_token()
usethis::edit_r_environ()

data <- data.frame("super_mais" = c("arroz", "feijao", "carne", "frango", NA, NA),
             "super_bom" = c("macarrao", "cebola", NA, NA, NA, NA),
             "super_top" = c("arroz", "macarrao", "tomate", "frango", NA, NA),
             "super_show" = c("arroz", "feijao", "macarrao", "frango", "alface", "tomate"),
             "super_massa" = c("feijao", "carne", "alface", NA, NA, NA))


Filter(function(x) any(x == "arroz"), data)

usethis::use_git()
usethis::use_github()
