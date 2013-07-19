require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs.push "lib"
  t.test_files = FileList['test-suites/*_spec.rb']
  t.verbose = true
end