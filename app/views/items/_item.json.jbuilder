json.extract! item, :id, :item_id, :name, :examine, :destroy_message, :tradeable, :weight, :attack_speed, :attack_stab, :attack_slash, :attack_crush, :attack_magic, :attack_range, :defence_stab, :defence_slash, :defence_crush, :defence_magic, :defence_range, :prayer, :range_strength, :magic_damage, :created_at, :updated_at
json.url item_url(item, format: :json)
