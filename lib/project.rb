class Project
    attr_reader :title 

    def initialize(title)
        @title = title 
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        new_array = []
        ProjectBacker.all.each do |target|
            if target.project == self
                new_array << target.backer
            end
        end
        new_array
    end

end
