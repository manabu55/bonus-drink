class BonusDrink
  def self.total_count_for(amount)
    current_bottles = amount  # 現在手元にあるドリンクの数
    result = amount           # 手に入れたドリンクの数
    while current_bottles >= 3
      # 新しく手に入るドリンク数
      bonus_bottles = current_bottles / 3
      # 手元に残ったドリンクの数
      current_bottles = bonus_bottles + (current_bottles - (bonus_bottles * 3))
      result += bonus_bottles
    end
    return result
  end
end

# drink = BonusDrink.total_count_for(ARGV[0].to_i)
# puts("total_drink=" + drink.to_s)
