# contour plots
library(sf)
library(isoband)
library(ggplot2)
library(raster)
library(rasterVis)
library(maps)
world1 <- sf::st_as_sf(map('world', plot = FALSE, fill = TRUE))

r <- raster("cds.nc")

sf_from_image <- function(image, step = 3) {
  # use reclass to set breaks
  range <- summary(image)[c(1,5)]
  print(range)
  steps <- seq(range[1], range[2], step)
  rcl <- cbind(steps[1:length(steps)-1], steps[2:length(steps)])
  rcl <- cbind(rcl, apply(rcl, 1, mean))
  rcl_min <- c(-Inf, range[1], range[1])
  rcl_max <- c(rcl[nrow(rcl),2], Inf, range[2])
  rcl <- rbind(rcl_min, rcl, rcl_max)
  
  print(rcl)
  image_rc <- reclassify(image, rcl = rcl)
  
  d <<- image_rc
  
  c <- coordinates(image)
  
  b <- isobands(unique(c[,1]), unique(c[,2]), as.matrix(image_rc), rcl[,1], rcl[,2])
  
  bands <- iso_to_sfg(b)
  data <- st_sf(
    level = letters[1:length(bands)],
    geometry = st_sfc(bands),
    crs = projection(image)
  )
}

img_sf <- sf_from_image(r)

test <- st_as_sf(img_sf, crs = 4326)

test_spdf <- as(r, "SpatialPixelsDataFrame")
test_df <- as.data.frame(test_spdf)
colnames(test_df) <- c("value", "x", "y")

p1 <- ggplot() +
  geom_tile(data=test_df, aes(x=x, y=y, fill=value), alpha=0.8) +
  geom_sf(data = img_sf, fill = NA, col = "black")

print(p1)

