require 'csv'

desc "Import CSV Data."
task :import => [:environment] do


  file = 'db/userprofile.csv'

  CSV.foreach(file) do |row|
    
    User.create!(
        :userID => row[0],
        :latitude => row[1],
        :longitude => row[2],
        :smoker => row[3],
        :drink_level => row[4],
        :dress_preference => row[5],
        :ambience => row[6],
        :transport => row[7],
        :marital_status => row[8],
        :hijos => row[9],
        :birth_year => row[10],
        :interest => row[11],
        :personality => row[12],
        :religion => row[13],
        :activity => row[14],
        :color => row[15],
        :weight => row[16],
        :budget => row[17],
        :height => row[18]
    )
end
end

# rake import
# http://leanrubyonrails.blogspot.jp/