require 'pathname'

DEST = ENV['DEST'] || Dir.home
SRC = ENV['SRC'] || Dir.pwd
UNLINKABLES = ['LICENSE', 'Rakefile', 'README.md']

task :link => :unlink do
  (Dir['*'] - UNLINKABLES).each do |file|
    puts "Linking #{dest(file)}"
    File.symlink src(file), dest(file) 
  end
end

task :unlink do
  (Dir['*'] - UNLINKABLES).each do |file|
    if File.symlink? dest(file)
      puts "Unlinking #{dest(file)}" 
      File.unlink dest(file) 
    end
  end
end

def dest file
  Pathname.new(DEST).join ".#{file}"
end

def src file
  Pathname.new(SRC).join file
end
