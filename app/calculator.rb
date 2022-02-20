class Calculator
  def self.sum(num1, num2)
    raise NotSupportedData if !is_valid_number?(num1) || !is_valid_number?(num2)
    num1 + num2
  end

  private

  def self.is_valid_number?(num)
    num.instance_of?(Fixnum) || num.instance_of?(Float)
  end
end