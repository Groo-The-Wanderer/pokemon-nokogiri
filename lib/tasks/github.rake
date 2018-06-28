# namespace :github do
#   desc "TODO"
#   task commit: :environment do
#   end

# end

# :environment tells rake to load the full application environment giving the task access to the full environment

namespace :github do
  desc ">>> Commit with message"
  task :commit, [:message] => :environment do |task, args|
    sh %{ git add -A }
    sh %{ git commit -m "#{args.message}" }
    sh %{ git push }
  end
end

# run with:
# rails github:commit["task based commit"]