# write your code here

def who_is_bigger(a, b, c)
# !existe = pas existe = nil
   if !a || !b || !c
	   return "nil detected"
 	elsif a > b && a > c
       p "a is bigger"
   elsif b > a && b > c
       p "b is bigger"
   else
       p "c is bigger"
   end
end

puts who_is_bigger(82,42,21)
