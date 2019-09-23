#!/bin/ruby
def test_you_dont_get_null_pointer_errors_when_calling_methods_on_nil # What happens when you call a method that doesn't exist.  The
  # following begin/rescue/end code block captures the exception and
  # makes some assertions about it.
  begin
    nil.some_method_nil_doesnt_know_about
  rescue Exception => ex
    # What exception has been caught?
    #assert_equal nil, ex.class

    # What message was attached to the exception?
    # (HINT: replace __ with part of the error message.)
    #assert_match(/__/, ex.message)
    puts ex.class
  end
end

#test_you_dont_get_null_pointer_errors_when_calling_methods_on_nil
def test_nil 
  puts nil.to_s
end

def test_object
  obj = Object.new
  copy = obj.clone
  puts obj.object_id != copy.object_id
end

def test_creating_arrays
  #array = Array.new
  array = [:zero, :one, :two, :three]
  array = [1,2]
  puts array.unshift(:last)
  #assert_equal __, empty_array.size
end

def hashtest
  #h = { :one => "uno" }
  hash = Hash.new([])

  hash[:one] << "uno"
  hash[:two] << "dos"
  puts hash[:two]
end

def strings
  puts ?b == (?a + 1)
end

def sym
  :c + :d
end

def global(a,b)
  a + b 
end

def method_with_var_args(*args)
  return args
  5 + 2
end


class Myclass
  def my_private_method(b="a")
    "a secret" + b
  end
  #private :my_private_method
  #self.mymethod

end
def method_with_keyword_arguments(one: 1, two: 'two')
  [one, two]
end
def test_break_statement
  i = 1
  result = 1
  while true
    break unless i <= 10
    result = result * i
    i += 1
  end
  result
end

puts 10.times
