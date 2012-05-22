#Include the HTML class
require 'haml/html'
namespace :hamlify do
  desc "Convert ERB to Haml"
  task :convert => :environment do
    
    #Cycles through the views folder and searches for erb files
    Dir["#{Rails.root}/app/views/**/*.erb"].each do |file_name|
      
      puts "Hamlifying: #{file_name}"
      
      #Creates a new file path for the haml to be exported to
      haml_file_name = file_name.gsub(/erb$/, "haml")
      
      #If haml is missing create it and get rid of the erb
      if !File.exist?(haml_file_name)
        
        #Reads erb from file
        erb_string = File.open(file_name).read
        
        #Converts erb to haml
        haml_string = Haml::HTML.new(erb_string, :erb => true).render
   
        #Writes the haml
        f = File.new(haml_file_name, "w") 
        f.write(haml_string)
   
        #Gets rid of the erb
        File.delete(file_name)
      end
    end
    
  end
end