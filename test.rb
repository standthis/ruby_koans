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
test_creating_arrays
def hashtest
  h = { :one => "uno" }
  puts h.fetch(:doesnt)
end

hashtest
