class Calculator
  def self.sum(num1, num2)
    raise NotSupportedData if !num1.instance_of?(Fixnum) || !num2.instance_of?(Fixnum)
    num1 + num2
  end
end