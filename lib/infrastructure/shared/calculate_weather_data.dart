class CalculateWeatherData{

  ///temp
  double celsiusToFahrenheit(double celsius) {
    return (celsius * 9 / 5) + 32;
  }

  ///air pressure
  double millibarToPascal(double millibars) {
    return millibars * 100;
  }
  double millibarsToBars(double pressureInMillibars) {
    return pressureInMillibars / 1000.0;
  }
  double millibarsToInchesOfMercury(double pressureInMb) {
    return pressureInMb * 0.029529983071445;
  }
  double mbToMmHg(double pressureMb) {
    return pressureMb * 0.750062;
  }
  double mbarToHpa(double mbar) {
    return mbar / 10.0;
  }

  ///winds
  double convertKmPerHourToMetersPerSecond(double windSpeedInKilometersPerHour) {
    // Conversion factor from km/h to m/s
    double conversionFactor = 1000 / 3600;

    // Calculate the wind speed in m/s
    double windSpeedInMetersPerSecond = windSpeedInKilometersPerHour * conversionFactor;

    return windSpeedInMetersPerSecond;
  }

  double kmPerHourToMiPerSecond(double kmPerHour) {
    // 1 km/h is approximately equal to 0.000277778 mi/s
    return kmPerHour * 0.000277778;
  }

  double kmPerHourToKnots(double kmPerHour) {
    // 1 km/h is approximately equal to 0.53996 knots
    return kmPerHour * 0.53996;
  }



}