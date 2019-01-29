module PhoneNumber

  def self.clean(num)
     #num[0] = "" if num[0] == "1"
    if num.index(/\D/) != nil
      num.gsub!(/[^0-9]/,"")
    end

    if num[0] == "1"
      num[0] = ""
    end

    if num.length != 10
      return nil
    end

    if num[0] == "0"
      return nil
    end

    if num[0] == "1"
      return nil
    end

    if num[3] == "0"
      return nil
    end

    if num[3] == "1"
      return nil
    end
    
      return num
  end

end
