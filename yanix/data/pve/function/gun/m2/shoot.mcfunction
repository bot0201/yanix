function pve:gun/_shoot_for_gun \
    {cooldown_score:"m2_cooldown",cooldown_value:"3",\
        mag_score:"magazine_m2",\
        recoil_func:"pve:gun/m2/_recoil",\
        shooting_tag:"shooting_m2",\
        sound_supp:"minecraft:entity.warden.sonic_boom",sound_supp_vol:"0.04",sound_supp_pitch:"1.6",\
        sound_unsupp:"minecraft:entity.warden.sonic_boom",sound_unsupp_vol:"0.5",sound_unsupp_pitch:"0.6",\
        particle:"smoke",damage:"20",damage_supp:"18",range:"80",\
        advancement:"pve:m2_shoot"}