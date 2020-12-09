puts "じゃんけん\n０(グー)１（チョキ）２（パー）"


def rpsgo
  rpsgo_hand = ["グー","チョキ", "パー"]
  my_hand = gets.chomp.to_i
  opponent_hand = rand(0..2)
  puts "ほい！"
  puts "-----------------"
  puts "あなた： #{rpsgo_hand[my_hand]}\n相手：#{rpsgo_hand[opponent_hand]}"
  puts "-----------------"

  def look_this_way(win_or_lose)
    look_to = ["上","下", "右", "左"]
    puts "あっち向いて..."
    puts "0(上)　1(下)　2(右)　3(左)"
    my_direction = gets.chomp.to_i
    opponent_direction = rand(0..3)
    
    puts "ほい！"
    puts "-----------------"
    puts "あなた： #{look_to[my_direction]}\n相手：#{look_to[opponent_direction]}"
    puts "-----------------"
    if my_direction == opponent_direction
      puts win_or_lose
      return false
    else
      puts "じゃんけん\n０(グー)１（チョキ）２（パー）"
      return true
    end
  end

  if my_hand == opponent_hand
    puts "あいこで"
    return true
  elsif (my_hand == 0 && opponent_hand == 1)||(my_hand == 1 && opponent_hand == 2)||(my_hand == 2 && opponent_hand == 0)
    look_this_way("かち")
  elsif (my_hand == 0 && opponent_hand == 2)||(my_hand == 1 && opponent_hand == 0)||(my_hand == 2 && opponent_hand == 1)
    look_this_way("負け")
  else
      puts "正しい値を入力してください"
  end
end

next_game = true

while next_game do
  next_game = rpsgo
end


