puts "最初はグーじゃんけん・・・・"
def janken_game
   puts "0(グー) 1(チョキ) 2(パー)"
   jankens = ["グー", "チョキ","パー"]
   player_hand = gets.to_i
   program_hand = rand(3)
   
   puts "ポイ"
   puts "___________"
   
   puts "あなたの手は#{jankens[player_hand]}を出しました" 
   puts "相手の手は#{jankens[program_hand]}を出しました"

   if player_hand == program_hand
     puts "あいこで"
     janken_result = "drow"
     
   elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    janken_result = "win1"

   else
     puts "あなたの負けです"
     janken_result = "lose1"
     
     
   end
   
   case janken_result
   when "win1"
     puts "あっち向いて....."
     puts "0(上) 1(下) 2(右) 3(左)"
  
     player_finger = gets.to_i
     program_finger = rand(4)
     fingers = ["上", "下", "右", "左"]
     puts "ホイ"
     puts "____________"

     puts "あなたは#{fingers[player_finger]}を指しました"
     puts "相手は#{fingers[program_finger]}を向きました"
  
     if(player_finger == program_finger)&&(janken_result == "win1")
       puts "あなたが勝ちました"
     else 
       return janken_game
       
       
     end   
    
    when "lose1"
      puts "あっち向いて....."
     puts "0(上) 1(下) 2(右) 3(左)"
  
     player_finger = gets.to_i
     program_finger = rand(4)
     fingers = ["上", "下", "右", "左"]
     puts "ホイ"
     puts "____________"

     puts "あなたは#{fingers[player_finger]}を向きました"
     puts "相手は#{fingers[program_finger]}を指しました"
  
     if(player_finger == program_finger)&&(janken_result == "win1")
       puts "あなたは負けました"
     else 
       return janken_game
       
    
     end     
     
   
   when "drow"
    return janken_game
    
      
   end
end

next_game = "drow"

while next_game
  next_game = janken_game
  
end
