class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        new_array = []
        ProjectBacker.all.each do |target|
            if target.backer == self
                new_array << target.project
            end
        end
        new_array
    end

end


# backer1 = Backer.new("name")
# project1 = Project.new("title")
# project2 = Project.new("title2")

# backer1.back_project(project1) #ProjectBacker(project1,backer1) 
# #all = [(project1,backer1)]
# backer1.back_project(project2) #ProjectBacker(project2,backer1) 
# #all = [ (project1,backer1), (project2,backer1) ]
# puts backer1.projects #[project1, project2]