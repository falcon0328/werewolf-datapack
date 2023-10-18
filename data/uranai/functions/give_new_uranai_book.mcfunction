# 役職本の配布
# 参加人数によって実行するスクリプトが違うのでその対応を行う
execute if score players game_info matches 4 run function uranai:give_new_uranai_book_4
execute if score players game_info matches 5 run function uranai:give_new_uranai_book_5
execute if score players game_info matches 6 run function uranai:give_new_uranai_book_6
execute if score players game_info matches 7 run function uranai:give_new_uranai_book_7
execute if score players game_info matches 8 run function uranai:give_new_uranai_book_8
