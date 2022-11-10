class ::String
  def escape_single_quote!
    replace(self.escape_single_quote)
  end

  def escape_single_quote
    self.gsub("'", "\\\\'")
  end
end
