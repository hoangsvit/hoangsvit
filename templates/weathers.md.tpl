{{ with $todayWeather := index .Weathers 0 }}

<details>
  <summary><b>{{ $todayWeather.City }}, {{$todayWeather.Country }} - {{ formatDate $todayWeather.StartTime $todayWeather.Timezone }} (<img src="{{ $todayWeather.Icon}}" width="25" /> {{ $todayWeather.Condition }})</b></summary>

{{template "hourly-table" $todayWeather.HourlyWeathers}}

{{- end }}

<div align="right">
  Updated at: {{formatTime .UpdatedAt}} - by <a target="_blank"
    href="https://github.com/ePlus-DEV/weather-forecast">ePlus-DEV/weather-forecast</a>
</div>
</details>
