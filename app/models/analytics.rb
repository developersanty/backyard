class Analytics
  def self.most_triggered(current_user)
    user_blocks = current_user.blocks

    all_tags = []
    user_blocks.each do |block|
      block.tags.each do |tag|
        all_tags.push(tag.value)
      end
    end

    freq = all_tags.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    all_tags.max_by { |v| freq[v] }
  end
end