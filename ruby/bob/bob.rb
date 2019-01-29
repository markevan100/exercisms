module Bob

  def self.hey(remark)
    if remark == remark.upcase && remark[-1] == "?" && remark.count("a-zA-Z") != 0
      "Calm down, I know what I'm doing!"
    elsif remark == remark.upcase && remark.count("a-zA-Z") != 0
      "Whoa, chill out!"
    elsif remark.strip[-1] == "?"
      "Sure."
    elsif remark.strip.length == 0
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end
