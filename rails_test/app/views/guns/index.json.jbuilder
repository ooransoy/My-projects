json.array!(@guns) do |gun|
  json.extract! gun, :name, :auto, :shots_per_second, :scope, :clip_size, :clip_type, :damage, :bullet_speed, :reload_speed, :bullet_diameter, :number_of_barrels, :spread, :healing_bullets, :explosion_radius, :extras
  json.url gun_url(gun, format: :json)
end
