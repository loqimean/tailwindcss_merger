# Loading tailwindcss-rails tasks
tailwindcss_rails_path = Pathname.new("#{Gem.find_files('tailwindcss-rails.rb').first}").dirname
load "#{tailwindcss_rails_path}/tasks/build.rake"

namespace :csspacker do
  desc 'Packs all CSS files from app/assets/tailwindcss_stylesheets into app/assets/application.tailwind.css
        then runs the tailwindcss:build'
  task :build do
    files = Dir['./app/assets/tailwindcss_stylesheets/**/*.css']

    File.open('./app/assets/stylesheets/application.tailwind.css', 'w') do |main_file|
      main_file.write("/* GENERATED FILE! */\n")
      main_file.write("@tailwind base;\n")
      main_file.write("@tailwind components;\n")
      main_file.write("@tailwind utilities;\n")
      main_file.write("\n")

      files.each do |file_path|
        File.open(file_path, 'r') do |file|
          main_file.write("/* #{File.basename(file)} */\n")

          loop do
            main_file.write(file.readline)
          rescue StandardError
            main_file.write("\n")
            break
          end
        end
      end

      main_file
    end.close
  end

  desc 'Runs tailwindcss:build on changes in directory app/assets/tailwindcss_stylesheets'
  task :watch do
    listen = Listen.to(Rails.root.join('app', 'assets', 'tailwindcss_stylesheets')) do
      Rake::Task['csspacker:build'].execute
    end

    listen.start
  end
end

Rake::Task['tailwindcss:build'].enhance(['csspacker:build'])
Rake::Task['tailwindcss:watch'].enhance(['csspacker:build'])
Rake::Task['tailwindcss:watch'].enhance(['csspacker:watch'])
