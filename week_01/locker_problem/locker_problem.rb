class LockerProblem
  NUMBER_OF_STUDENTS = 100
  NUMBER_OF_LOCKERS  = 100

  def initialize(students, lockers)
    # Adjust numbers to account for program start count as 0, not 1
    @adjusted_number_of_students = NUMBER_OF_STUDENTS - 1
    @adjusted_number_of_lockers = NUMBER_OF_LOCKERS - 1

    # Setup lockers
    @lockers = lockers
    NUMBER_OF_LOCKERS.times { lockers.push ("Closed") }

  end

  def run
    (0..@adjusted_number_of_lockers).each do|locker|
      (1..NUMBER_OF_STUDENTS).each do |student|
        if ((locker + 1) % student) == 0

          if @lockers[locker] == "Closed"
           @lockers[locker] = "Open"
          elsif @lockers[locker] == "Open"
           @lockers[locker] = "Closed"
          end

        end
      end
    end

    (0..@adjusted_number_of_lockers).each do |locker|
      puts "#{locker + 1}. #{@lockers[locker]}"
    end
  end
end

students = []
lockers  = []
# Lockers start off closed. Students toggle locker state between Open and
# Closed. So first student will open all lockers, 2nd toggles every other, 3rd
# toggles every third, 4th every fourth, etc.


locker_problem = LockerProblem.new(students, lockers)
locker_problem.run
