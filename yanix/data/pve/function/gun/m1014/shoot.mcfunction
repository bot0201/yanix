tag @s add no_recoil
function pve:gun/_shoot_for_gun \
    {\
        cooldown_score:"m1014_cooldown",\
        cooldown_value:"0",\
        mag_score:"magazine_m1014",\
        recoil_func:"pve:gun/m1014/_recoil",\
        shooting_tag:"shooting_m1014",\
        sound_supp:"pve:m1014_shoot",\
        sound_supp_vol:"0.05",\
        sound_supp_pitch:"1.5",\
        sound_unsupp:"pve:m1014_shoot_silence",\
        sound_unsupp_vol:"0.5",\
        sound_unsupp_pitch:"0.8",\
        advancement:"pve:m1014_shoot",\
        ray_func:"pve:gun/m1014/ray"\
    }
tag @s remove no_recoil