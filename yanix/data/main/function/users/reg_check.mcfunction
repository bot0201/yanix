# 通过是否初始化uid判断是否注册，如果未注册则注册
execute \
    as @a \
    unless score @s uid matches -2147483648..2147483647 \
    run function main:users/reg