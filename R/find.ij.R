##works in Mac
find.ij <- function(ostype = .Platform$OS.type){

	if (ostype == "windows"){
		if(file.exists("\\Program Files\\ImageJ\\ij.jar")!=T || file.exists("\\Program Files\\ImageJ\\jre\\bin\\java.exe")!=T) {
			warning("ij.jar or java were not found in the common install location on your system; When you run run.ij, specify the path to ImageJ directory or try installing ImageJ bundled with Java to C:\\Program Files\\ ")
			return("ImageJ not found")} else return("C:\\Program Files\\ImageJ\\")
		} else {
			unix.check <-Sys.info()["sysname"]
		if(unix.check=="Linux") {
			warning("Specify the path to ImageJ")	
		return("ImageJ not found")} else {

		if(file.exists("/Applications/ImageJ/ImageJ64.app")!=T){
		warning("ImageJ was not found in the common install location on your system; When you run run.ij, specify the path to ImageJ or try installing ImageJ to /Applications/ImageJ/")	
		return("ImageJ not found")
		} else return("/Applications/ImageJ/")			
		}
			}
}







