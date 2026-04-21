public with sharing class WeatherService {
    
    // Exception personalizada exigida pelo teste
    public class WeatherServiceException extends Exception {}

    @AuraEnabled(cacheable=true)
    public static WeatherResponseWrapper.WeatherResponse getWeatherData(String city) {
        if (String.isBlank(city)) {
            throw new WeatherServiceException('City name cannot be blank');
        }

        // Use uma Named Credential ou substitua pela sua Key
        String apiKey = '0123456789abcdef0123456789abcdef'; 
        String endpoint = 'https://api.openweathermap.org/data/2.5/weather?q=' + 
                          EncodingUtil.urlEncode(city, 'UTF-8') + 
                          '&units=metric&appid=' + apiKey;

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET');

        try {
            HttpResponse response = http.send(request);

            if (response.getStatusCode() == 200) {
                // Parse do JSON para a estrutura do Wrapper
                return (WeatherResponseWrapper.WeatherResponse) JSON.deserialize(
                    response.getBody(), 
                    WeatherResponseWrapper.WeatherResponse.class
                );
            } else {
                // Mensagem exata esperada pelo teste de falha
                throw new WeatherServiceException('Failed to retrieve weather data for city: ' + city);
            }
        } catch (Exception e) {
            throw new WeatherServiceException(e.getMessage());
        }
    }
}