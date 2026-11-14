function pve:gun/_shoot_for_gun \
    {\
        cooldown_score:"awm_cooldown",\
        cooldown_value:"10",\
        mag_score:"magazine_awm",\
        recoil_func:"pve:gun/awm/_recoil",\
        shooting_tag:"shooting_awm",\
        sound_supp:"pve:awm_shoot",\
        sound_supp_vol:"0.03",\
        sound_supp_pitch:"1.8",\
        sound_unsupp:"pve:awm_shoot_silence",\
        sound_unsupp_vol:"0.3",\
        sound_unsupp_pitch:"0.8",\
        advancement:"pve:awm_shoot",\
        ray_func:"pve:gun/_shoot_recursion_for_gun {particle:\"smoke\",damage:\"50\",damage_supp:\"45\",shooting_tag:\"shooting_awm\",range:\"100\"}"\
    }