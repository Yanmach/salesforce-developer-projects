import { LightningElement, api, wire } from 'lwc';
import getWeatherData from '@salesforce/apex/WeatherService.getWeatherData';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi';
import CITY_FIELD from '@salesforce/schema/Account.BillingCity';

export default class AccountWeather extends LightningElement {
    @api recordId;
    city;
    weatherData;
    error;

    @wire(getRecord, { recordId: '$recordId', fields: [CITY_FIELD] })
    wiredAccount({ error, data }) {
        if (data) {
            this.city = getFieldValue(data, CITY_FIELD);
        } else if (error) {
            this.error = 'Erro ao carregar cidade da conta.';
        }
    }

    @wire(getWeatherData, { city: '$city' })
    wiredWeather({ error, data }) {
        if (data) {
            this.weatherData = data;
            this.error = undefined;
        } else if (error) {
            this.error = 'Não foi possível buscar o clima para ' + this.city;
            this.weatherData = undefined;
        }
    }

    get tempCelsius() {
        return this.weatherData ? Math.round(this.weatherData.main.temp) : '';
    }

    get iconUrl() {
        return this.weatherData ? `https://openweathermap.org/img/wn/${this.weatherData.weather[0].icon}@2x.png` : '';
    }

    get weatherDescription() {
        return this.weatherData ? this.weatherData.weather[0].description : '';
    }
}