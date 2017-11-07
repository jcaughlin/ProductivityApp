package edu.matc.entity;

public class OpenWeatherData {
    private String userCity;
    private double minTemperature;
    private double maxTemperature;
    private double barometricPressure;
    private double humidityPercentage;

    public OpenWeatherData() {

    }

    public String getUserCity() {
        return this.userCity;
    }

    public double getMinTemperature() {
        return this.minTemperature;
    }

    public double getMaxTemperature() {
        return this.maxTemperature;
    }

    public double getBarometricPressure() {
        return this.barometricPressure;
    }

    public double getHumidityPercentage() {
        return this.humidityPercentage;
    }

    public void setUserCity(String userCity) {
        this.userCity = userCity;
    }

    public void setMinTemperature(double minTemperature) {
        this.minTemperature = minTemperature;
    }

    public void setMaxTemperature(double maxTemperature) {
        this.maxTemperature = maxTemperature;
    }

    public void setBarometricPressure(double barometricPressure) {
        this.barometricPressure = barometricPressure;
    }

    public void setHumidityPercentage(double humidityPercentage) {
        this.humidityPercentage = humidityPercentage;
    }


    public String toString() {
        return "OpenWeatherData(userCity=" + this.getUserCity() + ", minTemperature=" + this.getMinTemperature() + ", maxTemperature=" + this.getMaxTemperature() + ", barometricPressure=" + this.getBarometricPressure() + ", humidityPercentage=" + this.getHumidityPercentage() + ")";
    }
}

