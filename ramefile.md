require 'rake/testtask'

task :default => [:test]

desc "Pruebas de la prC!ctica 4 de LPP"
Rake::TestTask.new do |t|
    t.libs << "test"
    t.test_files = FileList['test/tc_*.rb']
    t.verbose = true
end
