# code here!

class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade].push(name)

        else
            @roster[grade] = []
            @roster[grade] << name
        end

    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each_value {|value| value.sort!}
        @roster
    end


end
