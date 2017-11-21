package edu.matc.entity;

import edu.matc.util.LocalDateAttributeConverter;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Date;


@Entity
@Table(name="open_weather_data")


public class OpenWeatherData {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="open_weather_id_pk")
    private int openWeatherId;

    @Column(name="open_weather_city")
    private String openWeatherCity;

    @Column(name="min_tempature")
    private double minTemperature;

    @Column(name="max_temperature")
    private double maxTemperature;

    @Column(name="barometric_pressure")
    private double barometricPressure;

    @Column(name="humidity_percentage")
    private double humidityPercentage;

    @Column(name="open_weather_record_date")
    @Convert(converter = LocalDateAttributeConverter.class)
    private Date localDateOpenWeather;

    /**
     *  No Argument Contructor
     */
    public OpenWeatherData() {

    }


    /**
     *
     * @return openWeatherId the OpenWeather ID Primary Key
     */
    public int getOpenWeatherId() {return this.openWeatherId;}

    /**
     *
     * @return the converted local date associated with the city's open weather record.
     */
    public Date getlocalDateOpenWeather() {
        return localDateOpenWeather;
    }

    /**
     *
     * @return the Open Weather City
     */
    public String getOpenWeatherCity() {
        return this.openWeatherCity;
    }

    /**
     *
     * @return minTemperature the day's minimum temperature.
     */
    public double getMinTemperature() {
        return this.minTemperature;
    }


    /**
     *
     * @return maxTemperature the day's maximum temperature.
     */
    public double getMaxTemperature() {
        return this.maxTemperature;
    }

    /**
     *
     * @return the day's barometric pressure.
     */
    public double getBarometricPressure() {
        return this.barometricPressure;
    }

    /**
     *
     * @return the day's humidity percentage.
     */
    public double getHumidityPercentage() {
        return this.humidityPercentage;
    }

    /**
     *
     * @param openWeatherId the open weather primary key.
     */
    public void setOpenWeatherId(int openWeatherId) {
        this.openWeatherId = openWeatherId;
    }

    /**
     *
     * @param localDateOpenWeather the Converted local date associated with the city's open weather records.
     */
    public void setlocalDateOpenWeather(Date localDateOpenWeather) {
        this.localDateOpenWeather = localDateOpenWeather;
    }

    /**
     *
     * @param openWeatherCity the user's city
     */
    public void setOpenWeatherCity(String openWeatherCity) {
        this.openWeatherCity = openWeatherCity;
    }

    /**
     *
      * @param minTemperature the day's minimum temperature.
     */
    public void setMinTemperature(double minTemperature) {
        this.minTemperature = minTemperature;
    }

    /**
     *
     * @param maxTemperature the day's high temperature.
     */
    public void setMaxTemperature(double maxTemperature) {
        this.maxTemperature = maxTemperature;
    }

    /**
     *
     * @param barometricPressure the day's Barometric Pressure.
     */
    public void setBarometricPressure(double barometricPressure) {
        this.barometricPressure = barometricPressure;
    }

    /**
     *
     * @param humidityPercentage the day's average humidity percentage.
     */
    public void setHumidityPercentage(double humidityPercentage) {
        this.humidityPercentage = humidityPercentage;
    }


    public String toString() {
        return "OpenWeatherData(userCity=" + this.getOpenWeatherCity() + ", minTemperature=" + this.getMinTemperature() + ", maxTemperature=" + this.getMaxTemperature() + ", barometricPressure=" + this.getBarometricPressure() + ", humidityPercentage=" + this.getHumidityPercentage() + ")";
    }
}

