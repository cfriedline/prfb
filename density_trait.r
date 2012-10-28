n = 100000
mean=25
sd = 5
xlab = "Bark thickness (mm)"
ylab = ""
x = seq(1.6, 60, length=n)
y = dnorm(x, mean=mean, sd=sd)

pdf("thickbark.pdf", version="1.5")
curve(dnorm(x, mean,sd), xlim=c(0, 50), ylab="Density", xlab="Bark thickness (mm)", , main="He et al. (2012) bark thickness")
coord.x = c(15, seq(15, 30, 0.01), 30)
coord.y = c(0, dnorm(seq(15, 30, 0.01), mean, sd), 0)


coord.x1 = c(30, seq(30, 50, 0.01), 50)
coord.y1 = c(0, dnorm(seq(30, 50, 0.01), mean, sd), 0)

polygon(coord.x, coord.y, col="skyblue")
polygon(coord.x1, coord.y1, col="gray")

#arrows(21, 0.015, 30, 0.025, length=0.1)
#text(30, 0.026, "Thick bark")


#arrows(34, dnorm(35, mean, sd) - 0.002, 40, 0.01, length=0.1)
#text(41, 0.011, "Very thick bark")

dev.off()