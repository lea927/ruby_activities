# Given: an array containing hashes of names
# Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated
# by an ampersand.

def list(ary)

  ary.each {|person| print "#{person[:name]}" } if ary.length == 1   
  print '' if ary.empty? 
  ary.each_with_index do |person, index| 
    print "#{person[:name]}" if index < ary.length - 1 # will print all items except last item
    print ", " if index < ary.length - 2 # will print comma except for the last 2 items
    print " & #{person[:name]}" if index == ary.length - 1 # will prepend ampersand for last item
  end if ary.length > 1 # will only iterate if there's more than 1 item
end

list([{name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}]) 
# returns 'Bart, Lisa & Maggie'
list([{name: 'Bart'}, {name: 'Lisa'}])
# returns 'Bart & Lisa
list([{name: 'Bart'}])
# returns 'Bart
list([])
# returns ''