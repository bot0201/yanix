# PVE 波次召唤调度器
# 基础波次: 僵尸 × N
function pve:_horde_check {wave:"1",zombies:"2",babies:"0"}
function pve:_horde_check {wave:"2",zombies:"4",babies:"0"}
function pve:_horde_check {wave:"3",zombies:"4",babies:"0"}
function pve:_horde_check {wave:"4",zombies:"4",babies:"0"}
function pve:_horde_check {wave:"5",zombies:"5",babies:"0"}
function pve:_horde_check {wave:"6",zombies:"6",babies:"0"}
function pve:_horde_check {wave:"7",zombies:"7",babies:"0"}
function pve:_horde_check {wave:"8",zombies:"8",babies:"0"}
function pve:_horde_check {wave:"9",zombies:"8",babies:"0"}
# 波次 10：配件奖励
function pve:_horde_check {wave:"10",zombies:"6",babies:"0"}
execute \
    if score #pve horde matches 10 \
    run function pve:hordes/give_attachments
function pve:_horde_check {wave:"11",zombies:"8",babies:"0"}
function pve:_horde_check {wave:"12",zombies:"9",babies:"0"}
function pve:_horde_check {wave:"13",zombies:"9",babies:"0"}
function pve:_horde_check {wave:"14",zombies:"10",babies:"0"}
# 波次 15：僵王博士第一代机甲
function pve:_horde_check {wave:"15",zombies:"4",babies:"4"}
execute \
    if score #pve horde matches 15 \
    run function pve:spawn/bosses/dr_zomboss_1st_generation_mech/start
function pve:_horde_check {wave:"16",zombies:"10",babies:"0"}
function pve:_horde_check {wave:"17",zombies:"11",babies:"0"}
function pve:_horde_check {wave:"18",zombies:"11",babies:"0"}
function pve:_horde_check {wave:"19",zombies:"12",babies:"0"}
function pve:_horde_check {wave:"20",zombies:"13",babies:"0"}
function pve:_horde_check {wave:"21",zombies:"13",babies:"0"}
function pve:_horde_check {wave:"22",zombies:"14",babies:"0"}
function pve:_horde_check {wave:"23",zombies:"14",babies:"0"}
function pve:_horde_check {wave:"24",zombies:"15",babies:"0"}
# 波次 25：僵王博士第二代机甲
function pve:_horde_check {wave:"25",zombies:"6",babies:"0"}
execute \
    if score #pve horde matches 25 \
    run function pve:spawn/bosses/dr_zomboss_2nd_generation_mech/start