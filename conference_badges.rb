# Write your code here.
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    result = []
    attendees.each do |attendee|
        result << badge_maker(attendee)
    end
    return result
end

def assign_rooms(attendees)
    result = []
    attendees.each_with_index do |attendee, index|
        result[index] = "Hello, #{attendee}! You'll be assigned to room #{index + 1}!"
    end
    return result
end

def printer(attendees)
    rooms = assign_rooms(attendees)
    badges = badge_maker(attendees)
    puts badges
    rooms.each { |room| puts room}
end
