# download raster package
>install.packages("raster")
#settting working directory
setwd("/C:

# taking brick function and assigning it a certain name
> brick("p224r63_2011_masked.grd)
#assigning brick file a new name?


#plotting band number 1
> plot(p224r63_2011$B1_sre, col=cl)
#change yh rcolours from dark blue to light blue
# builiding multiframe of images
 > par(mfrow=c(1,2))
 plot(p224r63_2011$B1_sre, col=cl)
> plot(p224r63_2011[[1]], col=cl)
> clb <- colorRampPalette(c('blue','dark blue','light blue'))(100) #
> plot(p224r63_2011, col=cl)plot(p224r63_2011[[1]], col=cl)
Error: unexpected symbol in "plot(p224r63_2011, col=cl)plot"
> plot(p224r63_2011[[1]], col=clb)
> par(mfrow=c(1,2))
> 

> plot(p224r63_2011[[1]], col=cl)
> plot(p224r63_2011[[2]], col=cl)
> par(mfrow=c(1,2,3,4))
Error in par(mfrow = c(1, 2, 3, 4)) : 
  graphical parameter "mfrow" has the wrong length
> par(mfrow=c(1,2x3,4))
Error: unexpected symbol in "par(mfrow=c(1,2x3"
>   plot(p224r63_2011[[3]], col=cl)
> par(mfrow=c(2,2))
> plot(p224r63_2011[[1]], col=cl)
> plot(p224r63_2011[[2]], col=cl)
> plot(p224r63_2011[[3]], col=cl)
> plot(p224r63_2011[[4]], col=cl)
> 
