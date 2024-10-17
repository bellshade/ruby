# implementasi konversi bilangan biner ke desimal

def biner_ke_desimal(n)
  desimal = 0
  base = 1
  until n.zero?
    x = n % 10
    n /= 10
    desimal += x * base
    base *= 2
  end
  desimal
end

puts 'nilai desimal dari angka binar 110011 adalah ' + biner_ke_desimal(110_011).to_s
