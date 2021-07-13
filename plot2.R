plot(data$Global_active_power~data$DateTime, type='l', ylab="Global Actve Power (kiilowatts)", xlab='')
dev.copy(png, file='plot2')
dev.off()
