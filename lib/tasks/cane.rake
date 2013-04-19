begin
  require 'cane/rake_task'

  desc 'Run cane to check quality metrics'
  Cane::RakeTask.new(:quality) do |cane|
    cane.abc_max = 10
    cane.add_threshold 'coverage/.last_run.json', :>=, 99
    cane.no_style = false
    cane.style_measure = 80
  end

  task default: :quality
rescue LoadError
  warn 'Cane is not available. The quality task is not provided.'
end