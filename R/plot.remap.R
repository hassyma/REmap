##' plot the remap object
##' 
##' plot.remap is a function to create the htmlfile 
##' and open it by browser
##' 
##' 
##' @param object an remap object
##' @return Create a html file according to the id of the object
##' @author Chiffon <\url{http://chiffon.gitcafe.io}>
##' @examples
##' set.seed(125)
##' out = remap(demoC,title = "REmap示例数据",subtitle = "theme:Dark")
##' plot(out)


plot.remap = function(object){
  
  if(.Platform$OS.type == "windows"){
    locate = Sys.getlocale("LC_CTYPE")
    Sys.setlocale("LC_CTYPE",
                  "Chinese (Simplified)_People's Republic of China.936")
  }
  
  file_name = paste0(object@id,".html")
  writeLines(object@content,file_name,useBytes = T)
  
  if(.Platform$OS.type == "windows"){
    Sys.setlocale("LC_CTYPE",locate)
  }
  
  cat("Save img as:",file_name)
  browseURL(file_name)
}
