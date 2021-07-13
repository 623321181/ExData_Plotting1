par(mfrow=c(2,2), mar= c(4,4,2,1), oma=c(0,0,2,0))
plot(data$Global_active_power~data$DateTime, type='l', ylab="Global Actve Power (kiilowatts)", xlab='')

plot(data$Voltage~data$DateTime, type='l', ylab='Voltage', xlab='datetime')

plot(data = data, data$DateTime, data$Sub_metering_1, type='l', ylab='Energy Sub Metering', xlab='')
lines(data$Sub_metering_2~data$DateTime, col='Red')
lines(data$Sub_metering_3~data$DateTime, col = 'blue')
legend('topright',lty=1, lwd=1, bty="n", col=c('black', 'red', 'blue'), legend = c('Sub Metering 1', 'Sub Metering 2', 'Sub Metering3'), fill = 1:10)

plot(data$Global_reactive_power~data$DateTime, type='l')

dev.copy(png, file='plot4')
dev.off()
