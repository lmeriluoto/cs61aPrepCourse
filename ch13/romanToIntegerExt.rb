class Integer
  def to_roman
    m_num = 0
    d_num = 0
    c_num = 0
    l_num = 0
    x_num = 0
    v_num = 0
    i_num = 0

    number = self

    if number >= 1000
      m_num = (number - number % 1000)/1000
      number = number % 1000
    end
    if number >= 500
      d_num = (number - number % 500)/500
      number = number % 500
    end
    if number >= 100
      c_num = (number - number % 100)/100
      number = number % 100
    end
    if number >= 50
      l_num = (number - number % 50)/50
      number = number % 50
    end
    if number >= 10
      x_num = (number - number % 10)/10
      number = number % 10
    end
    if number == 9
      puts 'M' * m_num + 'D' * d_num + 'C' * c_num + 'L' * l_num + 'X' * x_num + 'I' + 'X'
      return
    end
    if number >= 5
      v_num = (number - number % 5)/5
      number = number % 5
    end
    if number == 4
      puts 'M' * m_num + 'D' * d_num + 'C' * c_num + 'L' * l_num + 'X' * x_num + 'I' + 'V'
      return
    end
    if number >= 1
      i_num = number
    end
    puts 'M' * m_num + 'D' * d_num + 'C' * c_num + 'L' * l_num + 'X' * x_num + 'V' * v_num + 'I' * i_num
  end
end

#test numbers
puts 129.to_roman
