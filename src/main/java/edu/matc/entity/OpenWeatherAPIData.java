package edu.matc.entity;

import lombok.Data;

import java.time.LocalDate;

@Data
public class OpenWeatherAPIData {

    private int openWeatherDatabaseId;

    private int openWeatherCityId;

    private double minTemperature;

    private double maxTemperatute;

    private double barometricPressure;

    private double humidityPercentage;

    private LocalDate dateOfRecord;

}
