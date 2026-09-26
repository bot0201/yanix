# 播放巨大的碎玻璃音效
playsound minecraft:block.glass.break block @a[distance=..32] ~ ~ ~ 2 1

# 直接在命中点炸开一大团粒子
particle minecraft:dust_plume ~ ~ ~ 1.5 1.5 1.5 0 20 force

# 清玻璃
setblock ~ ~ ~ air