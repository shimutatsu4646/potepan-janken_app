
def what_shape(hand)
  if hand == 0
    return "グー"
  elsif hand == 1
    return "チョキ"
  elsif hand == 2
    return "パー"
  end
end

def which_direction(direction)
  if direction == 0
    return "上"
  elsif direction == 1
    return "下"
  elsif direction == 2
    return "左"
  elsif direction == 3
    return "右"
  end
end

# 変数の宣言・初期化
select_direction = 0
enemy_direction = 1
select_hand = 0
enemy_hand = 0
winner = "unknown"

# ================以下、条件分岐=====================

until select_direction == enemy_direction
  while select_hand == enemy_hand
    puts "じゃんけん・・・"
    puts "0（グー）1（チョキ）2（パー）3（戦わない）"
    select_hand = gets.to_i
    enemy_hand = rand(3)
    
    case select_hand 
    when 0, 1, 2
      puts "ホイ！"
      puts "-----------------------"
      puts "あなた：#{what_shape(select_hand)}を出しました。"
      puts "相手：#{what_shape(enemy_hand)}を出しました。"
    when 3
      puts "お疲れさまでした。"
      return
    else
      puts "上記に指定した数字のみ入力してください。"
      return
    end
    
     # じゃんけんの勝敗。winner ==  1で勝ち、winner == 0で負け。
    if select_hand == 0 and enemy_hand == 1
      winner = 1
    elsif select_hand == 0 and enemy_hand == 2
      winner = 0
    elsif select_hand == 1 and enemy_hand == 0
      winner = 0
    elsif select_hand == 1 and enemy_hand == 2
      winner = 1
    elsif select_hand == 2 and enemy_hand == 0
      winner = 1
    elsif select_hand == 2 and enemy_hand == 1
      winner = 0
    else 
      puts "あいこでした。"
    end
    puts "-----------------------"
  end


  puts "あっち向いて・・・"
  if winner == 1
    puts "（指を指す方向を決めてください）"
  else
    puts "（顔を向ける方向を決めてください）"    
  end
  puts "0（上）1（下）2（左）3（右）"
  select_direction = gets.to_i
  enemy_direction = rand(4)
  puts "ホイ！"
  puts "-----------------------"
  
  case select_direction 
  when 0, 1, 2, 3
    puts "あなた：#{which_direction(select_direction)}を出しました。"
    puts "相手：#{which_direction(enemy_direction)}を出しました。" 
    select_hand = 0
    enemy_hand = 0   
  else
    puts "上記に指定した数字（半角数字）のみ入力してください。"
    return
  end
  
  puts "-----------------------"
end

# =============上記、条件分岐===============




if winner == 1
    puts "あなたの勝ちです。おめでとうございます！"
elsif winner == 0
    puts "あなたの負けです。残念！"
end
  