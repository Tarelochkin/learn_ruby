#write your code here
def add int_1, int_2
  res = int_1 + int_2
end

def subtract int_1, int_2
  res = int_1 - int_2
end

def sum array
  @sum = 0
  array.each do |i|
    @sum = @sum + i
  end
  @sum
end

def multiply array
  @mult = 1
  array.each do |i|
    @mult = @mult * i
  end
  @mult
end

def power int_1, int_2
  res = int_1 ** int_2
end

def factorial int
  @res = 1
  while int > 1
    @res = @res * int
    int = int - 1
  end
  @res
end

factorial 0
