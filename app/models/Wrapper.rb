require 'pry'
#!/usr/bin/env ruby
class Wrapper
    

    def self.wrap(string, col_num)
        i = 0
        sub_array = string.split()
        results = []
        final_results = recur_length_check(sub_array, col_num, i, results).join(' ')
        puts final_results 
    end

    private

    def self.fit_one_more?(sub_array, col_num, i)
        sub_array[0..i+1].join(' ').length <= col_num
     end
     

    def self.recur_length_check(sub_array, col_num, i, results)
        if sub_array.join(' ').length <= col_num #if all the characters remaining are less than col_num we break out of recursive function
            results << sub_array.join(' ') 
        elsif fit_one_more?(sub_array, col_num, i) #if we can fit one more, run it back again with next word included (i + 1)
            recur_length_check(sub_array, col_num, i+1, results)
        else #if we can't fit one more, shovel current string
            results << sub_array[0..i-1].join(' ') #rejoin all but last word
            results << sub_array[i] + "\n" #shovel last word with new line character
            sub_array.shift(i+1) #remove elements already checked
            recur_length_check(sub_array, col_num, 0, results) #begin process over with next elements
        end

        return results
    end

   
end