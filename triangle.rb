a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

if (a + b > c) && (b + c > a) && (c + a > b)
  if (a == b) && (b == c)
    puts '正三角形ですね！'
  elsif (a != b) && (b != c) && (c != a)
    puts '不等辺三角形ですね！'
  else
    puts '二等辺三角形ですね！'
  end
else
  puts '三角形じゃないです＞＜'
end