require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.test_files = FileList['testing/test_*.rb']
end

task default: :test
