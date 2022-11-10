
class MyClass
  def my_method
    self.class.url_for_subpath(@filename)
  end

  def self.url_for_subpath(port, subpath)
    "http://localhost:#{port}/#{ERB::Util.url_encode(subpath)}"
  end
end
