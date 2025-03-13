// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  final double? latitude;
  final double? longitude;
  final double? generationtimeMs;
  final int? utcOffsetSeconds;
  final String? timezone;
  final String? timezoneAbbreviation;
  final int? elevation;
  final HourlyUnits? hourlyUnits;
  final Hourly? hourly;

  Welcome({
    this.latitude,
    this.longitude,
    this.generationtimeMs,
    this.utcOffsetSeconds,
    this.timezone,
    this.timezoneAbbreviation,
    this.elevation,
    this.hourlyUnits,
    this.hourly,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    latitude: json["latitude"]?.toDouble(),
    longitude: json["longitude"]?.toDouble(),
    generationtimeMs: json["generationtime_ms"]?.toDouble(),
    utcOffsetSeconds: json["utc_offset_seconds"],
    timezone: json["timezone"],
    timezoneAbbreviation: json["timezone_abbreviation"],
    elevation: json["elevation"],
    hourlyUnits:
        json["hourly_units"] == null
            ? null
            : HourlyUnits.fromJson(json["hourly_units"]),
    hourly: json["hourly"] == null ? null : Hourly.fromJson(json["hourly"]),
  );

  Map<String, dynamic> toJson() => {
    "latitude": latitude,
    "longitude": longitude,
    "generationtime_ms": generationtimeMs,
    "utc_offset_seconds": utcOffsetSeconds,
    "timezone": timezone,
    "timezone_abbreviation": timezoneAbbreviation,
    "elevation": elevation,
    "hourly_units": hourlyUnits?.toJson(),
    "hourly": hourly?.toJson(),
  };
}

class Hourly {
  final List<String>? time;
  final List<double>? temperature2M;

  Hourly({this.time, this.temperature2M});

  factory Hourly.fromJson(Map<String, dynamic> json) => Hourly(
    time:
        json["time"] == null
            ? []
            : List<String>.from(json["time"]!.map((x) => x)),
    temperature2M:
        json["temperature_2m"] == null
            ? []
            : List<double>.from(
              json["temperature_2m"]!.map((x) => x?.toDouble()),
            ),
  );

  Map<String, dynamic> toJson() => {
    "time": time == null ? [] : List<dynamic>.from(time!.map((x) => x)),
    "temperature_2m":
        temperature2M == null
            ? []
            : List<dynamic>.from(temperature2M!.map((x) => x)),
  };
}

class HourlyUnits {
  final String? time;
  final String? temperature2M;

  HourlyUnits({this.time, this.temperature2M});

  factory HourlyUnits.fromJson(Map<String, dynamic> json) =>
      HourlyUnits(time: json["time"], temperature2M: json["temperature_2m"]);

  Map<String, dynamic> toJson() => {
    "time": time,
    "temperature_2m": temperature2M,
  };
}
