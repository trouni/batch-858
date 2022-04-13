class SlotMachine
  ITEMS = %w[🍒 7️⃣ 🛎 ⭐️ 🤩].freeze

  def initialize(reels = %w[🤩 🤩 🤩])
    @reels = reels
  end

  def play
    60.times do
      @reels = @reels.map { ITEMS.sample }
      print @reels.join("\t") + "\r"
      $stdout.flush
      sleep(0.03)
    end
    sleep(0.5)
    @reels = @reels.map { ITEMS.sample }
  end

  def score
    if three_of_the_same?
      unique_item = @reels.first # for example "🤩"
      item_value(unique_item) * 10
    elsif two_of_the_same_plus_joker?
      doubled_item = @reels.sort[1]
      item_value(doubled_item) * 5
    else
      0
    end
  end

  private

  def item_value(item)
    ITEMS.index(item) + 1
  end

  def three_of_the_same?
    @reels.uniq.length == 1
  end

  def two_of_the_same_plus_joker?
    @reels.uniq.length == 2 && @reels.include?('🤩')
  end
end
