require "minitest/spec"
require "minitest/autorun"

#Conversão de números Romanos de 1 a 3999

describe "Roman Conversion" do
  it "converte o número 2896 na string MMDCCCXCVI" do
    romanConverter(2896).must_equal "MMDCCCXCVI"
  end
end

def romanConverter(n)
  puts roman3999(n)
  if n <= 3999
    roman3999(n)
  end
end

def roman3999(x)
  romanNum = ""
  while x >= 1000 do
    romanNum << "M"
    x-=1000
  end
  return romanNum << roman1000(x)
end

def roman1000(x)
  if x == 1000
    return "M"
  end
  if x >= 900
    return "CM" << roman100(x - 900)
  end
  if x >= 501
    return "D" << roman500(x - 500)
  end
  if x < 500
    return roman500(x)
  end
end

def roman500(x)
  if x == 500
    return "D"
  end
  if x >= 400
    return "CD" << roman100(x - 400)
  end
  romanNum = ""
  while x >= 100 do
    romanNum << "C"
    x-=100
  end
  return romanNum << roman100(x)
end

def roman100(x)
  if x == 100
    return "C"
  end
  if x >= 90
    return "XC" << roman10(x - 90)
  end
  if x >= 51
    return "L" << roman50(x - 50)
  end
  if x <= 50
    return roman50(x)
  end
end

def roman50(x)
  if x == 50
    return "L"
  end
  if x >= 40
    return "XL" << roman10(x - 40)
  end
  romanNum = ""
  while x >= 10 do
    romanNum << "X"
    x-=10
  end
  return romanNum << roman10(x)
end

def roman10(x)
  if x == 10
    return "X"
  end
  if x == 9
    return "IX"
  end
  if x >= 5
    romanNum = "V"
    while x > 5 do
      romanNum << 'I'
      x-=1
    end
    return romanNum
  end
  if x == 4
    return "IV"
  end
  if x > 0
    romanNum = "I"
    while x > 1 do
      romanNum << 'I'
      x-=1
    end
    return romanNum
  end
  if x == 0
    return ''
  end
end
