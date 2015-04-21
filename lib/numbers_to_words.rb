class Fixnum
    define_method(:numbers_to_words) do
        my_number = self
        numbers_array = my_number.to_s.split('')
        array_size = numbers_array.length

        digits = {
            '0' => '',
            '1' => 'one',
            '2' => 'two',
            '3' => 'three',
            '4' => 'four',
            '5' => 'five',
            '6' => 'six',
            '7' => 'seven',
            '8' => 'eight',
            '9' => 'nine'
        }
        teens_digits = {
            '0' => 'ten',
            '1' => 'eleven',
            '2' => 'twelve',
            '3' => 'thirteen',
            '4' => 'fourteen',
            '5' => 'fifteen',
            '6' => 'sixteen',
            '7' => 'seventeen',
            '8' => 'eighteen',
            '9' => 'nineteen'
        }
        special_digits = {
            '0' => '',
            '1' => '',
            '2' => 'twen',
            '3' => 'thir'
        }
        suffix = {
            0 => '',
            1 => 'ty',
            2 => 'hundred',
            3 => 'thousand',
            4 => ''
        }
        to_word = []
        array_size.times() do |time|
            current_number = numbers_array[time]
            number_of_followers = array_size - (time + 1)
            digit_word = ""
            digit_suffix = ""
            if number_of_followers == 1
                if current_number == '1'
                    next_number = numbers_array[time + 1]
                    digit_word = teens_digits.fetch(next_number)
                    break
                else
                    digit_word = special_digits.fetch(current_number)
                    digit_suffix = suffix.fetch(number_of_followers)
                    to_word.push(digit_word + digit_suffix)
                end
            else
                digit_word = digits.fetch(current_number)
                digit_suffix = suffix.fetch(number_of_followers)
                to_word.push(digit_word + " " + digit_suffix)
            end
        end
        word = to_word.join(" ").strip()
        puts word
        word
    end
end
