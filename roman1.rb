def roman number

m_length = 0
d_length = 0
c_length = 0
l_length = 0
x_length = 0
v_length = 0
i_length = 0
cd_length = 0
cm_length = 0
xl_length = 0
xc_length = 0
iv_length = 0
ix_length = 0


if number >= 1000
  m_length = number/1000
  number = number%1000
end

if number >= 900
  cm_length = 1
  number = number % 100
end

if number >= 500
  d_length = number/500
  number = number%500
end


if number >= 100
  c_length = number/100
  if c_length == 4
    c_length = 0
    cd_length = 1
  end
number = number%100
end 

if number >= 90
  xc_length = 1
  number = number % 10
end

if number >= 50
l_length = number/50
number = number%50
end


if number >= 10
x_length = number/10
  if x_length == 4
    x_length = 0
    xl_length = 1
  end
number = number%10
end

if number == 9
  ix_length = 1
  number = 0
end


if number >= 5
v_length = number/5
number = number%5
end


if number < 5
i_length = number/1
  if i_length == 4
    i_length = 0
    iv_length = 1
  end

  
number = number%10
  end


puts 'M'*m_length + 'D'*d_length + 'C'*c_length + 'CD'*cd_length + 'CM'*cm_length + 'L'*l_length + 'X'*x_length + 'XL'*xl_length + 'XC'*xc_length + 
'V'*v_length + 'I'*i_length + 'IV'*iv_length + 'IX'*ix_length

end

puts 'Enter a number between 1 and 3000'
input = gets.chomp.to_i
roman input