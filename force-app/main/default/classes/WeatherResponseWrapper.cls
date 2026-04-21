public class WeatherResponseWrapper {
    public class WeatherResponse {
        @AuraEnabled public Coord coord;
        @AuraEnabled public List<Weather> weather;
        @AuraEnabled public String base;
        @AuraEnabled public Main main;
        @AuraEnabled public Integer visibility;
        @AuraEnabled public Wind wind;
        @AuraEnabled public Clouds clouds;
        @AuraEnabled public Integer dt;
        @AuraEnabled public Sys sys;
        @AuraEnabled public Integer timezone;
        @AuraEnabled public Integer id;
        @AuraEnabled public String name;
        @AuraEnabled public Integer cod;
    }

    public class Coord {
        @AuraEnabled public Decimal lon;
        @AuraEnabled public Decimal lat;
    }

    public class Weather {
        @AuraEnabled public Integer id;
        @AuraEnabled public String main;
        @auraEnabled public String description;
        @AuraEnabled public String icon;
    }

    public class Main {
        @AuraEnabled public Decimal temp;
        @AuraEnabled public Decimal feels_like;
        @AuraEnabled public Decimal temp_min;
        @AuraEnabled public Decimal temp_max;
        @AuraEnabled public Integer pressure;
        @AuraEnabled public Integer humidity;
        @AuraEnabled public Integer sea_level;
        @AuraEnabled public Integer grnd_level;
    }

    public class Wind {
        @AuraEnabled public Decimal speed;
        @AuraEnabled public Integer deg;
    }

    public class Clouds {
        @AuraEnabled public Integer all;
    }

    public class Sys {
        @AuraEnabled public Integer type;
        @AuraEnabled public Integer id;
        @AuraEnabled public String country;
        @AuraEnabled public Integer sunrise;
        @AuraEnabled public Integer sunset;
    }
}