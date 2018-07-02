# Load all registers into various databases

library(tidyverse)
library(DBI)
library(registr) # https://github.com/nacnudus/registr
library(stringr)
library(getPass)
library(here)


beta <- rr_registers()
alpha <- rr_registers(phase = "alpha") %>% compact()
really_alpha <- keep(alpha, !(names(alpha) %in% names(beta)))

registers <-
	  c(beta, really_alpha) %>%
	    map(pluck, "data")

    decardinalise <- function(.data) {
	      mutate_if(.data, is.list, ~ map_chr(.x, ~ paste0(.x, collapse = ";")))
    }

    # Generic function to write a register to a database
    register2db <- function(x, name) {
	      message("Writing register to database: ", name, "\n")
      dbWriteTable(con, c("registers",name), decardinalise(x), overwrite = TRUE)
    }


    # PostgreSQL
    con <- dbConnect(RPostgreSQL::PostgreSQL(), dbname = "registers")
    # Put each register into the database
    walk2(registers, names(registers), register2db)
    # Check that all the registers are now in the database
    dbListTables(con)
    setdiff(names(registers), dbListTables(con))
    # Close the database
    dbDisconnect(con)

