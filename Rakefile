# This is my first Rakefile!
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*.rb']
  t.verbose = true
end

desc "run `solve[n]` to solve problem n"
task :solve, :problem do |s, p|
  problem = p[:problem]
  sh "ruby ./problems/euler_#{problem}.rb"
end
