# This is my first Rakefile!
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*.rb']
  t.verbose = true
end

desc "run `solve[n]` to solve problem n (defaults to 1)"
task :solve, :problem do |s, p|
  problem = p[:problem] || 1
  sh "ruby ./problems/euler_#{problem}.rb"
end
