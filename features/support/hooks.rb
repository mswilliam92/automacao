#acontece sempre antes de tudo, inicio o driver do appium e defino a espera implicita
Before do
  driver.start_driver

  #espera implicita
  driver.manage.timeouts.implicit_wait = 10
end

Before("@login") do
  
end

#tiro screesnhots a cada fim de cenario de teste
After do |scenario|
  print = driver.screenshot_as(:base64)
  attach(print, "image/png");
end

#geração do report com os screeenshots
at_exit do
    $driver.driver_quit

  ReportBuilder.input_path = "cucumber.json"

  ReportBuilder.configure do |config|
    config.report_path = "Relatorio de testes"
    config.report_types = [:json, :html]
    config.report_title = "Relatorio de testes"

  options = {
    report_title: "Relatorio de testes",
    report_path: "Relatorio de testes",
    color: "light green",
    additional_info: {Plataforma: 'Android', Release: '2.7.8'}
  }
  ReportBuilder.build_report options
  end
end
