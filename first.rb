cells = gets.chomp.to_i
arr0 = []
arr1 = []

(1...cells).each do |n|
  arr0 << 0
end
arr0 << 1

rules = {
  [1,1,1]=> 0,
  [1,1,0]=> 1,
  [1,0,1]=> 1,
  [1,0,0]=> 0,
  [0,1,1]=> 1,
  [0,1,0]=> 1,
  [0,0,1]=> 1,
  [0,0,0]=> 0
}
arr0.each { |n| print n }
puts

for j in 0..(cells-2) do
  temp = []
  temp[0] = rules[[0, arr0[0], arr0[1]]] 
  for i in 0..(cells-3) do
    temp[i+1] = rules[[arr0[i], arr0[i+1], arr0[i+2]]]
  end
  temp << 1
  temp.each { |n| print n }
  arr0 = temp
  puts
end
