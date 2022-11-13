puts "Seeding Data....."


50.times do 
    g=rand(1..100)
    
    grades= case
        when g >80
             "A"
        when g <=80 && g> 70
             "B"
        when g <=70 && g>60
             "C"
        when g<=60 && g>40
             "D"
        else "F"
    end
    Student.create(
        first_name: Faker::Name.first_name,
        last_name:Faker::Name.last_name,
        marks:g,
        grade: grades
    )
end
5.times do
    Lecture.create(
        first_name: Faker::Name.first_name,
        last_name:Faker::Name.last_name,
    )
end

5.times do
    Result.create(
        first_name: Faker::Name.first_name,
        last_name:Faker::Name.last_name,
    )
end



  puts "Done seeding"