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


    


    

  

        # test_string = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
        # wrap(test_string, 20)
    
   

 

    
end
