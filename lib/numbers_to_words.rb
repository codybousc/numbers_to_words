class Fixnum
    define_method(:numbers_to_words) do
        ones = {'1' => "one", '2' => "two", '3' => "three"}
        tens = {'2' => 'twenty', '3' => 'thirty'}
        hundreds = {'1' => 'one hundred', '2' => 'two hundred'}
        number = self
        num_array = number.to_s.reverse.split("")
        num_array_size = num_array.length
        written_nums = [ ]
        if num_array_size == 1
            written_nums.unshift(ones.fetch(num_array[0]))
        elsif num_array_size == 2
            written_nums.unshift(ones.fetch(num_array[0]))
            written_nums.unshift(tens.fetch(num_array[1]))
        elsif num_array_size == 3
            written_nums.unshift(ones.fetch(num_array[0]))
            written_nums.unshift(tens.fetch(num_array[1]))
            written_nums.unshift(hundreds.fetch(num_array[2]))
        end
        written_form = written_nums.join(" ")
        puts written_form
        return written_form
    end
end
