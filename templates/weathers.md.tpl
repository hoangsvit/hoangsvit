{{ with $todayWeather := index .Weathers 0 }}

<details>
  <summary><b>{{ $todayWeather.City }}, {{$todayWeather.Country }} - {{ formatDate $todayWeather.StartTime $todayWeather.Timezone }} (<img src="{{ $todayWeather.Icon}}" /> {{ $todayWeather.Condition }})</b></summary>

{{template "hourly-table" $todayWeather.HourlyWeathers}}

{{- end }}
</details>

<div align="right">
Updated at: {{formatTime .UpdatedAt}} - by <a target="_blank" href="https://github.com/ePlus-DEV/weather-forecast">ePlus-DEV/weather-forecast</a>
</div>
