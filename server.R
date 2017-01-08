library(shiny)
library(DT)
library(DBI)
library(ggplot2)
library(scales)

#' Draw Normal Distribution Density with an area shaded in.
#'
#' @param lb Lower bound of the shaded area. Use \code{-Inf} for a left tail.
#' @param ub Upper bound of the shaded area. Use \code{Inf} for a right tail.
#' @param mean Mean of the normal distribution
#' @param sd Standard deviation of the normal distribution
#' @param limits Lower and upper bounds on the x-axis of the area displayed.
#' @return ggplot object.
#' @examples
#' # Standard normal with upper 2.5% tail shaded
#' normal_prob_area_plot(2, Inf)
#' # Standard normal with lower 2.5% tail shaded
#' normal_prob_area_plot(-Inf, 2)
#' # standard normal with middle 68% shaded.
#' normal_prob_area_plot(-1, 1)
normal_prob_area_plot <- function(lb, ub, mean = 0, sd = 1, result, limits = c(mean - 4 * sd, mean + 4 * sd), name="Test", units="") {
  x <- seq(limits[1], limits[2], length.out = 100)
  xmin <- max(lb, limits[1])
  xmax <- min(ub, limits[2])
  areax <- seq(xmin, xmax, length.out = 100)
  area <- data.frame(x = areax, ymin = 0, ymax = dnorm(areax, mean = mean, sd = sd))
  (ggplot()
  + geom_line(data.frame(x = x, y = dnorm(x, mean = mean, sd = sd)),
              mapping = aes(x = x, y = y))
  + geom_ribbon(data = area, mapping = aes(x = x, ymin = ymin, ymax = ymax), fill="blue", alpha=0.2)
  + geom_vline(xintercept=c(mean-2*sd,mean+2*sd), linetype="dotted")
  #+ geom_vline(xintercept=c(result), linetype="solid")
  + ggtitle(paste(name,"PDF Normal Distribution",sep=" ")) 
  + labs(x=paste(name,"(",units,")"),y="Probability Density")
  #+ annotate("text", x=mean-2.5*sd, y=area$ymax[length(area$ymax)], label= "P(X<X.X)=0.XX")
  + scale_x_continuous(limits = limits, breaks = pretty_breaks(n = 15)))
}

# take in reference range, compute mean & SD
# Assume reference range is middle 95% of population
# The reference range is defined as the mean plus or minus 
# two standard deviations: Reference Range = mean??1.96x SD
reference_range_to_mean_sd <- function(lb,ub) {
  sd <- ((ub-lb)-((ub-lb)/2))/2#1.96
  x <- ((ub-lb)/2)+lb
  ret_val <- list("mean" = x, "sd" = sd)
  return(ret_val) 
}

shinyServer(function(input, output, session) {
  
  con = dbConnect(RSQLite::SQLite(), dbname='labs.db')
  results = dbGetQuery( con, 
                         'SELECT Date, profile.Name AS Profile, type.Name AS Test, Result, units.Name AS Units, details.Reference_Interval_Lower AS Lower, details.Reference_Interval_Upper AS Upper FROM Test_Result
                         INNER JOIN Test_Profile profile ON Test_Result.Test_Profile = profile.Id 
                         INNER JOIN Test_Type type ON Test_Result.Type = type.Id
                         INNER JOIN Test_Details details ON Test_Result.Details = details.Id
                         INNER JOIN Unit units ON details.Units = units.Id
                         ORDER BY DATE desc;')
  dbDisconnect(con)

  # filter = 'top',
  output$x1 = DT::renderDataTable(results, options = list(
    autoWidth = FALSE, columnDefs = list(list(visible=FALSE, targets=list(0,2)))), server = FALSE)
  
  # highlight selected rows in the scatterplot
  output$x2 = renderPlot({
    s = input$x1_rows_selected
    par(mar = c(4, 4, 1, .1))
    plot(cars)
    if (length(s)) points(cars[s, , drop = FALSE], pch = 19, cex = 2)
  })
  
  #output$s = renderPrint({
  #  s = input$x1_rows_selected
  #  row_tests = results[s,]
  #  if (length(s)) {
  #    cat('These rows were selected:\n\n')
  #    cat(s, sep = ', ')
  #    cat(row_tests$Lower)
  #  }
  #})
  
  output$distPlot <- renderPlot({
    
    selected_results = input$x1_rows_selected
    if (length(selected_results)) {
      row_tests = results[selected_results,]
      r = row_tests[1,]
    
      print(row_tests)
      print(r)
    
      shade_lower = -Inf
      shade_upper = as.numeric(r$Result)
    
      #if (input$tail == "upper")
      #{
      #  shade_lower = input$result
      #  shade_upper = Inf
      #}
    
      lab_stats <- reference_range_to_mean_sd(r$Lower,r$Upper)
      normal_prob_area_plot(shade_lower, shade_upper, lab_stats$mean, lab_stats$sd, as.numeric(r$Result), name=r$Test, units=r$Units)
    }
  })
  
  output$histPlot <- renderPlot({
    
    selected_results = input$x1_rows_selected
    if (length(selected_results)) {
      row_tests = results[selected_results,]
      r = row_tests[1,]
      
      print(row_tests)
      print(r)
      
      row_tests$Result <- as.numeric(row_tests$Result)
      row_tests$Date <- as.Date(row_tests$Date)
      
      units_str <- row_tests$Test
      if (length(row_tests$Units[1]) == 0)
      {
        units_str <- paste(row_tests$Test,"(",row_tests$Units,")")
      }
      
      (ggplot(row_tests,aes(x=Date)) 
      + geom_point(aes(y=Result))
      + geom_line(aes(y=Result))
      + ggtitle(paste(row_tests$Test,"History",sep=" "))
      + labs(x="Date",y=paste(row_tests$Test,"(",row_tests$Units,")")))
     
    }
  })
  
})