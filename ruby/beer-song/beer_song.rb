class BeerSong

  def verse(num)
    if num == 0
      return "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
    return "#{num} bottle#{num==1 ? '' : 's'} of beer on the wall, #{num} bottle#{num==1 ? '' : 's'} of beer.
Take #{num == 1 ? 'it' : 'one'} down and pass it around, #{num>1 ? num-1 : 'no more'} bottle#{num==2 ? '' : 's'} of beer on the wall.\n"
  end

  def verses(start, finish)
    (finish..start).reverse_each.map{|count| verse(count)}.join("\n")
  end
end

module BookKeeping
  VERSION = 3
end