class NotSupportedData < StandardError
  def initialize(msg="The data you have provided is not supported")
    super
  end
end