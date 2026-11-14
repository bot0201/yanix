function pve:gun/_shoot_for_gun \
    {\
        cooldown_score:"m4a1_cooldown",\
        cooldown_value:"0",\
        mag_score:"magazine_m4a1",\
        recoil_func:"pve:gun/m4a1/_recoil",\
        shooting_tag:"shooting_m4a1",\
        sound_supp:"pve:m4a1_shoot",\
        sound_supp_vol:"0.05",\
        sound_supp_pitch:"1.5",\
        sound_unsupp:"pve:m4a1_shoot_silence",\
        sound_unsupp_vol:"1",\
        sound_unsupp_pitch:"1",\
        advancement:"pve:m4a1_shoot",\
        ray_func:"pve:gun/_shoot_recursion_for_gun {particle:\"smoke\",damage:\"10\",damage_supp:\"8\",shooting_tag:\"shooting_m4a1\",range:\"50\"}"\
    }