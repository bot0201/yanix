# --- 先重置 ---
execute \
    as @a \
    run scoreboard players reset @s bullet_m4a1
execute \
    as @a \
    run scoreboard players reset @s magazine_m4a1
execute \
    as @a \
    run scoreboard players reset @s magazine_old_m4a1
execute \
    as @a \
    run scoreboard players reset @s bullet_m1014
execute \
    as @a \
    run scoreboard players reset @s magazine_m1014
execute \
    as @a \
    run scoreboard players reset @s magazine_old_m1014
execute \
    as @a \
    run scoreboard players reset @s bullet_awm
execute \
    as @a \
    run scoreboard players reset @s magazine_awm
execute \
    as @a \
    run scoreboard players reset @s magazine_old_awm
execute \
    as @a \
    run scoreboard players reset @s awm_cooldown
execute \
    as @a \
    run scoreboard players reset @s bullet_m2
execute \
    as @a \
    run scoreboard players reset @s magazine_m2
execute \
    as @a \
    run scoreboard players reset @s magazine_old_m2
execute \
    as @a \
    run scoreboard players reset @s m2_cooldown

# --- 重新给予 ---
execute \
    as @a \
    run scoreboard players set @s magazine_m4a1 30
execute \
    as @a \
    run scoreboard players set @s bullet_m4a1 300
execute \
    as @a \
    run scoreboard players set @s magazine_m1014 8
execute \
    as @a \
    run scoreboard players set @s bullet_m1014 80
execute \
    as @a \
    run scoreboard players set @s magazine_awm 5
execute \
    as @a \
    run scoreboard players set @s bullet_awm 35
execute \
    as @a \
    run scoreboard players set @s magazine_m2 100
execute \
    as @a \
    run scoreboard players set @s bullet_m2 500