class Bottles
  def initialize
  end

  def verse(bottle_count)
    return_string = "#{bottle_description(bottle_count)} of beer on the wall, #{bottle_description(bottle_count)} of beer.\n"

    return_string += if bottle_count > 1
      "Take one down and pass it around, " +
      "#{bottle_description(bottle_count - 1)} of beer on the wall.\n"
    elsif bottle_count == 1
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    else
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    end
  end

  def verses(bottle_count_start, bottle_count_end)
    # ITERATE BACKWARDS OVER RANGE
    return_string = ""
    (bottle_count_end..bottle_count_start).reverse_each do |count|
      return_string += verse(count)
    end
    return_string
  end

  private

  def bottle_description(count)
    if count > 1
      "#{count} bottles"
    elsif count == 1
      "#{count} bottle"
    else
      "no more bottles"
    end
  end
end