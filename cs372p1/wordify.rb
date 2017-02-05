save_filename= ARGV[3]
target_filename= ARGV[1]

file = File.new(target_filename, 'r')
str = ''
while (line = file.gets)
  line.each_char do |index|
    if (index >= 'a' && index <='z') || (index >= 'A' && index <='Z') || (index == '-') || (index>='0' &&index<='9')
      str += index
    else
      str += ' '
    end
  end
end

words = str.split(' ')

filter_words = []

words.each do |word|
  count = 0
  word.each_char do |char|
    if char=='-'
      count+=1
    end
  end
  if count != word.length
    filter_words << word
  end
end

File.open(save_filename, 'w+') do |f|
  f.puts(filter_words)
end