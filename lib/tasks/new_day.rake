namespace :db do
  task new_day: :environment do
     User.all.each do |user|
       day = user.blocks.present? ? user.blocks.last.day + 1 : 0
       Block.create!(day: day, status: 'pending', user_id: user.id, blockDate: (Time.parse(Time.now.strftime("%Y-%m-%d")).utc.to_i*1000))
     end
  end
end
