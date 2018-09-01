class PhoneNumber
  def self.clean(number)
    # (NXX)-NXX-XXXX
    # where N is any digit from 2 through 9 and X is any digit from 0 through 9.
    number = number.scan(/\d/).join
    number = number.scan(/1?[2-9]\d\d[2-9]\d\d\d\d\d\d$/).join
    number.empty? ? nil : number
  end
end